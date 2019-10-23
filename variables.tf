variable chart-release { default = "nginx-ingress" }
variable chart-name { default = "stable/nginx-ingress" }
variable chart-version { default = "1-20-0" }
variable chart-namespace { default = "nginx-ingress" }

variable controller-addHeaders { default = "" }
variable controller-admissionWebhooks-enabled { default = false }
variable controller-admissionWebhooks-failurePolicy { default = "Fail" }
variable controller-admissionWebhooks-patch-enabled { default = true }
variable controller-admissionWebhooks-patch-image-pullPolicy { default = "IfNotPresent" }
variable controller-admissionWebhooks-patch-image-repository { default = "jettech/kube-webhook-certgen" }
variable controller-admissionWebhooks-patch-image-tag { default = "v1.0.0" }
variable controller-admissionWebhooks-patch-nodeSelector { default = "" }
variable controller-admissionWebhooks-patch-podAnnotations { default = "" }
variable controller-admissionWebhooks-patch-priorityClassName { default = "" }
variable controller-admissionWebhooks-port { default = 8443 }
variable controller-admissionWebhooks-service-annotations { default = "" }
variable controller-admissionWebhooks-service-clusterIP { default = "" }
variable controller-admissionWebhooks-service-externalIPs { default = "" }
variable controller-admissionWebhooks-service-loadBalancerIP { default = "" }
variable controller-admissionWebhooks-service-loadBalancerSourceRanges { default = "" }
variable controller-admissionWebhooks-service-omitClusterIP { default = false }
variable controller-admissionWebhooks-service-servicePort { default = 443 }
variable controller-admissionWebhooks-service-type { default = "ClusterIP" }
variable controller-affinity { default = "" }
variable controller-autoscaling-enabled { default = false }
variable controller-autoscaling-maxReplicas { default = 11 }
variable controller-autoscaling-minReplicas { default = 1 }
variable controller-autoscaling-targetCPUUtilizationPercentage { default = 50 }
variable controller-autoscaling-targetMemoryUtilizationPercentage { default = 50 }
variable controller-config { default = "" }
variable controller-configMapNamespace { default = "" }
variable controller-containerPort-http { default = 80 }
variable controller-containerPort-https { default = 443 }
variable controller-customTemplate-configMapKey { default = "" }
variable controller-customTemplate-configMapName { default = "" }
variable controller-daemonset-hostPorts-http { default = 80 }
variable controller-daemonset-hostPorts-https { default = 443 }
variable controller-daemonset-useHostPort { default = false }
variable controller-defaultBackendService { default = "" }
variable controller-dnsPolicy { default = "ClusterFirst" }
variable controller-electionID { default = "ingress-controller-leader" }
variable controller-extraArgs { default = "" }
variable controller-extraContainers { default = "" }
variable controller-extraEnvs { default = "" }
variable controller-extraInitContainers { default = "" }
variable controller-extraVolumeMounts { default = "" }
variable controller-extraVolumes { default = "" }
variable controller-hostNetwork { default = false }
variable controller-image-allowPrivilegeEscalation { default = true }
variable controller-image-pullPolicy { default = "IfNotPresent" }
variable controller-image-repository { default = "quay.io/kubernetes-ingress-controller/nginx-ingress-controller" }
variable controller-image-runAsUser { default = 33 }
variable controller-image-tag { default = "0.26.1" }
variable controller-ingressClass { default = "nginx" }
variable controller-kind { default = "Deployment" }
variable controller-lifecycle { default = "" }
variable controller-livenessProbe-failureThreshold { default = 3 }
variable controller-livenessProbe-initialDelaySeconds { default = 10 }
variable controller-livenessProbe-periodSeconds { default = 10 }
variable controller-livenessProbe-port { default = 10254 }
variable controller-livenessProbe-successThreshold { default = 1 }
variable controller-livenessProbe-timeoutSeconds { default = 1 }
variable controller-metrics-enabled { default = false }
variable controller-metrics-prometheusRule-additionalLabels { default = "" }
variable controller-metrics-prometheusRule-enabled { default = false }
variable controller-metrics-prometheusRule-namespace { default = "" }
variable controller-metrics-prometheusRule-rules { default = "" }
variable controller-metrics-service-annotations { default = "" }
variable controller-metrics-service-clusterIP { default = "" }
variable controller-metrics-service-externalIPs { default = "" }
variable controller-metrics-service-loadBalancerIP { default = "" }
variable controller-metrics-service-loadBalancerSourceRanges { default = "" }
variable controller-metrics-service-omitClusterIP { default = false }
variable controller-metrics-service-servicePort { default = 9913 }
variable controller-metrics-service-type { default = "ClusterIP" }
variable controller-metrics-serviceMonitor-additionalLabels { default = "" }
variable controller-metrics-serviceMonitor-enabled { default = false }
variable controller-metrics-serviceMonitor-namespace { default = "" }
variable controller-metrics-serviceMonitor-scrapeInterval { default = "30s" }
variable controller-minAvailable { default = 1 }
variable controller-minReadySeconds { default = 0 }
variable controller-name { default = "controller" }
variable controller-nodeSelector { default = "" }
variable controller-podAnnotations { default = "" }
variable controller-podLabels { default = "" }
variable controller-podSecurityContext { default = "" }
variable controller-priorityClassName { default = "" }
variable controller-proxySetHeaders { default = "" }
variable controller-publishService-enabled { default = false }
variable controller-publishService-pathOverride { default = "" }
variable controller-readinessProbe-failureThreshold { default = 3 }
variable controller-readinessProbe-initialDelaySeconds { default = 10 }
variable controller-readinessProbe-periodSeconds { default = 10 }
variable controller-readinessProbe-port { default = 10254 }
variable controller-readinessProbe-successThreshold { default = 1 }
variable controller-readinessProbe-timeoutSeconds { default = 1 }
variable controller-replicaCount { default = 1 }
variable controller-reportNodeInternalIp { default = false }
variable controller-resources { default = "" }
variable controller-scope-enabled { default = false }
variable controller-scope-namespace { default = "" }
variable controller-service-annotations { default = "" }
variable controller-service-clusterIP { default = "" }
variable controller-service-enableHttp { default = true }
variable controller-service-enableHttps { default = true }
variable controller-service-enabled { default = true }
variable controller-service-externalIPs { default = "" }
variable controller-service-externalTrafficPolicy { default = "" }
variable controller-service-healthCheckNodePort { default = 0 }
variable controller-service-labels { default = "" }
variable controller-service-loadBalancerIP { default = "" }
variable controller-service-loadBalancerSourceRanges { default = "" }
variable controller-service-nodePorts-http { default = "" }
variable controller-service-nodePorts-https { default = "" }
variable controller-service-nodePorts-tcp { default = "" }
variable controller-service-nodePorts-udp { default = "" }
variable controller-service-omitClusterIP { default = false }
variable controller-service-ports-http { default = 80 }
variable controller-service-ports-https { default = 443 }
variable controller-service-targetPorts-http { default = "http" }
variable controller-service-targetPorts-https { default = "https" }
variable controller-service-type { default = "LoadBalancer" }
variable controller-tcp-configMapNamespace { default = "" }
variable controller-terminationGracePeriodSeconds { default = 60 }
variable controller-tolerations { default = "" }
variable controller-udp-configMapNamespace { default = "" }
variable controller-updateStrategy { default = "" }
variable defaultBackend-affinity { default = "" }
variable defaultBackend-enabled { default = true }
variable defaultBackend-extraArgs { default = "" }
variable defaultBackend-extraEnvs { default = "" }
variable defaultBackend-image-pullPolicy { default = "IfNotPresent" }
variable defaultBackend-image-repository { default = "k8s.gcr.io/defaultbackend-amd64" }
variable defaultBackend-image-runAsUser { default = 65534 }
variable defaultBackend-image-tag { default = "1.5" }
variable defaultBackend-livenessProbe-failureThreshold { default = 3 }
variable defaultBackend-livenessProbe-initialDelaySeconds { default = 30 }
variable defaultBackend-livenessProbe-periodSeconds { default = 10 }
variable defaultBackend-livenessProbe-successThreshold { default = 1 }
variable defaultBackend-livenessProbe-timeoutSeconds { default = 5 }
variable defaultBackend-minAvailable { default = 1 }
variable defaultBackend-name { default = "default-backend" }
variable defaultBackend-nodeSelector { default = "" }
variable defaultBackend-podAnnotations { default = "" }
variable defaultBackend-podLabels { default = "" }
variable defaultBackend-podSecurityContext { default = "" }
variable defaultBackend-port { default = 8080 }
variable defaultBackend-priorityClassName { default = "" }
variable defaultBackend-readinessProbe-failureThreshold { default = 6 }
variable defaultBackend-readinessProbe-initialDelaySeconds { default = 0 }
variable defaultBackend-readinessProbe-periodSeconds { default = 5 }
variable defaultBackend-readinessProbe-successThreshold { default = 1 }
variable defaultBackend-readinessProbe-timeoutSeconds { default = 5 }
variable defaultBackend-replicaCount { default = 1 }
variable defaultBackend-resources { default = "" }
variable defaultBackend-service-annotations { default = "" }
variable defaultBackend-service-clusterIP { default = "" }
variable defaultBackend-service-externalIPs { default = "" }
variable defaultBackend-service-loadBalancerIP { default = "" }
variable defaultBackend-service-loadBalancerSourceRanges { default = "" }
variable defaultBackend-service-omitClusterIP { default = false }
variable defaultBackend-service-servicePort { default = 80 }
variable defaultBackend-service-type { default = "ClusterIP" }
variable defaultBackend-serviceAccount-create { default = true }
variable defaultBackend-serviceAccount-name { default = "" }
variable defaultBackend-tolerations { default = "" }
variable imagePullSecrets { default = "" }
variable podSecurityPolicy-enabled { default = false }
variable rbac-create { default = true }
variable revisionHistoryLimit { default = 10 }
variable serviceAccount-create { default = true }
variable serviceAccount-name { default = "" }
variable tcp { default = "" }
variable udp { default = "" }