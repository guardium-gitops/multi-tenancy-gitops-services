{{- define "guardium.name" -}}
{{- default "guardium" .Values.name -}}
{{- end -}}

{{- define "guardium.version" -}}
{{- default "3.1.5" .Values.version -}}
{{- end -}}

{{- define "guardium.license" -}}
{{- $version := required "Missing license" .Values.license -}}
{{- $version -}}
{{- end -}}

{{- define "guiardium.size" -}}
{{- default "values-small" .Values.size -}}
{{- end -}}

{{- define "guardium.domain" -}}
{{- $domain := required "Missing domain" .Values.domain -}}
{{- $domain -}}
{{- end -}}

{{- define "guardium.storageClassRWX" -}}
{{- default "ocs-storagecluster-cephfs" .Values.storageClassRWX -}}
{{- end -}}

{{- define "guardium.storageClassRWO" -}}
{{- default "ocs-storagecluster-ceph-rbd" .Values.storageClassRWO -}}
{{- end -}}

{{- define "guardium.templateSize" -}}
{{- default "MyTemplateSize" .Values.templateSize -}}
{{- end -}}


{{- define "guardium.kafka.pvcSize" -}}
  {{- if .Values.kafka -}}
    {{- default "50Gi" .Values.kafka.pvcSize -}}
  {{- else -}}
    50Gi
  {{- end -}}
{{- end -}}

{{- define "guardium.zookeeper.pvcSize" -}}
  {{- if .Values.zookeeper -}}
    {{- default "5Gi" .Values.zookeeper.pvcSize -}}
  {{- else -}}
    5Gi
  {{- end -}}
{{- end -}}

{{- define "guardium.mongodb.dataPvcSize" -}}
  {{- if .Values.mongodb -}}
    {{- default "50Gi" .Values.mongodb.dataPvcSize -}}
  {{- else -}}
    50Gi
  {{- end -}}
{{- end -}}

{{- define "guardium.mongodb.logsPvcSize" -}}
  {{- if .Values.mongodb -}}
    {{- default "10Gi" .Values.mongodb.logsPvcSize -}}
  {{- else -}}
    10Gi
  {{- end -}}
{{- end -}}

{{- define "guardium.db2.size" -}}
  {{- if .Values.db2 -}}
    {{- default "2" .Values.db2.size -}}
  {{- else -}}
    {{- "2" -}}
  {{- end -}}
{{- end -}}

{{- define "guardium.db2.encrypt" -}}
  {{- if .Values.db2 -}}
    {{- default "YES" .Values.db2.encrypt | quote -}}
  {{- else -}}
    {{ "YES" | quote}}
  {{- end -}}
{{- end -}}

{{- define "guardium.db2.logsPvcSize" -}}
  {{- if .Values.db2 -}}
    {{- default "150Gi" .Values.db2.logsPvcSize -}}
  {{- else -}}
    150Gi
  {{- end -}}
{{- end -}}

{{- define "guardium.db2.metaPvcSize" -}}
  {{- if .Values.db2 -}}
    {{- default "150Gi" .Values.db2.metaPvcSize -}}
  {{- else -}}
    150Gi
  {{- end -}}
{{- end -}}

{{- define "guardium.db2.dataPvcSize" -}}
  {{- if .Values.db2 -}}
    {{- default "200Gi" .Values.db2.dataPvcSize -}}
  {{- else -}}
    200Gi
  {{- end -}}
{{- end -}}

