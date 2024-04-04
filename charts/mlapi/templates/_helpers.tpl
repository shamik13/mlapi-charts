{{- define "obj.labels" -}}
app: mlapi
env: {{ .Values.app.env  }}
{{- end -}}