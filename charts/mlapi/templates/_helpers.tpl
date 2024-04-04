{{- define "mlapi.labels" -}}
app: {{ .Chart.name }}
env: {{ .Values.app.env  }}
{{- end -}}