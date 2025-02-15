{{define "link"}}[{{.text}}]({{.url}}){{end -}}
{{define "check"}} {{if .}}x {{end}}{{end -}}
{{define "features"}}{{range $i, $F := . -}}{{if not $i}} {{end}}{{$F}}{{end}} {{end -}}
{{define "languages"}}{{range $i, $L := . -}}{{if $i}},{{end}} {{$L}}{{end}} {{end -}}
{{define "notes" -}}
  {{" " -}}
  {{if not .reviewed}}Unreviewed; {{end -}}
  {{if .abandoned}}Abandoned; {{end -}}
  {{if .related}}Related: {{range $i, $R := .related -}}{{if $i}}, {{end}}{{template "link" $R}}{{end}}; {{end -}}
  {{if .notes}}{{.notes}}; {{end -}}
{{end -}}

# Awesome Kubernetes Configuration Management

This list contains
{{len .config_tools}} configuration management tools,
{{len .secret_tools}} secret management tools,
and {{len .misc_tools}} other related tools.
Feel free to contribute and help expand it.

## Configuration Management

* **Generation (G)**: Given some non-Kubernetes configuration, returns Kubernetes manifests.
* **Mutation (M)**: Given Kubernetes manifests, returns (possibly different) Kubernetes manifests.
* **Validation (V)**: Given Kubernetes manifests, returns validation results.
* **Deployment (D)**: Given Kubernetes manifest, makes Kubernetes API calls.
* **Promotion (P)**: Enables promotion of Kubernetes manifests across environments.
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

## Other Tools

| | Notes |
|-|-|
{{- range $T := .misc_tools}}
| {{template "link" $T.name}} |
{{- template "notes" $T.info}}|
{{- end}}

## Sources
{{range $T := .sources}}
* {{template "link" $T.name}}, retrieved {{$T.date}}
{{- end}}
