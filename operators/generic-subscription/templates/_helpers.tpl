{{- define "subscription.name" -}}
{{- $name := required "You need to provide the name of your subscription" .Values.name -}}
{{- $name -}}
{{- end -}}

{{- define "subscription.config" -}}
  {{- if .Values.config -}}

config:
  {{- toYaml .Values.config | nindent 2 -}}
  {{- end -}}

{{- end -}}

{{- define "subscription.channel" -}}
{{- $channel := required "You need to provide the channel of your subscription" .Values.channel -}}
{{- $channel -}}
{{- end -}}


{{- define "subscription.installPlanApproval" -}}
{{- default "Automatic" .Values.installPlanApproval -}}
{{- end -}}

{{- define "subscription.operatorName" -}}
{{- $opName := required "You need to provide the operatorName of your subscription" .Values.operatorName -}}
{{- $opName -}}
{{- end -}}

{{- define "subscription.operatorSource" -}}
{{- $opSrc := required "You need to provide the operatorSource of your subscription" .Values.operatorSource -}}
{{- $opSrc -}}
{{- end -}}

{{- define "subscription.operatorSourceNamespace" -}}
{{- default "openshift-marketplace" .Values.installPlanApproval -}}
{{- end -}}
