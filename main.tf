resource helm_release nginx-ingress {
  provider = helm

  chart     = var.chart-name
  version   = var.chart-version
  name      = var.chart-release
  namespace = var.chart-namespace
  values = [
    <<EOF
controller:
  addHeaders: ${indent(4, "\n${var.controller-addHeaders}")}
  admissionWebhooks:
    enabled: ${indent(6, "\n${var.controller-admissionWebhooks-enabled}")}
    failurePolicy: ${indent(6, "\n${var.controller-admissionWebhooks-failurePolicy}")}
    patch:
      enabled: ${indent(8, "\n${var.controller-admissionWebhooks-patch-enabled}")}
      image:
        pullPolicy: ${indent(10, "\n${var.controller-admissionWebhooks-patch-image-pullPolicy}")}
        repository: ${indent(10, "\n${var.controller-admissionWebhooks-patch-image-repository}")}
        tag: ${indent(10, "\n${var.controller-admissionWebhooks-patch-image-tag}")}
      nodeSelector: ${indent(8, "\n${var.controller-admissionWebhooks-patch-nodeSelector}")}
      podAnnotations: ${indent(8, "\n${var.controller-admissionWebhooks-patch-podAnnotations}")}
      priorityClassName: ${indent(8, "\n${var.controller-admissionWebhooks-patch-priorityClassName}")}
    port: ${indent(6, "\n${var.controller-admissionWebhooks-port}")}
    service:
      annotations: ${indent(8, "\n${var.controller-admissionWebhooks-service-annotations}")}
      clusterIP: ${indent(8, "\n${var.controller-admissionWebhooks-service-clusterIP}")}
      externalIPs: ${indent(8, "\n${var.controller-admissionWebhooks-service-externalIPs}")}
      loadBalancerIP: ${indent(8, "\n${var.controller-admissionWebhooks-service-loadBalancerIP}")}
      loadBalancerSourceRanges: ${indent(8, "\n${var.controller-admissionWebhooks-service-loadBalancerSourceRanges}")}
      omitClusterIP: ${indent(8, "\n${var.controller-admissionWebhooks-service-omitClusterIP}")}
      servicePort: ${indent(8, "\n${var.controller-admissionWebhooks-service-servicePort}")}
      type: ${indent(8, "\n${var.controller-admissionWebhooks-service-type}")}
  affinity: ${indent(4, "\n${var.controller-affinity}")}
  autoscaling:
    enabled: ${indent(6, "\n${var.controller-autoscaling-enabled}")}
    maxReplicas: ${indent(6, "\n${var.controller-autoscaling-maxReplicas}")}
    minReplicas: ${indent(6, "\n${var.controller-autoscaling-minReplicas}")}
    targetCPUUtilizationPercentage: ${indent(6, "\n${var.controller-autoscaling-targetCPUUtilizationPercentage}")}
    targetMemoryUtilizationPercentage: ${indent(6, "\n${var.controller-autoscaling-targetMemoryUtilizationPercentage}")}
  config: ${indent(4, "\n${var.controller-config}")}
  configMapNamespace: ${indent(4, "\n${var.controller-configMapNamespace}")}
  containerPort:
    http: ${indent(6, "\n${var.controller-containerPort-http}")}
    https: ${indent(6, "\n${var.controller-containerPort-https}")}
  customTemplate:
    configMapKey: ${indent(6, "\n${var.controller-customTemplate-configMapKey}")}
    configMapName: ${indent(6, "\n${var.controller-customTemplate-configMapName}")}
  daemonset:
    hostPorts:
      http: ${indent(8, "\n${var.controller-daemonset-hostPorts-http}")}
      https: ${indent(8, "\n${var.controller-daemonset-hostPorts-https}")}
    useHostPort: ${indent(6, "\n${var.controller-daemonset-useHostPort}")}
  defaultBackendService: ${indent(4, "\n${var.controller-defaultBackendService}")}
  dnsPolicy: ${indent(4, "\n${var.controller-dnsPolicy}")}
  electionID: ${indent(4, "\n${var.controller-electionID}")}
  extraArgs: ${indent(4, "\n${var.controller-extraArgs}")}
  extraContainers: ${indent(4, "\n${var.controller-extraContainers}")}
  extraEnvs: ${indent(4, "\n${var.controller-extraEnvs}")}
  extraInitContainers: ${indent(4, "\n${var.controller-extraInitContainers}")}
  extraVolumeMounts: ${indent(4, "\n${var.controller-extraVolumeMounts}")}
  extraVolumes: ${indent(4, "\n${var.controller-extraVolumes}")}
  hostNetwork: ${indent(4, "\n${var.controller-hostNetwork}")}
  image:
    allowPrivilegeEscalation: ${indent(6, "\n${var.controller-image-allowPrivilegeEscalation}")}
    pullPolicy: ${indent(6, "\n${var.controller-image-pullPolicy}")}
    repository: ${indent(6, "\n${var.controller-image-repository}")}
    runAsUser: ${indent(6, "\n${var.controller-image-runAsUser}")}
    tag: ${indent(6, "\n${var.controller-image-tag}")}
  ingressClass: ${indent(4, "\n${var.controller-ingressClass}")}
  kind: ${indent(4, "\n${var.controller-kind}")}
  lifecycle: ${indent(4, "\n${var.controller-lifecycle}")}
  livenessProbe:
    failureThreshold: ${indent(6, "\n${var.controller-livenessProbe-failureThreshold}")}
    initialDelaySeconds: ${indent(6, "\n${var.controller-livenessProbe-initialDelaySeconds}")}
    periodSeconds: ${indent(6, "\n${var.controller-livenessProbe-periodSeconds}")}
    port: ${indent(6, "\n${var.controller-livenessProbe-port}")}
    successThreshold: ${indent(6, "\n${var.controller-livenessProbe-successThreshold}")}
    timeoutSeconds: ${indent(6, "\n${var.controller-livenessProbe-timeoutSeconds}")}
  metrics:
    enabled: ${indent(6, "\n${var.controller-metrics-enabled}")}
    prometheusRule:
      additionalLabels: ${indent(8, "\n${var.controller-metrics-prometheusRule-additionalLabels}")}
      enabled: ${indent(8, "\n${var.controller-metrics-prometheusRule-enabled}")}
      namespace: ${indent(8, "\n${var.controller-metrics-prometheusRule-namespace}")}
      rules: ${indent(8, "\n${var.controller-metrics-prometheusRule-rules}")}
    service:
      annotations: ${indent(8, "\n${var.controller-metrics-service-annotations}")}
      clusterIP: ${indent(8, "\n${var.controller-metrics-service-clusterIP}")}
      externalIPs: ${indent(8, "\n${var.controller-metrics-service-externalIPs}")}
      loadBalancerIP: ${indent(8, "\n${var.controller-metrics-service-loadBalancerIP}")}
      loadBalancerSourceRanges: ${indent(8, "\n${var.controller-metrics-service-loadBalancerSourceRanges}")}
      omitClusterIP: ${indent(8, "\n${var.controller-metrics-service-omitClusterIP}")}
      servicePort: ${indent(8, "\n${var.controller-metrics-service-servicePort}")}
      type: ${indent(8, "\n${var.controller-metrics-service-type}")}
    serviceMonitor:
      additionalLabels: ${indent(8, "\n${var.controller-metrics-serviceMonitor-additionalLabels}")}
      enabled: ${indent(8, "\n${var.controller-metrics-serviceMonitor-enabled}")}
      namespace: ${indent(8, "\n${var.controller-metrics-serviceMonitor-namespace}")}
      scrapeInterval: ${indent(8, "\n${var.controller-metrics-serviceMonitor-scrapeInterval}")}
  minAvailable: ${indent(4, "\n${var.controller-minAvailable}")}
  minReadySeconds: ${indent(4, "\n${var.controller-minReadySeconds}")}
  name: ${indent(4, "\n${var.controller-name}")}
  nodeSelector: ${indent(4, "\n${var.controller-nodeSelector}")}
  podAnnotations: ${indent(4, "\n${var.controller-podAnnotations}")}
  podLabels: ${indent(4, "\n${var.controller-podLabels}")}
  podSecurityContext: ${indent(4, "\n${var.controller-podSecurityContext}")}
  priorityClassName: ${indent(4, "\n${var.controller-priorityClassName}")}
  proxySetHeaders: ${indent(4, "\n${var.controller-proxySetHeaders}")}
  publishService:
    enabled: ${indent(6, "\n${var.controller-publishService-enabled}")}
    pathOverride: ${indent(6, "\n${var.controller-publishService-pathOverride}")}
  readinessProbe:
    failureThreshold: ${indent(6, "\n${var.controller-readinessProbe-failureThreshold}")}
    initialDelaySeconds: ${indent(6, "\n${var.controller-readinessProbe-initialDelaySeconds}")}
    periodSeconds: ${indent(6, "\n${var.controller-readinessProbe-periodSeconds}")}
    port: ${indent(6, "\n${var.controller-readinessProbe-port}")}
    successThreshold: ${indent(6, "\n${var.controller-readinessProbe-successThreshold}")}
    timeoutSeconds: ${indent(6, "\n${var.controller-readinessProbe-timeoutSeconds}")}
  replicaCount: ${indent(4, "\n${var.controller-replicaCount}")}
  reportNodeInternalIp: ${indent(4, "\n${var.controller-reportNodeInternalIp}")}
  resources: ${indent(4, "\n${var.controller-resources}")}
  scope:
    enabled: ${indent(6, "\n${var.controller-scope-enabled}")}
    namespace: ${indent(6, "\n${var.controller-scope-namespace}")}
  service:
    annotations: ${indent(6, "\n${var.controller-service-annotations}")}
    clusterIP: ${indent(6, "\n${var.controller-service-clusterIP}")}
    enableHttp: ${indent(6, "\n${var.controller-service-enableHttp}")}
    enableHttps: ${indent(6, "\n${var.controller-service-enableHttps}")}
    enabled: ${indent(6, "\n${var.controller-service-enabled}")}
    externalIPs: ${indent(6, "\n${var.controller-service-externalIPs}")}
    externalTrafficPolicy: ${indent(6, "\n${var.controller-service-externalTrafficPolicy}")}
    healthCheckNodePort: ${indent(6, "\n${var.controller-service-healthCheckNodePort}")}
    labels: ${indent(6, "\n${var.controller-service-labels}")}
    loadBalancerIP: ${indent(6, "\n${var.controller-service-loadBalancerIP}")}
    loadBalancerSourceRanges: ${indent(6, "\n${var.controller-service-loadBalancerSourceRanges}")}
    nodePorts:
      http: ${indent(8, "\n${var.controller-service-nodePorts-http}")}
      https: ${indent(8, "\n${var.controller-service-nodePorts-https}")}
      tcp: ${indent(8, "\n${var.controller-service-nodePorts-tcp}")}
      udp: ${indent(8, "\n${var.controller-service-nodePorts-udp}")}
    omitClusterIP: ${indent(6, "\n${var.controller-service-omitClusterIP}")}
    ports:
      http: ${indent(8, "\n${var.controller-service-ports-http}")}
      https: ${indent(8, "\n${var.controller-service-ports-https}")}
    targetPorts:
      http: ${indent(8, "\n${var.controller-service-targetPorts-http}")}
      https: ${indent(8, "\n${var.controller-service-targetPorts-https}")}
    type: ${indent(6, "\n${var.controller-service-type}")}
  tcp:
    configMapNamespace: ${indent(6, "\n${var.controller-tcp-configMapNamespace}")}
  terminationGracePeriodSeconds: ${indent(4, "\n${var.controller-terminationGracePeriodSeconds}")}
  tolerations: ${indent(4, "\n${var.controller-tolerations}")}
  udp:
    configMapNamespace: ${indent(6, "\n${var.controller-udp-configMapNamespace}")}
  updateStrategy: ${indent(4, "\n${var.controller-updateStrategy}")}
defaultBackend:
  affinity: ${indent(4, "\n${var.defaultBackend-affinity}")}
  enabled: ${indent(4, "\n${var.defaultBackend-enabled}")}
  extraArgs: ${indent(4, "\n${var.defaultBackend-extraArgs}")}
  extraEnvs: ${indent(4, "\n${var.defaultBackend-extraEnvs}")}
  image:
    pullPolicy: ${indent(6, "\n${var.defaultBackend-image-pullPolicy}")}
    repository: ${indent(6, "\n${var.defaultBackend-image-repository}")}
    runAsUser: ${indent(6, "\n${var.defaultBackend-image-runAsUser}")}
    tag: ${indent(6, "\n${var.defaultBackend-image-tag}")}
  livenessProbe:
    failureThreshold: ${indent(6, "\n${var.defaultBackend-livenessProbe-failureThreshold}")}
    initialDelaySeconds: ${indent(6, "\n${var.defaultBackend-livenessProbe-initialDelaySeconds}")}
    periodSeconds: ${indent(6, "\n${var.defaultBackend-livenessProbe-periodSeconds}")}
    successThreshold: ${indent(6, "\n${var.defaultBackend-livenessProbe-successThreshold}")}
    timeoutSeconds: ${indent(6, "\n${var.defaultBackend-livenessProbe-timeoutSeconds}")}
  minAvailable: ${indent(4, "\n${var.defaultBackend-minAvailable}")}
  name: ${indent(4, "\n${var.defaultBackend-name}")}
  nodeSelector: ${indent(4, "\n${var.defaultBackend-nodeSelector}")}
  podAnnotations: ${indent(4, "\n${var.defaultBackend-podAnnotations}")}
  podLabels: ${indent(4, "\n${var.defaultBackend-podLabels}")}
  podSecurityContext: ${indent(4, "\n${var.defaultBackend-podSecurityContext}")}
  port: ${indent(4, "\n${var.defaultBackend-port}")}
  priorityClassName: ${indent(4, "\n${var.defaultBackend-priorityClassName}")}
  readinessProbe:
    failureThreshold: ${indent(6, "\n${var.defaultBackend-readinessProbe-failureThreshold}")}
    initialDelaySeconds: ${indent(6, "\n${var.defaultBackend-readinessProbe-initialDelaySeconds}")}
    periodSeconds: ${indent(6, "\n${var.defaultBackend-readinessProbe-periodSeconds}")}
    successThreshold: ${indent(6, "\n${var.defaultBackend-readinessProbe-successThreshold}")}
    timeoutSeconds: ${indent(6, "\n${var.defaultBackend-readinessProbe-timeoutSeconds}")}
  replicaCount: ${indent(4, "\n${var.defaultBackend-replicaCount}")}
  resources: ${indent(4, "\n${var.defaultBackend-resources}")}
  service:
    annotations: ${indent(6, "\n${var.defaultBackend-service-annotations}")}
    clusterIP: ${indent(6, "\n${var.defaultBackend-service-clusterIP}")}
    externalIPs: ${indent(6, "\n${var.defaultBackend-service-externalIPs}")}
    loadBalancerIP: ${indent(6, "\n${var.defaultBackend-service-loadBalancerIP}")}
    loadBalancerSourceRanges: ${indent(6, "\n${var.defaultBackend-service-loadBalancerSourceRanges}")}
    omitClusterIP: ${indent(6, "\n${var.defaultBackend-service-omitClusterIP}")}
    servicePort: ${indent(6, "\n${var.defaultBackend-service-servicePort}")}
    type: ${indent(6, "\n${var.defaultBackend-service-type}")}
  serviceAccount:
    create: ${indent(6, "\n${var.defaultBackend-serviceAccount-create}")}
    name: ${indent(6, "\n${var.defaultBackend-serviceAccount-name}")}
  tolerations: ${indent(4, "\n${var.defaultBackend-tolerations}")}
imagePullSecrets: ${indent(2, "\n${var.imagePullSecrets}")}
podSecurityPolicy:
  enabled: ${indent(4, "\n${var.podSecurityPolicy-enabled}")}
rbac:
  create: ${indent(4, "\n${var.rbac-create}")}
revisionHistoryLimit: ${indent(2, "\n${var.revisionHistoryLimit}")}
serviceAccount:
  create: ${indent(4, "\n${var.serviceAccount-create}")}
  name: ${indent(4, "\n${var.serviceAccount-name}")}
tcp: ${indent(2, "\n${var.tcp}")}
udp: ${indent(2, "\n${var.udp}")}
EOF
  ]
}
