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
| [Acorn](https://github.com/acorn-io/runtime) | DI | | |
| [Ansible](https://github.com/ansible/ansible) | GDL | YAML, Jinja2, Python (for plugins) | Related: [Kubernetes Collection](https://galaxy.ansible.com/kubernetes/core); |
| [Argo CD](https://github.com/argoproj/argo-cd) | DI | | |
| [autoapply](https://github.com/autoapply/autoapply) | DI | YAML | |
| [Bazel](https://github.com/bazelbuild/bazel) | DL | Starlark | Related: [rules_gitops](https://github.com/adobe/rules_gitops), [rules_k8s](https://github.com/bazelbuild/rules_k8s); |
| [Bicep](https://github.com/Azure/bicep) | GDSL | Bicep | Related: [Kubernetes provider](https://github.com/MicrosoftDocs/azure-docs/blob/3d1cfaa248b92e006aa2a3101b958f5a628718a9/articles/azure-resource-manager/bicep/bicep-extensibility-kubernetes-provider.md), [Kubernetes type definitions](https://github.com/Azure/bicep-types-k8s); |
| [cdk8s](https://github.com/cdk8s-team/cdk8s) | GSL | TypeScript, Python, Java, Go | Related: [cdk8s+](https://github.com/cdk8s-team/cdk8s-plus); |
| [Checkov](https://github.com/bridgecrewio/checkov) | VIL | YAML, Python | |
| [compose2kube](https://github.com/kelseyhightower/compose2kube) | GL | YAML | Abandoned; |
| [Config Sync](https://github.com/GoogleContainerTools/kpt-config-sync) | DI | | |
| [Conftest](https://github.com/open-policy-agent/conftest) | VL | Rego | Related: [Kubernetes policies](https://github.com/instrumenta/policies/tree/master/kubernetes); |
| [Crossplane](https://github.com/crossplane/crossplane) | GDI | | Related: [Ansible provider](https://github.com/crossplane-contrib/provider-ansible), [Argo CD provider](https://github.com/crossplane-contrib/provider-argocd), [Helm provider](https://github.com/crossplane-contrib/provider-helm), [Kubernetes provider](https://github.com/crossplane-contrib/provider-kubernetes), [Terraform provider](https://github.com/upbound/provider-terraform); |
| [CUE](https://github.com/cue-lang/cue) | GVSL | CUE | |
| [Datree](https://github.com/datreeio/datree) | VIL | JSON schema, Rego | |
| [dekorate](https://github.com/dekorateio/dekorate) | GL | Java | |
| [Dhall](https://github.com/dhall-lang/dhall-lang) | GSL | Dhall | Related: [dhall-kubernetes](https://github.com/dhall-lang/dhall-kubernetes); |
| [Flux v1](https://github.com/fluxcd/flux) | DI | | Abandoned; |
| [Flux v2](https://github.com/fluxcd/flux2) | DI | | Related: [Weave GitOps](https://github.com/weaveworks/weave-gitops); |
| [Gatekeeper](https://github.com/open-policy-agent/gatekeeper) | MVI | Rego | External data support; |
| [Helm](https://github.com/helm/helm) | GDSL | Go Template | |
| [Helmfile](https://github.com/helmfile/helmfile) | DL | YAML | |
| [Helmsman](https://github.com/Praqma/helmsman) | DL | TOML | |
| [Helmwave](https://github.com/helmwave/helmwave) | DL | YAML | |
| [Isopod](https://github.com/cruise-automation/isopod) | GVDL | Starlark | |
| [jk](https://github.com/jkcfg/jk) | GL | JavaScript, TypeScript | Abandoned; |
| [Jsonnet](https://github.com/google/jsonnet) | GML | Jsonnet | Related: [kube-libsonnet](https://github.com/bitnami-labs/kube-libsonnet), [k8s-gen](https://github.com/jsonnet-libs/k8s), [k8s-libsonnet](https://github.com/jsonnet-libs/k8s-libsonnet); |
| [jsPolicy](https://github.com/loft-sh/jspolicy) | MVI | JavaScript, TypeScript | "Controller policies" support; |
| [k-rail](https://github.com/cruise-automation/k-rail) | MVI | any (gRPC) | Abandoned; |
| [k8comp](https://github.com/cststack/k8comp) | GL | ERB (Ruby templating) | Abandoned; |
| [k8spkg](https://github.com/mgoltzsche/k8spkg) | MDL | | Abandoned; |
| [kadet](https://github.com/kapicorp/kadet) | GL | Python | |
| [Kapitan](https://github.com/kapicorp/kapitan) | GML | YAML, Jsonnet, Jinja2, Python | |
| [kapp](https://github.com/carvel-dev/kapp) | DL | | |
| [kapp-controller](https://github.com/carvel-dev/kapp-controller) | DI | | |
| [Kasane](https://github.com/google/kasane) | ML | YAML, Jsonnet | Abandoned; |
| [KCL](https://github.com/KusionStack/KCLVM) | GMVL | KCL | |
| [Kedge](https://github.com/kedgeproject/kedge) | GDL | YAML | Abandoned; |
| [Keel](https://github.com/keel-hq/keel) | DI | | Updates container image version; |
| [kenv](https://github.com/thisendout/kenv) | ML | YAML | Abandoned; Injects environment variables in Pods; |
| [Keptn](https://github.com/keptn/keptn) | DI | | |
| [khelm](https://github.com/mgoltzsche/khelm) | GML | | |
| [ko](https://github.com/ko-build/ko) | MDL | | Limited to Go applications; |
| [Kompose](https://github.com/kubernetes/kompose) | GL | YAML | |
| [konfd](https://github.com/kelseyhightower/konfd) | GI | Go template | Abandoned; |
| [Kosko](https://github.com/tommy351/kosko) | GVL | JavaScript, TypeScript | |
| [KOTS](https://github.com/replicatedhq/kots) | DSIL | | |
| [kpt](https://github.com/GoogleContainerTools/kpt) | GMVDSL | YAML, Go, Typescript, Starlark, any (w/o SDK) | |
| [kr8](https://github.com/apptio/kr8) | GL | Jsonnet | |
| [kraan](https://github.com/fidelity/kraan) | DI | | |
| [krane](https://github.com/Shopify/krane) | GDL | ERB (Ruby templating) | |
| [Kratix](https://github.com/syntasso/kratix) | GDI | | |
| [ksonnet](https://github.com/ksonnet/ksonnet) | GVDSL | Jsonnet | Abandoned; Related: [ksonnet-lib](https://github.com/ksonnet/ksonnet-lib); |
| [ktmpl](https://github.com/jimmycuadra/ktmpl) | GL | | Abandoned; |
| [kube-applier](https://github.com/box/kube-applier) | DI | | Abandoned; |
| [kubeapply](https://github.com/segmentio/kubeapply) | GDL | YAML, Starlark | Related: [Terraform provider](https://github.com/segmentio/terraform-provider-kubeapply); |
| [kubecfg](https://github.com/kubecfg/kubecfg) | GDL | Jsonnet | |
| [Kubeconform](https://github.com/yannh/kubeconform) | VL | | |
| [kubectl](https://github.com/kubernetes/kubectl) | GVDL | | |
| [kubegen](https://github.com/errordeveloper/kubegen) | GL | YAML, JSON, HCL | Abandoned; |
| [KubeLinter](https://github.com/stackrox/kube-linter) | VL | YAML | |
| [Kubeval](https://github.com/instrumenta/kubeval) | VL | | Abandoned; |
| [Kubewarden](https://github.com/kubewarden/kubewarden-controller) | MVI | any (WebAssembly) | |
| [Kusion](https://github.com/KusionStack/kusion) | GVDL | KCL | |
| [kustomize](https://github.com/kubernetes-sigs/kustomize) | ML | YAML | |
| [kustomizer](https://github.com/stefanprodan/kustomizer) | GMSL | | |
| [Kyverno](https://github.com/kyverno/kyverno) | GMVIL | YAML, CEL | External data support; |
| [Lingon](https://github.com/volvo-cars/lingon) | GL | Go | |
| [Meshery](https://github.com/meshery/meshery) | GDI | YAML | |
| [Microconfig](https://github.com/microconfig/microconfig) | GL | | |
| [mimic](https://github.com/bwplotka/mimic) | GL | Go | |
| [Monokle](https://github.com/kubeshop/monokle) | GVDL | | |
| [NAML](https://github.com/kris-nova/naml) | GDL | Go | |
| [Nickel](https://github.com/tweag/nickel) | GVL | Nickel | |
| [OpenCompose](https://github.com/redhat-developer/opencompose) | GL | | Abandoned; |
| [Polaris](https://github.com/FairwindsOps/polaris) | MVIL | YAML, JSON Schema | |
| [Project Syn](https://github.com/projectsyn) | GMDSIL | YAML, Jsonnet, Jinja2, Python | Related: [Commodore](https://github.com/projectsyn/commodore), [Lieutenant API](https://github.com/projectsyn/lieutenant-api), [Lieutenant Operator](https://github.com/projectsyn/lieutenant-operator), [Steward](https://github.com/projectsyn/steward); |
| [Pulumi](https://github.com/pulumi/pulumi) | GDL | JavaScript, TypeScript, Python, Go, C#, Visual Basic, F#, Java, YAML | Related: [Kubernetes provider](https://github.com/pulumi/pulumi-kubernetes), [Operator](https://github.com/pulumi/pulumi-kubernetes-operator); |
| [Radius](https://github.com/radius-project/radius) | DI | Bicep | |
| [Score](https://github.com/score-spec/spec) | GL | YAML | Related: [Helm integration](https://github.com/score-spec/score-helm); |
| [Ship](https://github.com/replicatedhq/ship) | DL | | Abandoned; |
| [shipcat](https://github.com/clux/shipcat) | GDL | YAML | Abandoned; |
| [Shipit](https://github.com/Shopify/shipit-engine) | DL | ERB (Ruby templating) | |
| [Skycfg](https://github.com/stripe/skycfg) | GL | Starlark, Go | |
| [Tanka](https://github.com/grafana/tanka) | GDSL | Jsonnet | |
| [Terraform](https://github.com/hashicorp/terraform) | GDL | HCL | Related: [Kubernetes provider](https://github.com/terraform-providers/terraform-provider-kubernetes), [k8s provider](https://github.com/banzaicloud/terraform-provider-k8s), [Kustomize provider](https://github.com/kbst/terraform-provider-kustomize), [Helm provider](https://github.com/terraform-providers/terraform-provider-helm); |
| [Tilt](https://github.com/tilt-dev/tilt) | GMDL | Starlark | |
| [Timoni](https://github.com/stefanprodan/timoni) | GDSL | CUE | |
| [Tye](https://github.com/dotnet/tye) | GDL | | Limited to .NET applications; |
| [Untrak](https://github.com/yanc0/untrak) | L | YAML | Abandoned; Garbage collect untracked resources; |
| [ValidatingAdmissionPolicy](https://kubernetes.io/docs/reference/access-authn-authz/validating-admission-policy) | VI | CEL | |
| [werf](https://github.com/flant/werf) | GDSL | YAML | |
| [ytt](https://github.com/carvel-dev/ytt) | GMVL | YAML, Starlark | |

## Secret Management

* **In cluster (I)**: Runs in cluster.
* **Local (L)**: Runs locally.
* **Application (A)**: Runs side-by-side with the application.

| | Features | Notes |
|-|-|-|
| [agebox](https://github.com/slok/agebox) | L | |
| [aws-secret-operator](https://github.com/mumoshu/aws-secret-operator) | I | |
| [Azure Key Vault to Kubernetes (akv2k8s)](https://github.com/SparebankenVest/azure-key-vault-to-kubernetes) | IA | |
| [BlackBox](https://github.com/StackExchange/blackbox) | L | |
| [conjur-authn-k8s-client](https://github.com/cyberark/conjur-authn-k8s-client) | A | |
| [ejson](https://github.com/Shopify/ejson) | L | Related: [ejson2env](https://github.com/Shopify/ejson2env); |
| [External Secrets](https://github.com/external-secrets/external-secrets) | I | |
| [git-crypt](https://github.com/AGWA/git-crypt) | L | |
| [git-encrypt](https://github.com/shadowhand/git-encrypt) | L | Abandoned; |
| [git-secret](https://github.com/sobolevn/git-secret) | L | |
| [helm-secrets](https://github.com/jkroepke/helm-secrets) | L | |
| [Hiera eyaml](https://github.com/voxpupuli/hiera-eyaml) | L | |
| [Infisical Secrets Operator](https://github.com/Infisical/infisical/tree/main/k8-operator) | I | Related: [Infisical](https://github.com/Infisical/infisical); |
| [Kamus](https://github.com/Soluto/kamus) | IA | |
| [Keyringer](https://github.com/quarkslab/keyringer) | L | Abandoned; |
| [Kube-secret-syncer](https://github.com/contentful-labs/kube-secret-syncer) | I | |
| [Murmur](https://github.com/busser/murmur) | A | |
| [pass](https://www.passwordstore.org) | L | |
| [Rot](https://github.com/candiddev/rot) | L | |
| [Sealed Secrets](https://github.com/bitnami-labs/sealed-secrets) | I | |
| [Secrets Store CSI Driver](https://secrets-store-csi-driver.sigs.k8s.io) | I | Related: [AWS Secrets Manager and Systems Manager Parameter Store provider](https://github.com/aws/secrets-store-csi-driver-provider-aws), [Azure Key Vault provider](https://github.com/Azure/secrets-store-csi-driver-provider-azure), [Google Secret Manager provider](https://github.com/GoogleCloudPlatform/secrets-store-csi-driver-provider-gcp), [HashiCorp Vault provider](https://github.com/hashicorp/vault-csi-provider), [CyberArk Conjur provider (WIP)](https://github.com/cyberark/conjur/pull/2836); |
| [secure_yaml](https://github.com/huwtl/secure_yaml) | L | Abandoned; |
| [SOPS](https://github.com/getsops/sops) | L | Related: [KSOPS (kustomize KRM exec plugin)](https://github.com/viaduct-ai/kustomize-sops), [Helm Sops](https://github.com/camptocamp/helm-sops), [SOPS secrets operator](https://github.com/isindir/sops-secrets-operator), [SOPS Operator](https://github.com/craftypath/sops-operator); |
| [Teller](https://github.com/tellerops/teller) | L | Related: [Helm-teller](https://github.com/tellerops/helm-teller); |
| [Tesoro](https://github.com/kapicorp/tesoro) | I | Abandoned; |
| [transcrypt](https://github.com/elasticdog/transcrypt) | L | |
| [vals](https://github.com/helmfile/vals) | A | |
| [Vault Secrets Operator (HashiCorp)](https://github.com/hashicorp/vault-secrets-operator) | I | |
| [Vault Secrets Operator (Rico Berger)](https://github.com/ricoberger/vault-secrets-operator) | I | |
| [vault-k8s](https://github.com/hashicorp/vault-k8s) | A | |
| [yaml-crypt](https://github.com/autoapply/yaml-crypt) | L | |
