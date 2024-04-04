{{- define "mlapi.name" -}}
  {{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "mlapi.labels" -}}
app: {{ template "mlapi.name" . }} 
env: {{ .Values.app.env  }}
  
{{- end -}}