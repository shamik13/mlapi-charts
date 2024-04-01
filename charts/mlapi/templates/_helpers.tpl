{{- define "mlapi.labels" -}}
app: mlapi
env: {{ .Values.app.env  }}
{{- end -}}