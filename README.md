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
| [apollo](https://github.com/logzio/apollo) | | | TODO; |
| [AppController](https://github.com/Mirantis/k8s-AppController) | DI | | Abandoned; |
| [appsody](https://github.com/appsody/appsody) | | | TODO; |
| [Archipa](https://github.com/archipaorg/archipa) | | | TODO; |
| [Argo CD](https://github.com/argoproj/argo-cd) | DI | | |
| [armada](https://github.com/att-comdev/armada) | | | TODO; |
| [autoapply](https://github.com/autoapply/autoapply) | DI | YAML | |
| [Bazel](https://github.com/bazelbuild/bazel) | DL | Starlark | Related: [rules_gitops](https://github.com/adobe/rules_gitops), [rules_k8s](https://github.com/bazelbuild/rules_k8s); |
| [Bicep](https://github.com/Azure/bicep) | GDSL | Bicep | Related: [Kubernetes provider](https://github.com/MicrosoftDocs/azure-docs/blob/3d1cfaa248b92e006aa2a3101b958f5a628718a9/articles/azure-resource-manager/bicep/bicep-extensibility-kubernetes-provider.md), [Kubernetes type definitions](https://github.com/Azure/bicep-types-k8s); |
| [Broadway](https://github.com/namely/broadway) | | | TODO; |
| [cdk8s](https://github.com/cdk8s-team/cdk8s) | GSL | TypeScript, Python, Java, Go | Related: [cdk8s+](https://github.com/cdk8s-team/cdk8s-plus); |
| [Chartify](https://github.com/appscode/chartify) | | | TODO; |
| [Checkov](https://github.com/bridgecrewio/checkov) | VIL | YAML, Python | |
| [compose2kube](https://github.com/kelseyhightower/compose2kube) | GL | YAML | Abandoned; |
| [Config Sync](https://github.com/GoogleContainerTools/kpt-config-sync) | DI | | |
| [configula](https://github.com/brendandburns/configula) | | | TODO; |
| [Conftest](https://github.com/open-policy-agent/conftest) | VL | Rego | Related: [Kubernetes policies](https://github.com/instrumenta/policies/tree/9eafe392bbec10f34d0b46fafd16b3e919aae271/kubernetes); |
| [Crossplane](https://github.com/crossplane/crossplane) | GDI | | Related: [Ansible provider](https://github.com/crossplane-contrib/provider-ansible), [Argo CD provider](https://github.com/crossplane-contrib/provider-argocd), [Helm provider](https://github.com/crossplane-contrib/provider-helm), [Kubernetes provider](https://github.com/crossplane-contrib/provider-kubernetes), [Terraform provider](https://github.com/upbound/provider-terraform); |
| [CUE](https://github.com/cue-lang/cue) | GVSL | CUE | |
| [Cyclops](https://github.com/cyclops-ui/cyclops) | GDI | graphical UI | |
| [Datree](https://github.com/datreeio/datree) | VIL | JSON schema, Rego | |
| [Deis workflow](https://github.com/deis/workflow) | | | TODO; |
| [dekorate](https://github.com/dekorateio/dekorate) | GL | Java | |
| [Deploymentizer](https://github.com/InVisionApp/kit-deploymentizer) | | | TODO; |
| [devspace](https://github.com/devspace-cloud/devspace) | | | TODO; |
| [devtron](https://github.com/devtron-labs/devtron) | | | TODO; |
| [Dhall](https://github.com/dhall-lang/dhall-lang) | GSL | Dhall | Related: [dhall-kubernetes](https://github.com/dhall-lang/dhall-kubernetes); |
| [Draft](https://github.com/Azure/draft) | | | TODO; |
| [dxcfg](https://github.com/dxcfg/dxcfg) | GL | JavaScript, TypeScript | Abandoned; |
| [environment-operator](https://github.com/pearsontechnology/environment-operator) | | | TODO; |
| [ERB-Hiera](https://github.com/roobert/erb-hiera) | | | TODO; |
| [fabric8 client](https://github.com/fabric8io/kubernetes-client) | | | TODO; |
| [fabric8-mvn-plugin](https://github.com/fabric8io/fabric8-maven-plugin) | | | TODO; |
| [fabrikate](https://github.com/Microsoft/fabrikate) | | | TODO; |
| [flagger](https://github.com/weaveworks/flagger) | | | TODO; |
| [flekszible](https://github.com/elek/flekszible) | | | TODO; |
| [Flux v1](https://github.com/fluxcd/flux) | DI | | Abandoned; |
| [Flux v2](https://github.com/fluxcd/flux2) | DI | | Related: [Weave GitOps](https://github.com/weaveworks/weave-gitops); |
| [foremast](https://github.com/intuit/foremast) | | | TODO; |
| [Forge](https://github.com/datawire/forge/) | | | TODO; |
| [garden](https://github.com/garden-io/garden) | | | TODO; |
| [Gatekeeper](https://github.com/open-policy-agent/gatekeeper) | MVI | Rego | External data support; |
| [generator-kubegen](https://github.com/sesispla/generator-kubegen) | | | TODO; |
| [gitkube](https://github.com/hasura/gitkube) | | | TODO; |
| [Glasskube](https://github.com/glasskube/glasskube) | DSI | | |
| [habitat](https://github.com/habitat-sh/habitat) | | | TODO; |
| [Helm](https://github.com/helm/helm) | GDSL | Go Template | |
| [helm-app-operator-kit](https://github.com/operator-framework/helm-app-operator-kit) | | | TODO; |
| [Helmfile](https://github.com/helmfile/helmfile) | DL | YAML | |
| [Helmsman](https://github.com/Praqma/helmsman) | DL | TOML | |
| [Helmwave](https://github.com/helmwave/helmwave) | DL | YAML | |
| [hull](https://github.com/vidispine/hull) | | | TODO; |
| [Isopod](https://github.com/cruise-automation/isopod) | GVDL | Starlark | |
| [jk](https://github.com/jkcfg/jk) | GL | JavaScript, TypeScript | Abandoned; |
| [Jsonnet](https://github.com/google/jsonnet) | GML | Jsonnet | Related: [kube-libsonnet](https://github.com/bitnami-labs/kube-libsonnet), [k8s-gen](https://github.com/jsonnet-libs/k8s), [k8s-libsonnet](https://github.com/jsonnet-libs/k8s-libsonnet); |
| [jsPolicy](https://github.com/loft-sh/jspolicy) | MVI | JavaScript, TypeScript | "Controller policies" support; |
| [jx](https://github.com/jenkins-x/jx) | | | TODO; |
| [k-rail](https://github.com/cruise-automation/k-rail) | MVI | any (gRPC) | Abandoned; |
| [k82-icl](https://github.com/archipaorg/k8s-icl) | | | TODO; |
| [k8comp](https://github.com/cststack/k8comp) | GL | ERB (Ruby templating) | Abandoned; |
| [k8s-app-engine](https://github.com/Aptomi/k8s-app-engine) | | | TODO; |
| [k8s-handle](https://github.com/2gis/k8s-handle) | | | TODO; |
| [k8s-kotlin-dsl](https://github.com/fkorotkov/k8s-kotlin-dsl) | | | TODO; |
| [k8sec](https://github.com/dtan4/k8sec) | | | TODO; |
| [k8skonf](https://github.com/konfjs/k8skonf) | GSL | TypeScript | |
| [k8spkg](https://github.com/mgoltzsche/k8spkg) | MDL | | Abandoned; |
| [kabanero-operator](https://github.com/kabanero-io/kabanero-operator) | | | TODO; |
| [kadet](https://github.com/kapicorp/kadet) | GL | Python | |
| [Kapitan](https://github.com/kapicorp/kapitan) | GML | YAML, Jsonnet, Jinja2, Python | |
| [kapp](https://github.com/carvel-dev/kapp) | DL | | |
| [kapp-controller](https://github.com/carvel-dev/kapp-controller) | DI | | |
| [karavel](https://github.com/gree-gorey/karavel) | | | TODO; |
| [Kargo Render](https://github.com/akuity/kargo-render) | GL | YAML | |
| [Kasane](https://github.com/google/kasane) | ML | YAML, Jsonnet | Abandoned; |
| [kb8or](https://github.com/UKHomeOffice/kb8or) | GDL | YAML | Abandoned; |
| [KCL](https://github.com/KusionStack/KCLVM) | GMVSL | KCL | Related: [Run KCL scripts as KRM functions](https://github.com/kcl-lang/krm-kcl); |
| [kdeploy](https://github.com/flexiant/kdeploy) | | | TODO; |
| [Kedge](https://github.com/kedgeproject/kedge) | GDL | YAML | Abandoned; |
| [Keel](https://github.com/keel-hq/keel) | DI | | Updates container image version; |
| [kenv](https://github.com/thisendout/kenv) | ML | YAML | Abandoned; Injects environment variables in Pods; |
| [Keptn](https://github.com/keptn/keptn) | DI | | |
| [kexpand](https://github.com/kopeio/kexpand) | | | TODO; |
| [khelm](https://github.com/mgoltzsche/khelm) | GML | | |
| [Kluctl](https://github.com/kluctl/kluctl) | GDIL | YAML, Jinja2 | |
| [knot8](https://github.com/mkmik/knot8) | | | TODO; |
| [ko](https://github.com/ko-build/ko) | MDL | | Limited to Go applications; |
| [Koki](https://github.com/koki/koki) | | | TODO; |
| [Kompose](https://github.com/kubernetes/kompose) | GL | YAML | |
| [konfd](https://github.com/kelseyhightower/konfd) | GI | Go template | Abandoned; |
| [Konfigurator](https://github.com/stakater/Konfigurator) | | | TODO; |
| [konstellate](https://github.com/containership/konstellate) | | | TODO; |
| [kontemplate](https://github.com/tazjin/kontemplate) | | | TODO; |
| [Kosko](https://github.com/tommy351/kosko) | GVL | JavaScript, TypeScript | |
| [KOTS](https://github.com/replicatedhq/kots) | DSIL | | |
| [kploy](https://github.com/kubernauts/kploy) | | | TODO; |
| [KPM](https://github.com/coreos/kpm) | | | TODO; |
| [kpt](https://github.com/GoogleContainerTools/kpt) | GMVDSL | YAML, Go, Typescript, Starlark, any (w/o SDK) | |
| [kr8](https://github.com/apptio/kr8) | GL | Jsonnet | |
| [kraan](https://github.com/fidelity/kraan) | DI | | |
| [krane](https://github.com/Shopify/krane) | GDL | ERB (Ruby templating) | |
| [Kratix](https://github.com/syntasso/kratix) | GDI | | |
| [kro](https://github.com/kro-run/kro) | | | TODO; |
| [ksonnet](https://github.com/ksonnet/ksonnet) | GVDSL | Jsonnet | Abandoned; Related: [ksonnet-lib](https://github.com/ksonnet/ksonnet-lib); |
| [ktmpl](https://github.com/jimmycuadra/ktmpl) | GL | | Abandoned; |
| [kube-applier](https://github.com/box/kube-applier) | DI | | Abandoned; |
| [kubeapply](https://github.com/segmentio/kubeapply) | GDL | YAML, Starlark | Related: [Terraform provider](https://github.com/segmentio/terraform-provider-kubeapply); |
| [kubecfg](https://github.com/kubecfg/kubecfg) | GDL | Jsonnet | |
| [Kubeconform](https://github.com/yannh/kubeconform) | VL | | |
| [kubectl](https://github.com/kubernetes/kubectl) | GVDL | | |
| [kubed](https://github.com/appscode/kubed) | | | TODO; |
| [kubegen](https://github.com/errordeveloper/kubegen) | GL | YAML, JSON, HCL | Abandoned; |
| [Kubehiera](https://gitlab.com/msvechla/kubehiera) | | | TODO; |
| [KubeLinter](https://github.com/stackrox/kube-linter) | VL | YAML | |
| [kubenix](https://github.com/hall/kubenix) | GL | Nix | Related: [GTrunSec/kubenix](https://github.com/GTrunSec/kubenix), [blaggacao/kubenix](https://github.com/blaggacao/kubenix), [xtruder/kubenix](https://github.com/xtruder/kubenix); |
| [kuberig](https://github.com/teyckmans/kuberig) | | | TODO; |
| [kubernetes](https://github.com/jkcfg/kubernetes) | | | TODO; |
| [kubernetes-deploy](https://github.com/Shopify/kubernetes-deploy) | | | TODO; |
| [Kubes](https://github.com/boltops-tools/kubes) | GDL | DSL | |
| [Kubescape](https://github.com/kubescape/kubescape) | VIL | Rego | External data support; |
| [Kubeval](https://github.com/instrumenta/kubeval) | VL | | Abandoned; |
| [KubeVela](https://github.com/kubevela/kubevela) | GDIL | | |
| [Kubewarden](https://github.com/kubewarden/kubewarden-controller) | MVI | any (WebAssembly) | |
| [kubor](https://github.com/levertonai/kubor) | | | TODO; |
| [kuby](https://github.com/smartive/kuby) | | | TODO; |
| [kuku](https://github.com/xarg/kuku) | | | TODO; |
| [Kusion](https://github.com/KusionStack/kusion) | GVDL | KCL | |
| [kustomize](https://github.com/kubernetes-sigs/kustomize) | ML | YAML | |
| [kustomizer](https://github.com/stefanprodan/kustomizer) | GMSL | | |
| [kvert](https://github.com/mcorbin/kvert) | GL | edn (Clojure) | Abandoned; |
| [KY](https://github.com/stellaservice/ky) | | | TODO; |
| [Kyverno](https://github.com/kyverno/kyverno) | GMVIL | YAML, CEL | External data support; |
| [landscaper](https://github.com/Eneco/landscaper) | | | TODO; |
| [Lingon](https://github.com/volvo-cars/lingon) | GL | Go | Abandoned; |
| [lostromos](https://github.com/lostromos/lostromos) | | | TODO; |
| [Meshery](https://github.com/meshery/meshery) | GDI | YAML | |
| [Metaparticle](https://github.com/metaparticle-io/package) | | | TODO; |
| [Microconfig](https://github.com/microconfig/microconfig) | GL | | |
| [mimic](https://github.com/bwplotka/mimic) | GL | Go | |
| [Monokle](https://github.com/kubeshop/monokle) | GVDL | | |
| [mortar](https://github.com/kontena/mortar) | | | TODO; |
| [NAML](https://github.com/kris-nova/naml) | GDL | Go | |
| [Nickel](https://github.com/tweag/nickel) | GVL | Nickel | |
| [Nulecule](https://github.com/projectatomic/nulecule) | | | TODO; |
| [OpenCompose](https://github.com/redhat-developer/opencompose) | GL | | Abandoned; |
| [OpenShift templates](https://docs.openshift.org/latest/dev_guide/templates.html) | | | TODO; |
| [pack](https://github.com/kubepack/pack) | | | TODO; |
| [PipeCD](https://github.com/pipe-cd/pipecd) | DI | | |
| [pipeline](https://github.com/tektoncd/pipeline) | | | TODO; |
| [Pkl](https://github.com/apple/pkl) | GSL | Pkl | Related: [Kubernetes Pkl templates](https://github.com/apple/pkl-k8s), [Kubernetes Pkl examples](https://github.com/apple/pkl-k8s-examples), [Other Pkl (Kubernetes) packages](https://pkl-lang.org/package-docs/); |
| [Podex](https://github.com/kubernetes/contrib/tree/master/podex) | | | TODO; |
| [Polaris](https://github.com/FairwindsOps/polaris) | MVIL | YAML, JSON Schema | |
| [Project Syn](https://github.com/projectsyn) | GMDSIL | YAML, Jsonnet, Jinja2, Python | Related: [Commodore](https://github.com/projectsyn/commodore), [Lieutenant API](https://github.com/projectsyn/lieutenant-api), [Lieutenant Operator](https://github.com/projectsyn/lieutenant-operator), [Steward](https://github.com/projectsyn/steward); |
| [Psykube](https://github.com/psykube/psykube) | GDL | YAML | Abandoned; |
| [Puccini](https://github.com/tliron/puccini) | | | TODO; |
| [Pulumi](https://github.com/pulumi/pulumi) | GDL | JavaScript, TypeScript, Python, Go, C#, Visual Basic, F#, Java, YAML | Related: [Kubernetes provider](https://github.com/pulumi/pulumi-kubernetes), [Operator](https://github.com/pulumi/pulumi-kubernetes-operator); |
| [Puppet](https://forge.puppet.com/garethr/kubernetes/readme) | | | TODO; |
| [puppetlabs-helm](https://github.com/puppetlabs/puppetlabs-helm) | | | TODO; |
| [qbec](https://github.com/splunk/qbec) | | | TODO; |
| [Radius](https://github.com/radius-project/radius) | DI | Bicep | |
| [Razee](https://github.com/razee-io/Razee) | GDI | | Abandoned; |
| [Rio](https://github.com/rancher/rio) | | | TODO; |
| [rok8s-scripts](https://github.com/reactiveops/rok8s-scripts) | | | TODO; |
| [Rubiks](https://github.com/olx-global/rubiks) | | | TODO; |
| [Score](https://github.com/score-spec/spec) | GL | YAML | Related: [Helm integration](https://github.com/score-spec/score-helm); |
| [Ship](https://github.com/replicatedhq/ship) | DL | | Abandoned; |
| [shipcat](https://github.com/clux/shipcat) | GDL | YAML | Abandoned; |
| [Shipit](https://github.com/Shopify/shipit-engine) | DL | ERB (Ruby templating) | |
| [shipper](https://github.com/bookingcom/shipper) | | | TODO; |
| [Short](https://github.com/koki/short) | | | TODO; |
| [skaffold](https://github.com/GoogleContainerTools/skaffold) | | | TODO; |
| [Skipper](https://github.com/concur/skipper) | | | TODO; |
| [Skycfg](https://github.com/stripe/skycfg) | GL | Starlark, Go | |
| [Skylark](https://github.com/google/skylark) | | | TODO; |
| [Smith](https://github.com/atlassian/smith) | | | TODO; |
| [specctl](https://github.com/awslabs/specctl) | GL | YAML | Supports generating manifests from docker compose files, and ECS Fargate task and service definitions; |
| [Spread](https://github.com/redspread/spread) | | | TODO; |
| [Srvexpand](https://github.com/hortonworks/kubernetes-yarn/tree/master/contrib/srvexpand) | | | TODO; |
| [stackset-controller](https://github.com/zalando-incubator/stackset-controller) | | | TODO; |
| [sugarkube](https://github.com/sugarkube/sugarkube) | | | TODO; |
| [Tanka](https://github.com/grafana/tanka) | GDSL | Jsonnet | |
| [Terraform](https://github.com/hashicorp/terraform) | GDL | HCL | Related: [Kubernetes provider](https://github.com/terraform-providers/terraform-provider-kubernetes), [k8s provider](https://github.com/banzaicloud/terraform-provider-k8s), [Kustomize provider](https://github.com/kbst/terraform-provider-kustomize), [Helm provider](https://github.com/terraform-providers/terraform-provider-helm); |
| [Tilt](https://github.com/tilt-dev/tilt) | GMDL | Starlark | |
| [Timoni](https://github.com/stefanprodan/timoni) | GDSL | CUE | |
| [Tye](https://github.com/dotnet/tye) | GDL | | Limited to .NET applications; |
| [Untrak](https://github.com/yanc0/untrak) | L | YAML | Abandoned; Garbage collect untracked resources; |
| [ValidatingAdmissionPolicy](https://kubernetes.io/docs/reference/access-authn-authz/validating-admission-policy) | VI | CEL | |
| [werf](https://github.com/werf/werf) | GDSL | YAML | |
| [YAMLScript](https://github.com/yaml/yamlscript) | GL | YAMLScript | |
| [ytt](https://github.com/carvel-dev/ytt) | GMVL | YAML, Starlark | |

## Secret Management

* **In cluster (I)**: Runs in cluster.
* **Local (L)**: Runs locally.
* **Application (A)**: Runs side-by-side with the application.

| | Features | Notes |
|-|-|-|
| [agebox](https://github.com/slok/agebox) | L | |
| [argocd-vault-plugin](https://github.com/argoproj-labs/argocd-vault-plugin) | | TODO; |
| [argocd-vault-replacer](https://github.com/crumbhole/argocd-vault-replacer) | | TODO; |
| [aws-secret-operator](https://github.com/mumoshu/aws-secret-operator) | I | |
| [Azure Key Vault to Kubernetes (akv2k8s)](https://github.com/SparebankenVest/azure-key-vault-to-kubernetes) | IA | |
| [BlackBox](https://github.com/StackExchange/blackbox) | L | |
| [conjur-authn-k8s-client](https://github.com/cyberark/conjur-authn-k8s-client) | A | |
| [ejson](https://github.com/Shopify/ejson) | L | Related: [ejson2env](https://github.com/Shopify/ejson2env); |
| [External Secrets](https://github.com/external-secrets/external-secrets) | I | |
| [external-secret](https://github.com/imranismail/external-secret) | | TODO; |
| [git-crypt](https://github.com/AGWA/git-crypt) | L | |
| [git-encrypt](https://github.com/shadowhand/git-encrypt) | L | Abandoned; |
| [git-secret](https://github.com/sobolevn/git-secret) | L | |
| [helm-secrets](https://github.com/jkroepke/helm-secrets) | L | |
| [helm-ssm](https://github.com/totango/helm-ssm) | L | Abandoned; |
| [Hiera eyaml](https://github.com/voxpupuli/hiera-eyaml) | L | |
| [Infisical Secrets Operator](https://github.com/Infisical/infisical/tree/main/k8-operator) | I | Related: [Infisical](https://github.com/Infisical/infisical); |
| [Kamus](https://github.com/Soluto/kamus) | IA | |
| [kamus](https://github.com/soluto/kamus) | | TODO; |
| [Keyringer](https://github.com/quarkslab/keyringer) | L | Abandoned; |
| [Kube-secret-syncer](https://github.com/contentful-labs/kube-secret-syncer) | I | |
| [Kustomize secretGeneratorPlugin](https://github.com/kubernetes-sigs/kustomize/blob/ab519fdc13ded9875e42d70ac8a5b1b9023a2dbb/examples/secretGeneratorPlugin.md) | | TODO; |
| [kustomize-sops](https://github.com/viaduct-ai/kustomize-sops) | | TODO; |
| [Murmur](https://github.com/busser/murmur) | A | |
| [pass](https://www.passwordstore.org) | L | |
| [Piggy](https://github.com/KongZ/piggy) | A | |
| [Rot](https://github.com/candiddev/rot) | L | |
| [Sealed Secrets](https://github.com/bitnami-labs/sealed-secrets) | I | |
| [Secrets Store CSI Driver](https://github.com/kubernetes-sigs/secrets-store-csi-driver) | I | Related: [AWS Secrets Manager and Systems Manager Parameter Store provider](https://github.com/aws/secrets-store-csi-driver-provider-aws), [Azure Key Vault provider](https://github.com/Azure/secrets-store-csi-driver-provider-azure), [Google Secret Manager provider](https://github.com/GoogleCloudPlatform/secrets-store-csi-driver-provider-gcp), [HashiCorp Vault provider](https://github.com/hashicorp/vault-csi-provider), [CyberArk Conjur provider (WIP)](https://github.com/cyberark/conjur/pull/2836); |
| [secure_yaml](https://github.com/huwtl/secure_yaml) | L | Abandoned; |
| [SOPS](https://github.com/getsops/sops) | L | Related: [KSOPS (kustomize KRM exec plugin)](https://github.com/viaduct-ai/kustomize-sops), [Helm Sops](https://github.com/camptocamp/helm-sops), [SOPS secrets operator](https://github.com/isindir/sops-secrets-operator), [SOPS Operator](https://github.com/craftypath/sops-operator); |
| [sops-operator](https://github.com/craftypath/sops-operator) | | TODO; |
| [sops-secrets-operator](https://github.com/isindir/sops-secrets-operator) | | TODO; |
| [Teller](https://github.com/tellerops/teller) | L | Related: [Helm-teller](https://github.com/tellerops/helm-teller); |
| [Tesoro](https://github.com/kapicorp/tesoro) | I | Abandoned; |
| [transcrypt](https://github.com/elasticdog/transcrypt) | L | |
| [vals](https://github.com/helmfile/vals) | A | |
| [Vault Secrets Operator (HashiCorp)](https://github.com/hashicorp/vault-secrets-operator) | I | |
| [Vault Secrets Operator (Rico Berger)](https://github.com/ricoberger/vault-secrets-operator) | I | |
| [vault-k8s](https://github.com/hashicorp/vault-k8s) | A | |
| [vault-secrets-webhook](https://github.com/bank-vaults/vault-secrets-webhook) | | TODO; |
| [yaml-crypt](https://github.com/autoapply/yaml-crypt) | L | |

## Other Tools

| | Notes |
|-|-|
| [Argo Rollouts](https://github.com/argoproj/argo-rollouts) | Controller and set of CRDs which provide progressive delivery features; |
| [Kargo](https://github.com/akuity/kargo) | Integrates with GitOps tools to promote changes across environments; |

## Sources

* [Kubernetes application management tools spreadsheet](https://docs.google.com/spreadsheets/d/1FCgqz1Ci7_VCz_wdh8vBitZ3giBtac_H8SBw4uxnrsE/), retrieved 2024-11-18
* [Kubetools](https://collabnix.github.io/kubetools/), retrieved 2024-11-18
* [Awesome Kubernetes Resources](https://github.com/tomhuang12/awesome-k8s-resources), retrieved 2024-11-18
* [Awesome Kubernetes](https://github.com/run-x/awesome-kubernetes), retrieved 2024-11-18
* [Awesome K8s](https://github.com/pditommaso/awesome-k8s), retrieved 2024-11-18
