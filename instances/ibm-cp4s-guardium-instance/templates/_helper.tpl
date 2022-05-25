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
    {{- default "250Gi" .Values.kafka.pvcSize -}}
  {{- else -}}
    250Gi
  {{- end -}}
{{- end -}}

{{- define "guardium.zookeeper.pvcSize" -}}
  {{- if .Values.zookeeper -}}
    {{- default "20Gi" .Values.zookeeper.pvcSize -}}
  {{- else -}}
    20Gi
  {{- end -}}
{{- end -}}

{{- define "guardium.mongodb.dataPvcSize" -}}
  {{- if .Values.mongodb -}}
    {{- default "250Gi" .Values.mongodb.dataPvcSize -}}
  {{- else -}}
    250Gi
  {{- end -}}
{{- end -}}

{{- define "guardium.mongodb.logsPvcSize" -}}
  {{- if .Values.mongodb -}}
    {{- default "250Gi" .Values.mongodb.logsPvcSize -}}
  {{- else -}}
    250Gi
  {{- end -}}
{{- end -}}

{{- define "guardium.db2.size" -}}
  {{- if .Values.db2 -}}
    {{- default "1" .Values.db2.size -}}
  {{- else -}}
    {{- "1" -}}
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
    {{- default "10Gi" .Values.db2.logsPvcSize -}}
  {{- else -}}
    10Gi
  {{- end -}}
{{- end -}}

{{- define "guardium.db2.metaPvcSize" -}}
  {{- if .Values.db2 -}}
    {{- default "10Gi" .Values.db2.metaPvcSize -}}
  {{- else -}}
    1000Gi
  {{- end -}}
{{- end -}}

{{- define "guardium.db2.dataPvcSize" -}}
  {{- if .Values.db2 -}}
    {{- default "5000Gi" .Values.db2.dataPvcSize -}}
  {{- else -}}
    5000Gi
  {{- end -}}
{{- end -}}

