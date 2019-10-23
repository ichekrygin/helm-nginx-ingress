# helm-nginx-ingress
A terraform module to provision and fully configure the Nginx Ingress Helm chart onto a Kubernetes cluster.

## Motivation
I found myself repeating `nginx-ingress` Helm chart resource provisioning on multiple occasions, and
every time I was stumbling of one or another issue either trying to figure out how to correctly set
complex values or how to add annotations or labels delimited with `.`'s and `/`'s.

##### Why would you want to use this module?
- You don't want to spend time figuring out ins-and-outs of the `terraform` to `helm` values mapping.
  (I admit, this is probably not a good motivation)
- You want to reduce the size of your main module and focus only on the essential parts. 
  ```hcl-terraform
    module helm-nginx-ingress {
      source = "github.com/ichekrygin/helm-nginx-ingress"
    }
  ```
  The above gives you a default `nginx-ingress` Helm installation

#### Why would you Not want to use this module? 
- You find this module "simplified" treatment of `non-scalar` values is too limiting.
- You worry about taking an external dependency, and you should be: "A little copying is better than a little dependency." 
  ([go proverb](http://go-proverbs.github.io/)).

## Overview
It is a straightforward process to deploy Helm charts using `terraform-provider-helm`.
However, what comes with some degrees of difficulties is the configuration of Helm chart values, 
specifically non-scalar (collections and complex structures) types.

## Conventions
### Naming
All module variables names derived from the Helm chart variables.

For example: `controller.reaplicCount` -> `variable controller-replicaCount`

### Values
`helm-nginx-ingress` terraform module simplifies this task by providing a uniform variable 
definition, declaration, and usage.

### scalar types
Strings, Booleans, and Integers variables can be provided via standard terraform variable definition:

```hcl-terraform
module nginx-ingress {
  source = "github.com/ichekrygin/helm-nginx-ingress"
  controller-replicaCount = 3
  controller-autoscaling-enabled = true
  controller-service-type = "NodePort"
}
``` 

### non-scalar types
Lists, Maps, and Complex structures are represented as "strings". 
```hcl-terraform
module ningx-ingress {
  source = "github.com/ichekrygin/helm-nginx-ingress"
  controller-podLabels = <<EOF
one: fish
two.fish: red.fish
EOF
}
```
Casting to "string" is both unfortunate and necessary. The unfortunate part is two-fold:
1. The [helm limitations](https://helm.sh/docs/using_helm/#the-format-and-limitations-of-set) in supporting complex types via `--set`

2. The inconsistent usage of non-scalar values inside the Helm chart templates. For
   example in `controller-deployment.yaml` you can see multiple being adopted, where
   
   `extraArgs` values are set via `range` iteration over the map of values
   ```yaml
             {{- range $key, $value := .Values.controller.extraArgs }}
               {{- if $value }}
               - --{{ $key }}={{ $value }}
               {{- else }}
               - --{{ $key }}
               {{- end }}
             {{- end }}
   ```
   
   At the same time and in the same file, we can see the utilization of `toYaml` functionality to achieve the same or similar results:
   ```yaml
             {{- if .Values.controller.extraEnvs }}
   {{ toYaml .Values.controller.extraEnvs | indent 12 }}
             {{- end }}
   ```
   
   Moreover, it appears `toYaml` usage is prevalent in `nginx-ingress` chart templates. 
   
In addition to the above, when using Maps of scalar values, we must take special care to escape `\\.` in map `key` values. 

## Module Usage Example
Below is a mock example of `helm-nginx-ingress` module usage:
```hcl-terraform
provider helm {}

module helm-nginx-ingress {
  source = "github.com/ichekrygin/helm-nginx-ingress"

  controller-addHeaders = <<EOF
foo: bar
EOF
  controller-extraArgs = <<EOF
enable-ssl-passthrough: ""
EOF
  controller-extraContainers = <<EOF
- name: sleep-for-an-hour
  image: busybox
  command: ["sleep"]
  args: ["60"]
EOF
  controller-extraInitContainers = <<EOF
- name: init-sleep
  image: busybox
  command: ["sleep"]
  args: ["1"]
EOF
  controller-extraVolumes = <<EOF
- name: test
  emptyDir: {}
EOF
  controller-extraVolumeMounts = <<EOF
- name: test
  mountPath: /etc/nginx/test
  readOnly: true
EOF
  controller-replicaCount = 1
  controller-minAvailable = 2
  controller-podLabels = <<EOF
one: fish
two: fish
red.fish: blue.fish
EOF
  tcp = <<EOF
22: "my-service:22"
EOF

  controller-service-type = "NodePort"
}
```

