{{define "link"}}[{{.text}}]({{.url}}){{end -}}
{{define "check"}} {{if .}}x {{end}}{{end -}}
{{define "features"}}{{range $i, $F := . -}}{{if not $i}} {{end}}{{$F}}{{end}} {{end -}}
{{define "languages"}}{{range $i, $L := . -}}{{if $i}},{{end}} {{$L}}{{end}} {{end -}}
{{define "notes" -}}
  {{" " -}}
  {{if .abandoned}}Abandoned; {{end -}}
  {{if .related}}Related: {{range $i, $R := .related -}}{{if $i}}, {{end}}{{template "link" $R}}{{end}}; {{end -}}
  {{if .notes}}{{.notes}}; {{end -}}
{{end -}}

# Awesome Kubernetes Configuration Management

> This list is incomplete. Feel free to contribute and help expand it.

## Configuration Management

* **Generation (G)**: Given some non-Kubernetes configuration, returns Kubernetes manifests.
* **Mutation (M)**: Given Kubernetes manifests, returns (possibly different) Kubernetes manifests.
* **Validation (V)**: Given Kubernetes manifests, returns validation results.
* **Deployment (D)**: Given Kubernetes manifest, makes Kubernetes API calls.
* **Sharing (S)**: Enables the packaging and/or distribution of Kubernetes manifests.
* **In cluster (I)**: Runs in cluster.
* **Local (L)**: Runs locally.

| | Features | Languages | Notes |
|-|-|-|-|
{{- range $T := .config_tools}}
| {{template "link" $T.name}} |
{{- template "features" $T.features}}|
{{- template "languages" $T.languages}}|
{{- template "notes" $T.info}}|
{{- end}}

## Secret Management

* **In cluster (I)**: Runs in cluster.
* **Local (L)**: Runs locally.
* **Application (A)**: Runs side-by-side with the application.

| | Features | Notes |
|-|-|-|
{{- range $T := .secret_tools}}
| {{template "link" $T.name}} |
{{- template "features" $T.features}}|
{{- template "notes" $T.info}}|
{{- end}}
