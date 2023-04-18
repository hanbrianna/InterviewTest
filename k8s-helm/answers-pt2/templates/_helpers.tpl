{{/* vim: set filetype=mustache: */}}
{{- define "application.Fullname" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}
