# Awesome Kubernetes Configuration Management

This list contains
221 configuration management tools,
51 secret management tools,
and 8 related tools.
Contributions are welcome.

Note that tools marked unreviewed
may be out of scope for this repository.

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
| [Acorn](https://github.com/acorn-io/runtime) | DI | | |
| [Ansible](https://github.com/ansible/ansible) | GDL | YAML, Jinja2, Python (for plugins) | Related: [Kubernetes Collection](https://galaxy.ansible.com/kubernetes/core); |
| [apollo](https://github.com/logzio/apollo) | | | Unreviewed; |
| [AppController](https://github.com/Mirantis/k8s-AppController) | DI | | Abandoned; |
| [Archipa](https://github.com/archipaorg/archipa) | | | Unreviewed; |
| [Argo CD](https://github.com/argoproj/argo-cd) | DI | | Related: [Argo CD Diff Preview](https://github.com/dag-andersen/argocd-diff-preview); |
| [armada](https://github.com/att-comdev/armada) | | | Unreviewed; |
| [autoapply](https://github.com/autoapply/autoapply) | DI | YAML | |
| [Bazel](https://github.com/bazelbuild/bazel) | DL | Starlark | Related: [rules_gitops](https://github.com/adobe/rules_gitops), [rules_k8s](https://github.com/bazelbuild/rules_k8s); |
| [Bicep](https://github.com/Azure/bicep) | GDSL | Bicep | Related: [Kubernetes provider](https://github.com/MicrosoftDocs/azure-docs/blob/3d1cfaa248b92e006aa2a3101b958f5a628718a9/articles/azure-resource-manager/bicep/bicep-extensibility-kubernetes-provider.md), [Kubernetes type definitions](https://github.com/Azure/bicep-types-k8s); |
| [Broadway](https://github.com/namely/broadway) | | | Unreviewed; |
| [CDK for Terraform](https://github.com/hashicorp/terraform-cdk) | GDSL | TypeScript, Python, Java, C#, Go | See Terraform; |
| [cdk8s](https://github.com/cdk8s-team/cdk8s) | GSL | TypeScript, Python, Java, Go | Related: [cdk8s+](https://github.com/cdk8s-team/cdk8s-plus); |
| [Chartify](https://github.com/appscode/chartify) | | | Unreviewed; |
| [Checkov](https://github.com/bridgecrewio/checkov) | VIL | YAML, Python | |
| [clusterlint](https://github.com/digitalocean/clusterlint) | VL | | |
| [compose2kube](https://github.com/kelseyhightower/compose2kube) | GL | YAML | Abandoned; |
| [Config Sync](https://github.com/GoogleContainerTools/kpt-config-sync) | DI | | |
| [config-lint](https://github.com/stelligent/config-lint) | VL | | Abandoned; |
| [configula](https://github.com/brendandburns/configula) | | | Unreviewed; |
| [Conftest](https://github.com/open-policy-agent/conftest) | VL | Rego | Related: [Kubernetes policies](https://github.com/instrumenta/policies/tree/9eafe392bbec10f34d0b46fafd16b3e919aae271/kubernetes); |
| [Copper](https://github.com/cloud66-oss/copper) | VL | JavaScript | Abandoned; |
| [Crossplane](https://github.com/crossplane/crossplane) | GDI | | Related: [Ansible provider](https://github.com/crossplane-contrib/provider-ansible), [Argo CD provider](https://github.com/crossplane-contrib/provider-argocd), [Helm provider](https://github.com/crossplane-contrib/provider-helm), [Kubernetes provider](https://github.com/crossplane-contrib/provider-kubernetes), [Terraform provider](https://github.com/upbound/provider-terraform); |
| [CUE](https://github.com/cue-lang/cue) | GVSL | CUE | |
| [Cuegen](https://github.com/noris-network/cuegen) | GVSL | CUE | |
| [Cyclops](https://github.com/cyclops-ui/cyclops) | GDI | graphical UI | |
| [Datree](https://github.com/datreeio/datree) | VIL | JSON schema, Rego | Abandoned; |
| [Deis workflow](https://github.com/deis/workflow) | | | Unreviewed; |
| [dekorate](https://github.com/dekorateio/dekorate) | GL | Java | |
| [Deploymentizer](https://github.com/InVisionApp/kit-deploymentizer) | | | Unreviewed; |
| [devspace](https://github.com/devspace-cloud/devspace) | | | Unreviewed; |
| [devtron](https://github.com/devtron-labs/devtron) | | | Unreviewed; |
| [Dhall](https://github.com/dhall-lang/dhall-lang) | GSL | Dhall | Related: [dhall-kubernetes](https://github.com/dhall-lang/dhall-kubernetes); |
| [Draft](https://github.com/Azure/draft) | | | Unreviewed; |
| [dxcfg](https://github.com/dxcfg/dxcfg) | GL | JavaScript, TypeScript | Abandoned; |
| [environment-operator](https://github.com/pearsontechnology/environment-operator) | | | Unreviewed; |
| [ERB-Hiera](https://github.com/roobert/erb-hiera) | | | Unreviewed; |
| [fabric8 client](https://github.com/fabric8io/kubernetes-client) | | | Unreviewed; |
| [fabric8-mvn-plugin](https://github.com/fabric8io/fabric8-maven-plugin) | | | Unreviewed; |
| [fabrikate](https://github.com/Microsoft/fabrikate) | | | Unreviewed; |
| [flagger](https://github.com/weaveworks/flagger) | | | Unreviewed; |
| [flekszible](https://github.com/elek/flekszible) | | | Unreviewed; |
| [Flux v1](https://github.com/fluxcd/flux) | DI | | Abandoned; |
| [Flux v2](https://github.com/fluxcd/flux2) | DI | | Related: [Weave GitOps](https://github.com/weaveworks/weave-gitops); |
| [foremast](https://github.com/intuit/foremast) | | | Unreviewed; |
| [Forge](https://github.com/datawire/forge/) | | | Unreviewed; |
| [Gatekeeper](https://github.com/open-policy-agent/gatekeeper) | MVI | Rego | External data support; |
| [generator-kubegen](https://github.com/sesispla/generator-kubegen) | | | Unreviewed; |
| [Gimlet](https://github.com/gimlet-io/gimlet) | DI | | Abandoned; |
| [gitkube](https://github.com/hasura/gitkube) | | | Unreviewed; |
| [GitOps Promoter](https://github.com/argoproj-labs/gitops-promoter) | PI | | Integrates with GitOps tools to promote changes across environments; |
| [Glasskube](https://github.com/glasskube/glasskube) | DSI | | |
| [habitat](https://github.com/habitat-sh/habitat) | | | Unreviewed; |
| [Helm](https://github.com/helm/helm) | GDSL | Go Template | |
| [helm-app-operator-kit](https://github.com/operator-framework/helm-app-operator-kit) | | | Unreviewed; |
| [Helmfile](https://github.com/helmfile/helmfile) | DL | YAML | Related: [chartify](https://github.com/helmfile/chartify); |
| [Helmsman](https://github.com/Praqma/helmsman) | DL | TOML | |
| [Helmwave](https://github.com/helmwave/helmwave) | DL | YAML | |
| [HelmYS](https://github.com/kubeys/helmys) | GDSL | YAMLScript | |
| [hull](https://github.com/vidispine/hull) | | | Unreviewed; |
| [Isopod](https://github.com/cruise-automation/isopod) | GVDL | Starlark | Abandoned; |
| [jk](https://github.com/jkcfg/jk) | GL | JavaScript, TypeScript | Abandoned; Related: [kubernetes module](https://github.com/jkcfg/kubernetes); |
| [Jsonnet](https://github.com/google/jsonnet) | GML | Jsonnet | Related: [kube-libsonnet](https://github.com/bitnami-labs/kube-libsonnet), [k8s-gen](https://github.com/jsonnet-libs/k8s), [k8s-libsonnet](https://github.com/jsonnet-libs/k8s-libsonnet); |
| [jsPolicy](https://github.com/loft-sh/jspolicy) | MVI | JavaScript, TypeScript | "Controller policies" support; |
| [k-rail](https://github.com/cruise-automation/k-rail) | MVI | any (gRPC) | Abandoned; |
| [k82-icl](https://github.com/archipaorg/k8s-icl) | | | Unreviewed; |
| [k8comp](https://github.com/cststack/k8comp) | GL | ERB (Ruby templating) | Abandoned; |
| [k8s-app-engine](https://github.com/Aptomi/k8s-app-engine) | | | Unreviewed; |
| [k8s-handle](https://github.com/2gis/k8s-handle) | GDL | Python, Jinja2 | |
| [k8s-kotlin-dsl](https://github.com/fkorotkov/k8s-kotlin-dsl) | | | Unreviewed; |
| [k8sec](https://github.com/dtan4/k8sec) | | | Unreviewed; |
| [k8skonf](https://github.com/konfjs/k8skonf) | GSL | TypeScript | |
| [k8spkg](https://github.com/mgoltzsche/k8spkg) | MDL | | Abandoned; |
| [kadet](https://github.com/kapicorp/kadet) | GL | Python | |
| [Kapitan](https://github.com/kapicorp/kapitan) | GML | YAML, Jsonnet, Jinja2, Python | |
| [kapp](https://github.com/carvel-dev/kapp) | DL | | |
| [kapp-controller](https://github.com/carvel-dev/kapp-controller) | DI | | |
| [karavel](https://github.com/gree-gorey/karavel) | | | Unreviewed; |
| [Kargo](https://github.com/akuity/kargo) | PI | | Integrates with GitOps tools to promote changes across environments; |
| [Kargo Render](https://github.com/akuity/kargo-render) | GL | YAML | Abandoned; |
| [Kasane](https://github.com/google/kasane) | ML | YAML, Jsonnet | Abandoned; |
| [kb8or](https://github.com/UKHomeOffice/kb8or) | GDL | YAML | Abandoned; |
| [KCL](https://github.com/KusionStack/KCLVM) | GMVSL | KCL | Related: [Run KCL scripts as KRM functions](https://github.com/kcl-lang/krm-kcl); |
| [kdeploy](https://github.com/flexiant/kdeploy) | | | Unreviewed; |
| [KDL](https://github.com/kdl-org/kdl) | GL | KDL | |
| [Kedge](https://github.com/kedgeproject/kedge) | GDL | YAML | Abandoned; |
| [Keel](https://github.com/keel-hq/keel) | DI | | Updates container image version; |
| [kenv](https://github.com/thisendout/kenv) | ML | YAML | Abandoned; Injects environment variables in Pods; |
| [Keptn](https://github.com/keptn/keptn) | DI | | |
| [kexpand](https://github.com/kopeio/kexpand) | GL | | Abandoned; |
| [khelm](https://github.com/mgoltzsche/khelm) | GML | | |
| [kinitiras](https://github.com/k-cloud-labs/kinitiras) | MVI | CUE, YAML | Abandoned; Related: [Run mutation policies locally](https://github.com/k-cloud-labs/pidalio); |
| [Kluctl](https://github.com/kluctl/kluctl) | GDIL | YAML, Jinja2 | |
| [knot8](https://github.com/mkmik/knot8) | | | Unreviewed; |
| [ko](https://github.com/ko-build/ko) | MDL | | Limited to Go applications; |
| [Koki](https://github.com/koki/koki) | | | Unreviewed; |
| [Kompose](https://github.com/kubernetes/kompose) | GL | YAML | |
| [konfd](https://github.com/kelseyhightower/konfd) | GI | Go template | Abandoned; |
| [Konfigurator](https://github.com/stakater/Konfigurator) | | | Unreviewed; |
| [konstellate](https://github.com/containership/konstellate) | | | Unreviewed; |
| [Kontemplate](https://github.com/tazjin/kontemplate) | DL | | |
| [Kosko](https://github.com/tommy351/kosko) | GVL | JavaScript, TypeScript | |
| [KOTS](https://github.com/replicatedhq/kots) | DSIL | | |
| [kploy](https://github.com/kubernauts/kploy) | | | Unreviewed; |
| [KPM](https://github.com/coreos/kpm) | | | Unreviewed; |
| [kpt](https://github.com/GoogleContainerTools/kpt) | GMVDSL | YAML, Go, Typescript, Starlark, any (w/o SDK) | |
| [kr8](https://github.com/apptio/kr8) | GL | Jsonnet | |
| [kraan](https://github.com/fidelity/kraan) | DI | | |
| [krane](https://github.com/Shopify/krane) | GDL | ERB (Ruby templating) | |
| [Kratix](https://github.com/syntasso/kratix) | GDI | | |
| [kreate-kube](https://github.com/MarkHooijkaas/kreate-kube) | GL | YAML | |
| [KSON](https://github.com/kson-org/kson) | GL | KSON | |
| [ksonnet](https://github.com/ksonnet/ksonnet) | GVDSL | Jsonnet | Abandoned; Related: [ksonnet-lib](https://github.com/ksonnet/ksonnet-lib); |
| [ktmpl](https://github.com/jimmycuadra/ktmpl) | GL | | Abandoned; |
| [kube-applier](https://github.com/box/kube-applier) | DI | | Abandoned; |
| [kube-score](https://github.com/zegl/kube-score) | VL | | |
| [kubeapply](https://github.com/segmentio/kubeapply) | GDL | YAML, Starlark | Related: [Terraform provider](https://github.com/segmentio/terraform-provider-kubeapply); |
| [Kubeapps](https://github.com/vmware-tanzu/kubeapps) | DI | | Abandoned; |
| [kubecfg](https://github.com/kubecfg/kubecfg) | GDL | Jsonnet | |
| [kubechecks](https://github.com/zapier/kubechecks) | VI | | |
| [Kubeconform](https://github.com/yannh/kubeconform) | VL | | |
| [kubectl](https://github.com/kubernetes/kubectl) | GVDL | | |
| [kubectl-neat](https://github.com/itaysk/kubectl-neat) | ML | | |
| [kubed](https://github.com/appscode/kubed) | | | Unreviewed; |
| [kubegen](https://github.com/errordeveloper/kubegen) | GL | YAML, JSON, HCL | Abandoned; |
| [Kubehiera](https://gitlab.com/msvechla/kubehiera) | | | Unreviewed; |
| [KubeLinter](https://github.com/stackrox/kube-linter) | VL | YAML | |
| [kubenix](https://github.com/hall/kubenix) | GL | Nix | Related: [GTrunSec/kubenix](https://github.com/GTrunSec/kubenix), [blaggacao/kubenix](https://github.com/blaggacao/kubenix), [xtruder/kubenix](https://github.com/xtruder/kubenix); |
| [kuberig](https://github.com/teyckmans/kuberig) | | | Unreviewed; |
| [kubernetes-deploy](https://github.com/Shopify/kubernetes-deploy) | | | Unreviewed; |
| [Kubes](https://github.com/boltops-tools/kubes) | GDL | DSL | |
| [Kubescape](https://github.com/kubescape/kubescape) | VIL | Rego | External data support; |
| [Kubeval](https://github.com/instrumenta/kubeval) | VL | | Abandoned; |
| [KubeVela](https://github.com/kubevela/kubevela) | GDIL | | |
| [Kubevious](https://github.com/kubevious/kubevious) | VL | DSL | |
| [Kubewarden](https://github.com/kubewarden/kubewarden-controller) | MVI | any (WebAssembly) | |
| [KuboCD](https://github.com/kubocd/kubocd) | GSIL | | |
| [kubor](https://github.com/levertonai/kubor) | | | Unreviewed; |
| [kuby](https://github.com/smartive/kuby) | | | Unreviewed; |
| [kuku](https://github.com/xarg/kuku) | | | Unreviewed; |
| [Kusion](https://github.com/KusionStack/kusion) | GVDL | KCL | |
| [kustomize](https://github.com/kubernetes-sigs/kustomize) | ML | YAML | |
| [kustomizer](https://github.com/stefanprodan/kustomizer) | GMSL | | |
| [kvert](https://github.com/mcorbin/kvert) | GL | edn (Clojure) | Abandoned; |
| [KY](https://github.com/stellaservice/ky) | | | Unreviewed; |
| [Kyverno](https://github.com/kyverno/kyverno) | GMVIL | YAML, CEL | External data support; |
| [landscaper](https://github.com/Eneco/landscaper) | | | Unreviewed; |
| [Lingon](https://github.com/volvo-cars/lingon) | GL | Go | Abandoned; |
| [lostromos](https://github.com/lostromos/lostromos) | | | Unreviewed; |
| [MAML](https://github.com/maml-dev/maml) | GL | MAML | |
| [Marvin](https://github.com/undistro/marvin) | VL | CEL | |
| [Meshery](https://github.com/meshery/meshery) | GDI | YAML | |
| [Metaparticle](https://github.com/metaparticle-io/package) | | | Unreviewed; |
| [Microconfig](https://github.com/microconfig/microconfig) | GL | | |
| [mimic](https://github.com/bwplotka/mimic) | GL | Go | |
| [Monokle](https://github.com/kubeshop/monokle) | GVDL | | |
| [mortar](https://github.com/kontena/mortar) | | | Unreviewed; |
| [NAML](https://github.com/kris-nova/naml) | GDL | Go | |
| [Nelm](https://github.com/werf/nelm) | GDSL | Go Template | Not yet extracted from werf as a standalone CLI; |
| [Nickel](https://github.com/tweag/nickel) | GMVL | Nickel | Related: [nickel-kubernetes](https://github.com/tweag/nickel-kubernetes); |
| [Nixidy](https://github.com/arnarg/nixidy) | GVL | Nix | |
| [Nulecule](https://github.com/projectatomic/nulecule) | | | Unreviewed; |
| [OpenCompose](https://github.com/redhat-developer/opencompose) | GL | | Abandoned; |
| [OpenRewrite](https://github.com/openrewrite/rewrite) | MVL | | |
| [OpenShift templates](https://docs.openshift.org/latest/dev_guide/templates.html) | | | Unreviewed; |
| [OpenTofu](https://github.com/opentofu/opentofu) | GDSL | HCL | See Terraform; |
| [pack](https://github.com/kubepack/pack) | | | Unreviewed; |
| [PipeCD](https://github.com/pipe-cd/pipecd) | DI | | |
| [pipeline](https://github.com/tektoncd/pipeline) | | | Unreviewed; |
| [Pkl](https://github.com/apple/pkl) | GSL | Pkl | Related: [Kubernetes Pkl templates](https://github.com/apple/pkl-k8s), [Kubernetes Pkl examples](https://github.com/apple/pkl-k8s-examples), [Other Pkl (Kubernetes) packages](https://pkl-lang.org/package-docs/); |
| [Pluto](https://github.com/FairwindsOps/pluto) | VL | | |
| [Podex](https://github.com/kubernetes/contrib/tree/master/podex) | | | Unreviewed; |
| [Polaris](https://github.com/FairwindsOps/polaris) | MVIL | YAML, JSON Schema | |
| [Popeye](https://github.com/derailed/popeye) | VL | | |
| [Project Syn](https://github.com/projectsyn) | GMDSIL | YAML, Jsonnet, Jinja2, Python | Related: [Commodore](https://github.com/projectsyn/commodore), [Lieutenant API](https://github.com/projectsyn/lieutenant-api), [Lieutenant Operator](https://github.com/projectsyn/lieutenant-operator), [Steward](https://github.com/projectsyn/steward); |
| [Psykube](https://github.com/psykube/psykube) | GDL | YAML | Abandoned; |
| [Puccini](https://github.com/tliron/puccini) | | | Unreviewed; |
| [Pulumi](https://github.com/pulumi/pulumi) | GDL | JavaScript, TypeScript, Python, Go, C#, Visual Basic, F#, Java, YAML | Related: [Kubernetes provider](https://github.com/pulumi/pulumi-kubernetes), [Operator](https://github.com/pulumi/pulumi-kubernetes-operator); |
| [Puppet](https://forge.puppet.com/garethr/kubernetes/readme) | | | Unreviewed; |
| [puppetlabs-helm](https://github.com/puppetlabs/puppetlabs-helm) | | | Unreviewed; |
| [qbec](https://github.com/splunk/qbec) | | | Unreviewed; |
| [Radius](https://github.com/radius-project/radius) | DI | Bicep | |
| [Razee](https://github.com/razee-io/Razee) | GDI | | Abandoned; |
| [RCL](https://github.com/ruuda/rcl) | GL | RCL | |
| [Rio](https://github.com/rancher/rio) | | | Unreviewed; |
| [rok8s-scripts](https://github.com/reactiveops/rok8s-scripts) | DL | | |
| [Rubiks](https://github.com/olx-global/rubiks) | | | Unreviewed; |
| [Score](https://github.com/score-spec/spec) | GL | YAML | Related: [Helm integration](https://github.com/score-spec/score-helm); |
| [SDLang](https://github.com/dlang-community/SDLang-D) | GL | SDLang | |
| [Ship](https://github.com/replicatedhq/ship) | DL | | Abandoned; |
| [shipcat](https://github.com/clux/shipcat) | GDL | YAML | Abandoned; |
| [Shipit](https://github.com/Shopify/shipit-engine) | DL | ERB (Ruby templating) | |
| [shipper](https://github.com/bookingcom/shipper) | | | Unreviewed; |
| [Short](https://github.com/koki/short) | | | Unreviewed; |
| [skaffold](https://github.com/GoogleContainerTools/skaffold) | | | Unreviewed; |
| [Skipper](https://github.com/concur/skipper) | | | Unreviewed; |
| [Skycfg](https://github.com/stripe/skycfg) | GL | Starlark, Go | |
| [Skylark](https://github.com/google/skylark) | | | Unreviewed; |
| [Smith](https://github.com/atlassian/smith) | | | Unreviewed; |
| [specctl](https://github.com/awslabs/specctl) | GL | YAML | Supports generating manifests from docker compose files, and ECS Fargate task and service definitions; |
| [Spread](https://github.com/redspread/spread) | | | Unreviewed; |
| [Srvexpand](https://github.com/hortonworks/kubernetes-yarn/tree/master/contrib/srvexpand) | | | Unreviewed; |
| [StackSet](https://github.com/zalando-incubator/stackset-controller) | | | Unreviewed; |
| [sugarkube](https://github.com/sugarkube/sugarkube) | | | Unreviewed; |
| [Sveltos](https://github.com/projectsveltos/addon-controller) | DI | | |
| [Tanka](https://github.com/grafana/tanka) | GDSL | Jsonnet | |
| [Telefonistka](https://github.com/commercetools/telefonistka) | PL | YAML | |
| [Terraform](https://github.com/hashicorp/terraform) | GDSL | HCL | Related: [Kubernetes provider](https://github.com/terraform-providers/terraform-provider-kubernetes), [k8s provider](https://github.com/banzaicloud/terraform-provider-k8s), [Kustomize provider](https://github.com/kbst/terraform-provider-kustomize), [Helm provider](https://github.com/terraform-providers/terraform-provider-helm); |
| [Terranix](https://github.com/terranix/terranix) | GDSL | Nix | See Terraform; |
| [Tilt](https://github.com/tilt-dev/tilt) | GMDL | Starlark | |
| [Timoni](https://github.com/stefanprodan/timoni) | GDSL | CUE | |
| [Trivy](https://github.com/aquasecurity/trivy) | VIL | | |
| [Tye](https://github.com/dotnet/tye) | GDL | | Limited to .NET applications; |
| [Untrak](https://github.com/yanc0/untrak) | DL | YAML | Abandoned; Garbage collect untracked resources; |
| [ValidatingAdmissionPolicy](https://kubernetes.io/docs/reference/access-authn-authz/validating-admission-policy) | VI | CEL | |
| [ValidKube](https://github.com/komodorio/validkube) | MVL | | |
| [werf](https://github.com/werf/werf) | GDSL | YAML | |
| [YAMLScript](https://github.com/yaml/yamlscript) | GL | YAMLScript | |
| [Yoke](https://github.com/yokecd/yoke) | DSI | | |
| [ytt](https://github.com/carvel-dev/ytt) | GMVL | YAML, Starlark | |
| [Zora](https://github.com/undistro/zora) | VI | CEL | |

## Secret Management

* **In cluster (I)**: Runs in cluster.
* **Local (L)**: Runs locally.
* **Application (A)**: Runs side-by-side with the application.

| | Features | Notes |
|-|-|-|
| [age-vault](https://github.com/leolimasa/age-vault) | L | |
| [agebox](https://github.com/slok/agebox) | L | |
| [argocd-vault-plugin](https://github.com/argoproj-labs/argocd-vault-plugin) | I | Inject values from secret managers (11 available) into Kubernetes resources; |
| [argocd-vault-replacer](https://github.com/crumbhole/argocd-vault-replacer) | | Unreviewed; |
| [aws-secret-operator](https://github.com/mumoshu/aws-secret-operator) | I | |
| [Azure Key Vault to Kubernetes (akv2k8s)](https://github.com/SparebankenVest/azure-key-vault-to-kubernetes) | IA | |
| [BlackBox](https://github.com/StackExchange/blackbox) | L | |
| [conjur-authn-k8s-client](https://github.com/cyberark/conjur-authn-k8s-client) | A | |
| [ejson](https://github.com/Shopify/ejson) | L | Related: [ejson2env](https://github.com/Shopify/ejson2env); |
| [External Secrets](https://github.com/external-secrets/external-secrets) | I | |
| [external-secret](https://github.com/imranismail/external-secret) | | Unreviewed; |
| [fnox](https://github.com/jdx/fnox) | LA | |
| [git-crypt](https://github.com/AGWA/git-crypt) | L | |
| [git-encrypt](https://github.com/shadowhand/git-encrypt) | L | Abandoned; |
| [git-secret](https://github.com/sobolevn/git-secret) | L | |
| [Helm Sops](https://github.com/camptocamp/helm-sops) | L | |
| [helm-secrets](https://github.com/jkroepke/helm-secrets) | L | |
| [helm-ssm](https://github.com/totango/helm-ssm) | L | Abandoned; |
| [Hiera eyaml](https://github.com/voxpupuli/hiera-eyaml) | L | |
| [Infisical Secrets Operator](https://github.com/Infisical/infisical/tree/main/k8-operator) | I | Related: [Infisical](https://github.com/Infisical/infisical); |
| [Kamus](https://github.com/Soluto/kamus) | IA | |
| [kamus](https://github.com/soluto/kamus) | | Unreviewed; |
| [kavo](https://github.com/stefanoverna/kavo) | L | |
| [Keyringer](https://github.com/quarkslab/keyringer) | L | Abandoned; |
| [KSOPS](https://github.com/viaduct-ai/kustomize-sops) | L | |
| [Kube-secret-syncer](https://github.com/contentful-labs/kube-secret-syncer) | I | |
| [Kustomize secretGeneratorPlugin](https://github.com/kubernetes-sigs/kustomize/blob/ab519fdc13ded9875e42d70ac8a5b1b9023a2dbb/examples/secretGeneratorPlugin.md) | | Unreviewed; |
| [lockenv](https://github.com/illarion/lockenv) | L | |
| [Markhor](https://github.com/markhork8s/markhor) | I | |
| [Murmur](https://github.com/busser/murmur) | A | |
| [pass](https://www.passwordstore.org) | L | |
| [Piggy](https://github.com/KongZ/piggy) | A | |
| [ROPS](https://github.com/gibbz00/rops) | L | |
| [Rot](https://github.com/candiddev/rot) | L | |
| [Sealed Secrets](https://github.com/bitnami-labs/sealed-secrets) | I | |
| [Secrets Store CSI Driver](https://github.com/kubernetes-sigs/secrets-store-csi-driver) | I | Related: [AWS Secrets Manager and Systems Manager Parameter Store provider](https://github.com/aws/secrets-store-csi-driver-provider-aws), [Azure Key Vault provider](https://github.com/Azure/secrets-store-csi-driver-provider-azure), [Google Secret Manager provider](https://github.com/GoogleCloudPlatform/secrets-store-csi-driver-provider-gcp), [HashiCorp Vault provider](https://github.com/hashicorp/vault-csi-provider), [CyberArk Conjur provider (WIP)](https://github.com/cyberark/conjur/pull/2836); |
| [SecretSpec](https://github.com/cachix/secretspec) | LA | |
| [secure_yaml](https://github.com/huwtl/secure_yaml) | L | Abandoned; |
| [SOPS](https://github.com/getsops/sops) | LA | |
| [SOPS secrets operator](https://github.com/isindir/sops-secrets-operator) | I | |
| [sops-operator](https://github.com/craftypath/sops-operator) | | Unreviewed; |
| [SOPS-Operator](https://github.com/peak-scale/sops-operator) | I | |
| [Teller](https://github.com/tellerops/teller) | L | Related: [Helm-teller](https://github.com/tellerops/helm-teller); |
| [Tesoro](https://github.com/kapicorp/tesoro) | I | Abandoned; |
| [transcrypt](https://github.com/elasticdog/transcrypt) | L | |
| [vals](https://github.com/helmfile/vals) | A | |
| [Vault Secrets Operator (HashiCorp)](https://github.com/hashicorp/vault-secrets-operator) | I | |
| [Vault Secrets Operator (Rico Berger)](https://github.com/ricoberger/vault-secrets-operator) | I | |
| [vault-k8s](https://github.com/hashicorp/vault-k8s) | A | |
| [vault-secrets-webhook](https://github.com/bank-vaults/vault-secrets-webhook) | | Unreviewed; |
| [yaml-crypt](https://github.com/autoapply/yaml-crypt) | L | |

## Other Tools

| | Notes |
|-|-|
| [Argo Rollouts](https://github.com/argoproj/argo-rollouts) | Controller and set of CRDs which provide progressive delivery features; |
| [chart-vendor](https://github.com/vexxhost/chart-vendor) | Vendor Helm charts; |
| [Karmada](https://github.com/karmada-io/karmada) | Multi-Cloud, Multi-Cluster Kubernetes Orchestration; |
| [Knative Serving](https://github.com/knative/serving) | Set of CRDs used to define serverless workloads; |
| [koreo](https://github.com/koreo-dev/koreo-core) | Orchestrates multi-step processes that react to events and manage Kubernetes resources; |
| [kro](https://github.com/kro-run/kro) | Define higher-level Kubernetes resources, composed of a multiple lower-level ones; |
| [KubeDiagrams](https://github.com/philippemerle/KubeDiagrams) | Generate Kubernetes architecture diagrams from a variety of sources; |
| [Syngit](https://github.com/syngit-org/syngit) | Webhook that writes resource modifications to a Git repository; |

## Sources

* [Kubernetes application management tools spreadsheet](https://docs.google.com/spreadsheets/d/1FCgqz1Ci7_VCz_wdh8vBitZ3giBtac_H8SBw4uxnrsE/), retrieved 2024-11-18
* [Kubetools](https://collabnix.github.io/kubetools/), retrieved 2024-11-18
* [Awesome Kubernetes Resources](https://github.com/tomhuang12/awesome-k8s-resources), retrieved 2024-11-18
* [Awesome Kubernetes](https://github.com/run-x/awesome-kubernetes), retrieved 2024-11-18
* [Awesome K8s](https://github.com/pditommaso/awesome-k8s), retrieved 2024-11-18
* [Declarative application management in Kubernetes](https://github.com/kubernetes/design-proposals-archive/blob/main/architecture/declarative-application-management.md), retrieved 2025-02-09
* [Kubernetes Configuration in 2024](https://itnext.io/kubernetes-configuration-in-2024-434abc7a5a1b), retrieved 2025-02-09
