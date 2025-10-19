local _ = { -- List of lsp's
    -- ada_ls: .adb, .ads | Lenguaje Ada.
    -- agda_ls: .agda | Lenguaje de pruebas formales Agda.
    -- aiken: .ak | Lenguaje Aiken (contratos en Cardano).
    -- air: .air | Lenguaje de bytecode Air (lenguaje intermedio de Rust/Move).
    -- alloy_ls: .als | Alloy, modelado formal.
    -- anakin_language_server: .anakin | Lenguaje específico de dominio (infraestructura).
    -- angularls: .ts, .html, .css | Angular (framework TypeScript).
    -- ansiblels: .yml, .yaml | Playbooks de Ansible.
    -- antlersls: .antlers.html | Plantillas Antlers (Statamic CMS).
    -- apex_ls: .cls, .trigger | Apex (Salesforce).
    -- arduino_language_server: .ino | Sketches de Arduino (C/C++).
    -- asm_lsp: .asm, .s | Ensamblador genérico.
    -- ast_grep: varios | Herramienta de análisis AST, no solo un lenguaje.
    -- astro: .astro | Framework Astro (JS/TS + plantillas).
    -- atlas: .atlas | Lenguaje Atlas (infraestructura).
    -- atopile: .ato | Diseño de hardware en Atopile.
    -- autohotkey_lsp: .ahk | Scripts AutoHotkey.
    -- autotools_ls: configure.ac, Makefile.am | GNU Autotools.
    -- awk_ls: .awk | Lenguaje AWK.
    -- azure_pipelines_ls: azure-pipelines.yml | Pipelines de Azure DevOps.
    -- bacon_ls: .rs | Rust (enfocado a la herramienta bacon).
    -- ballerina: .bal | Lenguaje Ballerina.
    -- basedpyright: .py | Variante de Pyright para Python.
    -- bashls: .sh, .bash | Scripts Bash.
    -- basics_ls: .bas | BASIC clásico y dialectos.
    -- bazelrc_lsp: .bazelrc | Configuración de Bazel.
    -- beancount: .beancount | Contabilidad Beancount.
    -- bicep: .bicep | Infraestructura como código (Azure Bicep).
    -- biome: .js, .ts, .json | Biome (antes Rome), lint/format JS/TS.
    -- bitbake_language_server: .bb, .bbappend, .bbclass | Recetas BitBake (Yocto).
    -- blueprint_ls: .bp | Archivos Blueprint (Android build system).
    -- bqls: .bq | BigQuery SQL dialect.
    -- bright_script: .brs | BrightScript (lenguaje de Roku).
    -- bsl_ls: .bsl, .os | Lenguaje 1C:Enterprise (Business Scripting Language).
    -- buck2: BUCK | Archivos de build de Buck2 (Facebook).
    -- buddy_ls: .buddy | Buddy (pipeline automation).
    -- buf_ls: buf.yaml | Protobuf con Buf.
    -- bufls: .proto | Otro servidor LSP para Protobuf (Buf).
    -- bzl: .bzl | Starlark (configuración de Bazel).
    -- c3_lsp: .c3 | Lenguaje C3 (sucesor de C).
    -- cairo_ls: .cairo | Cairo (lenguaje blockchain StarkNet).
    -- ccls: .c, .cpp, .h | Lenguaje C/C++ (alternativa a clangd).
    -- cds_lsp: .cds | Core Data Services (SAP).
    -- circom-lsp: .circom | Circuitos zk-SNARK (Circom).
    -- cir_lsp_server: .cir | IR de compiladores (lenguaje intermedio).
    -- clangd: .c, .cpp, .h, .m, .mm | C, C++ y Objective-C.
    -- clarinet: .clar | Lenguaje Clarity (blockchain Stacks).
    -- clojure_lsp: .clj, .cljs, .cljc, .edn | Lenguaje Clojure.
    -- cmake: CMakeLists.txt, .cmake | Lenguaje de build CMake.
    -- cobol_ls: .cob, .cbl | Lenguaje COBOL.
    -- codebook: .cb | Lenguaje Codebook (DSL de datos).
    -- coffeesense: .coffee | CoffeeScript.
    -- contextive: varios | Análisis semántico en repositorios (nombres de contexto).
    -- copilot: varios | GitHub Copilot LSP (IA, múltiples lenguajes).
    -- coq_lsp: .v | Lenguaje de pruebas formales Coq.
    -- crystalline: .cr | Lenguaje Crystal.
    -- csharp_ls: .cs | Lenguaje C#.
    -- cspell_ls: varios | Corrector ortográfico (CSpell) para múltiples tipos de archivo.
    -- cssls: .css | CSS puro.
    -- cssmodules_ls: .css | CSS Modules.
    -- css_variables: .css | Variables CSS.
    -- cucumber_language_server: .feature | Gherkin (tests Cucumber/BDD).
    -- cue: .cue | Lenguaje de configuración CUE.
    -- custom_elements_ls: .html, .js, .ts | Custom Elements (Web Components).
    -- cypher_ls: .cypher | Lenguaje de consultas Neo4j (Cypher).
    -- daedalus_ls: .daedalus | Lenguaje Daedalus (juego Gothic).
    -- dafny: .dfy | Lenguaje Dafny (formal verification).
    -- dagger: dagger.json, .cue | Pipelines Dagger.
    -- dartls: .dart | Lenguaje Dart.
    -- dcmls: .dcm | Lenguaje específico (Domain Component Model).
    -- debputy: debian/* | Archivos Debian packaging.
    -- denols: .ts, .js | Deno (TypeScript/JavaScript runtime).
    -- dhall_lsp_server: .dhall | Lenguaje de configuración Dhall.
    -- diagnosticls: varios | Wrapper LSP para linters/formatters externos.
    -- digestif: .tex | LaTeX (para Vim/Neovim).
    -- djlsp: .dj | Lenguaje Dogelang (blockchain).
    -- docker_compose_language_service: docker-compose.yml | Archivos Docker Compose.
    -- docker_language_server: Dockerfile | Dockerfiles.
    -- dockerls: Dockerfile | Alternativa de LSP para Dockerfiles.
    -- dolmenls: .dolmen | Lenguaje de especificación formal Dolmen.
    -- dotls: .dot | Graphviz DOT.
    -- dprint: varios | Formateador dprint (JS, TS, JSON, Markdown, etc).
    -- ds_pinyin_lsp: varios | Conversión de texto a pinyin.
    -- dts_lsp: .dts, .dtsi | Device Tree Source (Linux kernel).
    -- earthlyls: Earthfile | Earthly (sistema de build).
    -- ecsact: .ecsact | Lenguaje ECSact (sistemas ECS).
    -- efm: varios | Servidor LSP genérico que integra linters y formatters.
    -- elixirls: .ex, .exs | Lenguaje Elixir.
    -- elmls: .elm | Lenguaje Elm.
    -- elp: .el | Emacs Lisp (via ELP).
    -- ember: .hbs, .js, .ts | Framework Ember.js.
    -- emmet_language_server: .html, .css | Emmet (expansión abreviaturas).
    -- emmet_ls: .html, .css | Variante de Emmet.
    -- emmylua_ls: .lua | Lua con anotaciones EmmyLua.
    -- erg_language_server: .erg | Lenguaje Erg (seguro y tipado).
    -- erlangls: .erl, .hrl | Lenguaje Erlang.
    -- esbonio: .rst | Documentación reStructuredText.
    -- eslint: .js, .ts | ESLint (JavaScript/TypeScript).
    -- expert: .exp | Lenguaje Expert (formal verification).
    -- facility_language_server: .fcl | Lenguaje Facility.
    -- fennel_language_server: .fnl | Lenguaje Fennel (Lisp sobre Lua).
    -- fennel_ls: .fnl | Variante de LSP para Fennel.
    -- fish_lsp: .fish | Shell Fish.
    -- flow: .js | Flow (tipado estático para JavaScript).
    -- flux_lsp: .flux | Lenguaje de consultas de InfluxDB.
    -- foam_ls: .foam | Lenguaje Foam (knowledge management).
    -- fortls: .f90, .f95, .f03, .f08 | Fortran.
    -- fsautocomplete: .fs, .fsx | F# (autocompletion server).
    -- fsharp_language_server: .fs, .fsx | Otro servidor para F#.
    -- fstar: .fst | Lenguaje F* (formal verification).
    -- futhark_lsp: .fut | Lenguaje Futhark (paralelismo funcional).
    -- gdscript: .gd | Lenguaje GDScript (Godot Engine).
    -- gdshader_lsp: .gdshader | Shaders de Godot.
    -- gh_actions_ls: .yml | GitHub Actions.
    -- ghcide: .hs | Haskell (IDE support).
    -- ghdl_ls: .vhdl | VHDL (síntesis y simulación).
    -- ginko_ls: .ginko | Lenguaje Ginko (infraestructura).
    -- gitlab_ci_ls: .gitlab-ci.yml | Pipelines GitLab CI.
    -- glasgow: .hs | Servidor experimental de Haskell (Glasgow Haskell).
    -- gleam: .gleam | Lenguaje Gleam (funcional, Erlang VM).
    -- glint: .gjs, .gts | Glint (templates de Ember con TypeScript).
    -- glsl_analyzer: .glsl, .vert, .frag | GLSL (shaders).
    -- glslls: .glsl, .vert, .frag | Otro LSP para GLSL.
    -- gnls: .gn | Archivos GN (build system de Chromium).
    -- golangci_lint_ls: .go | GolangCI (lint para Go).
    -- gopls: .go | Lenguaje Go (LSP oficial).
    -- gradle_ls: build.gradle, .gradle.kts | Gradle (Java/Kotlin builds).
    -- grammarly: .txt, .md, .tex, etc | Corrección de texto con Grammarly.
    -- graphql: .graphql, .gql | Lenguaje GraphQL.
    -- groovyls: .groovy | Lenguaje Groovy.
    -- guile_ls: .scm | GNU Guile (dialecto Scheme).
    -- harper_ls: .har | Lenguaje Harper (experimental).
    -- hdl_checker: .vhdl, .v, .sv | Checker para HDL (VHDL/Verilog/SystemVerilog).
    -- helm_ls: Chart.yaml, values.yaml | Plantillas Helm (Kubernetes).
    -- herb_ls: .herb | Lenguaje Herb (formal verification).
    -- hhvm: .php, .hack | Hack (Facebook, sobre HHVM).
    -- hie: .hs | Haskell IDE Engine (antiguo).
    -- hlasm: .asm | High Level Assembler (IBM z/OS).
    -- hls: .hs | Haskell Language Server (actual).
    -- hoon_ls: .hoon | Lenguaje Hoon (Urbit).
    -- html: .html, .htm | HTML.
    -- htmx: .html | Integración con htmx (atributos especiales).
    -- hydra_lsp: hydra.json | Configuración Hydra (Nix).
    -- hyprls: hyprland.conf | Configuración Hyprland (Wayland compositor).
    -- idris2_lsp: .idr | Lenguaje Idris 2 (dependently typed).
    -- intelephense: .php | PHP (popular).
    -- janet_lsp: .janet | Lenguaje Janet (Lisp-like).
    -- java_language_server: .java | Java (alternativa a jdtls).
    -- jdtls: .java | Java (LSP oficial de Eclipse).
    -- jedi_language_server: .py | Python (Jedi backend).
    -- jinja_lsp: .jinja, .jinja2 | Plantillas Jinja.
    -- jqls: .jq | Lenguaje jq (JSON queries).
    -- jsonls: .json | JSON estándar.
    -- jsonnet_ls: .jsonnet, .libsonnet | JSONNet.
    -- julials: .jl | Lenguaje Julia.
    -- just: justfile | Herramienta de tareas Just (similar a Make).
    -- kcl: .k, .kcl | Lenguaje KCL (configuración en la nube).
    -- koka: .kk | Lenguaje Koka (funcional, efectos algebraicos).
    -- kotlin_language_server: .kt, .kts | Kotlin (servidor alternativo).
    -- kotlin_lsp: .kt, .kts | Kotlin (otra variante de LSP).
    -- kulala_ls: .kulala | DSL para Kubernetes.
    -- laravel_ls: .php | Soporte Laravel (PHP framework).
    -- lean3ls: .lean | Lean 3 (formal verification).
    -- leanls: .lean | Lean 4 (formal verification).
    -- lelwel_ls: .llw | Lenguaje Lelwel (experimental).
    -- lemminx: .xml | XML (basado en Eclipse).
    -- lexical: .ex, .exs | Elixir (servidor alternativo).
    -- lsp_ai: varios | Servidor experimental con IA.
    -- ltex: .tex, .md, .txt | Corrector gramatical (LaTeX/Markdown).
    -- ltex_plus: .tex, .md, .txt | Variante extendida de ltex.
    -- lua_ls: .lua | Lua (oficial).
    -- luau_lsp: .luau | Luau (dialecto de Lua, usado en Roblox).
    -- lwc_ls: .js, .html | Lightning Web Components (Salesforce).
    -- m68k: .asm | Motorola 68000 assembly.
    -- markdown_oxide: .md | Markdown (servidor experimental).
    -- marko-js: .marko | Plantillas Marko.js.
    -- marksman: .md | Markdown (servidor muy usado).
    -- matlab_ls: .m | MATLAB.
    -- mdx_analyzer: .mdx | MDX (Markdown + JSX).
    -- mesonlsp: meson.build | Sistema de build Meson.
    -- metals: .scala, .sbt | Scala (LSP oficial).
    -- millet: .ml, .mli | Standard ML (SML).
    -- mint: .mint | Lenguaje Mint (frontend web).
    -- mlir_lsp_server: .mlir | MLIR (Multi-Level IR, LLVM).
    -- mlir_pdll_lsp_server: .pdll | PDLL (Pattern Definition Language en MLIR).
    -- mm0_ls: .mm0, .mm1 | Metamath Zero (formal verification).
    -- mojo: .mojo | Lenguaje Mojo (IA, aceleradores).
    -- motoko_lsp: .mo | Motoko (lenguaje del Internet Computer, Dfinity).
    -- move_analyzer: .move | Lenguaje Move (blockchain Diem/Aptos/Sui).
    -- msbuild_project_tools_server: .csproj, .vbproj | MSBuild (proyectos .NET).
    -- muon: muon.build | Sistema de build Muon (similar a Meson).
    -- mutt_ls: muttrc | Configuración Mutt (cliente de correo).
    -- nelua_lsp: .nelua | Lenguaje Nelua (dialecto de Lua).
    -- neocmake: CMakeLists.txt | Variante de LSP para CMake.
    -- nextflow_ls: .nf | Nextflow (pipelines científicos).
    -- nextls: .ex, .exs | Elixir (servidor experimental).
    -- nginx_language_server: nginx.conf | Configuración de Nginx.
    -- nickel_ls: .ncl | Lenguaje Nickel (configuración).
    -- nil_ls: .nix | Lenguaje Nix.
    -- nim_langserver: .nim | Lenguaje Nim.
    -- nimls: .nim | Nim (otro servidor).
    -- nixd: .nix | Lenguaje Nix (alternativa más moderna).
    -- nomad_lsp: .nomad | Configuración Nomad (HashiCorp).
    -- ntt: .ttcn3 | TTCN-3 (lenguaje de pruebas de telecomunicaciones).
    -- nushell: .nu | Shell Nushell.
    -- nxls: nx.json, workspace.json | Monorepos Nx (JavaScript/TypeScript).
    -- ocamlls: .ml, .mli | OCaml (servidor antiguo).
    -- ocamllsp: .ml, .mli | OCaml (servidor oficial moderno).
    -- ols: .odin | Odin (lenguaje de programación).
    -- omnisharp: .cs | C# (LSP muy popular).
    -- opencl_ls: .cl | OpenCL (kernels de cómputo).
    -- openscad_ls: .scad | OpenSCAD (modelado 3D).
    -- openscad_lsp: .scad | Variante de servidor para OpenSCAD.
    -- oxlint: .js, .ts | Linter OXLint (JavaScript/TypeScript).
    -- pact_ls: .pact | Pact (lenguaje de smart contracts).
    -- pasls: .pas | Pascal.
    -- pbls: .proto | Protobuf (otro servidor alternativo).
    -- perlls: .pl, .pm | Perl.
    -- perlnavigator: .pl, .pm | Perl (LSP alternativo).
    -- perlpls: .pl, .pm | Perl (otro servidor).
    -- pest_ls: .pest | Gramáticas Pest (Rust).
    -- phan: .php | PHP (análisis estático).
    -- phpactor: .php | PHP (completado/refactorización).
    -- phptools: .php | PHP Tools (análisis y autocompletado).
    -- pico8_ls: .p8 | Lenguaje Pico-8 (fantasy console).
    -- please: BUILD, .plz | Sistema de build Please.
    -- pli: .pli | Lenguaje PL/I.
    -- poryscript_pls: .pory | Poryscript (scripting para ROM hacks de Pokémon).
    -- postgres_lsp: .sql | PostgreSQL (dialecto específico).
    -- powershell_es: .ps1, .psm1 | PowerShell.
    -- prismals: .prisma | Prisma ORM (schemas).
    -- prolog_ls: .pl | Prolog.
    -- prosemd_lsp: .md | Markdown (enfoque en redacción de prosa).
    -- protols: .proto | Protocol Buffers.
    -- psalm: .php | PHP (análisis estático).
    -- pug: .pug | Plantillas Pug (antes Jade).
    -- puppet: .pp | Puppet DSL.
    -- purescriptls: .purs | PureScript.
    -- pylsp: .py | Python (basado en plugins).
    -- pylyzer: .py | Python (análisis estático).
    -- pyrefly: .py | Python (servidor alternativo).
    -- pyre: .py | Python (tipado estático).
    -- pyright: .py | Python (muy popular).
    -- qmlls: .qml | Qt QML.
    -- quick_lint_js: .js | JavaScript (lint rápido).
    -- racket_langserver: .rkt | Lenguaje Racket.
    -- raku_navigator: .raku, .rakumod | Lenguaje Raku (antes Perl 6).
    -- reason_ls: .re | Lenguaje ReasonML.
    -- regal: .rego | Open Policy Agent (Rego).
    -- regols: .rego | Otro servidor para Rego.
    -- remark_ls: .md | Markdown con remark.
    -- rescriptls: .res | Lenguaje ReScript.
    -- r_language_server: .R, .r | Lenguaje R.
    -- rls: .rs | Rust Language Server (antiguo).
    -- rnix: .nix | Lenguaje Nix (nuevo servidor).
    -- robotcode: .robot | Robot Framework (tests).
    -- robotframework_ls: .robot | Robot Framework (otro servidor).
    -- roc_ls: .roc | Lenguaje Roc (funcional, experimental).
    -- roslyn_ls: .cs | C# (basado en Roslyn).
    -- rpmspec: .spec | Archivos RPM spec.
    -- rubocop: .rb | Ruby (linting).
    -- ruby_lsp: .rb | Ruby (autocompletado y análisis).
    -- ruff_lsp: .py | Python (linting con Ruff).
    -- ruff: .py | Python (otro servidor Ruff).
    -- rune_languageserver: .rune | Lenguaje Rune.
    -- rust_analyzer: .rs | Rust (servidor moderno).
    -- salt_ls: .sls | SaltStack (state files).
    -- scheme_langserver: .scm | Scheme.
    -- scry: .cr | Crystal (alternativa).
    -- selene3p_ls: .lua | Lua (lint Selene 3p).
    -- serve_d: .d | Lenguaje D.
    -- shopify_theme_ls: .liquid | Shopify Liquid templates.
    -- sixtyfps: .sixty | Lenguaje SixtyFPS (UI declarativa).
    -- slangd: .slang | Lenguaje Slang (shaders).
    -- slint_lsp: .slint | Lenguaje Slint (UI declarativa).
    -- smarty_ls: .tpl | Smarty templates (PHP).
    -- smithy_ls: .smithy | Smithy IDL (APIs).
    -- snakeskin_ls: .ss | Snakeskin (template engine).
    -- snyk_ls: varios | Seguridad y análisis de vulnerabilidades.
    -- solang: .sol | Solidity (contratos Ethereum).
    -- solargraph: .rb | Ruby (análisis y autocompletado).
    -- solc: .sol | Solidity (compilador LSP).
    -- solidity_ls: .sol | Solidity (otro servidor).
    -- solidity_ls_nomicfoundation: .sol | Variante de Solidity LSP.
    -- solidity: .sol | Alias general para Solidity.
    -- somesass_ls: .sass, .scss | Sass/SCSS.
    -- sorbet: .rb | Ruby (tipado estático).
    -- sourcekit: .swift | Swift (oficial Apple LSP).
    -- spectral: .json, .yaml, .yml | Validación de OpenAPI/JSON/YAML (lint).
    -- spyglassmc_language_server: .mcfunction | Minecraft functions.
    -- sqlls: .sql | SQL estándar.
    -- sqls: .sql | SQL (otro servidor).
    -- sqruff: .sql | SQL (linting con Ruff).
    -- standardrb: .rb | Ruby (formateador estándar).
    -- starlark_rust: .bzl | Starlark (Bazel, Rust implementation).
    -- starpls: .star | Starlark (otro servidor).
    -- statix: .stx | Lenguaje Statix (análisis de tipos/constraints).
    -- steep: .rb | Ruby (análisis de tipos).
    -- stimulus_ls: .js, .ts | Stimulus.js (framework JS).
    -- stylelint_lsp: .css, .scss, .sass | Stylelint (CSS/SCSS/SASS).
    -- stylua3p_ls: .lua | Stylua (formateador Lua).
    -- stylua: .lua | Stylua (otro servidor Lua).
    -- superhtml: .html | HTML con extensiones especiales.
    -- svelte: .svelte | Framework Svelte.
    -- svlangserver: .sv, .svh | SystemVerilog.
    -- svls: .sv, .svh | Otro servidor SystemVerilog.
    -- swift_mesonls: .swift | Swift (Meson build integration).
    -- syntax_tree: varios | Analizador de árboles de sintaxis genérico.
    -- systemd_ls: .service, .socket, .timer | Archivos systemd.
    -- tabby_ml: .tabby | Lenguaje Tabby.
    -- tailwindcss: .html, .css, .js, .ts | Tailwind CSS.
    -- taplo: .toml | TOML.
    -- tblgen_lsp_server: .td | TableGen (LLVM).
    -- teal_ls: .tl | Teal (tipado estático para Lua).
    -- templ: .templ | Lenguaje Templ (templates).
    -- termux_language_server: varios | Configuración y scripts Termux.
    -- terraformls: .tf | Terraform.
    -- terraform_lsp: .tf | Variante de Terraform LSP.
    -- texlab: .tex | LaTeX.
    -- textlsp: .txt | Texto genérico.
    -- tflint: .tf | Terraform (linting).
    -- theme_check: .rb, .yml | Shopify theme check.
    -- thriftls: .thrift | Apache Thrift.
    -- tilt_ls: .tilt | Tilt (infraestructura).
    -- tinymist: .tm | Lenguaje Tinymist (experimental).
    -- tofu_ls: .tfu | Lenguaje ToFu (formal verification).
    -- tombi: .tombi | Lenguaje Tombi (experimental).
    -- tsgo: .ts | TypeScript (lint/format).
    -- ts_ls: .ts | TypeScript.
    -- tsp_server: .ts | TypeScript (otro servidor).
    -- ts_query_ls: .ts | TypeScript (análisis de queries).
    -- ttags: .c, .cpp, .h | Herramienta de indexado para C/C++ (LSP genérico).
    -- turbo_ls: .ts, .js | Turbo (monorepo tool, JS/TS).
    -- turtle_ls: .turtle | Lenguaje Turtle (RDF triples).
    -- tvm_ffi_navigator: .py, .cpp | TVM (framework de ML, bindings).
    -- twiggy_language_server: .twig | Plantillas Twig.
    -- ty: .py | Lenguaje Ty (tipado Python).
    -- typeprof: .rb | Ruby (análisis de tipos).
    -- typos_lsp: .md, .txt, .tex | Corrector de texto Typos.
    -- typst_lsp: .typ | Typst (tipografía y documentos).
    -- uiua: .uiua | Lenguaje UIUA (experimental).
    -- ungrammar_languageserver: .txt, .md | Revisión gramatical.
    -- unison: .u | Lenguaje Unison.
    -- unocss: .html, .js, .ts | UnoCSS (framework CSS).
    -- uvls: .v | Lenguaje V.
    -- vacuum: .vac | Lenguaje Vacuum (experimental).
    -- vala_ls: .vala | Lenguaje Vala.
    -- vale_ls: .vale | Corrector gramatical Vale.
    -- v_analyzer: .v | Lenguaje V (análisis alternativo).
    -- vectorcode_server: .vec | Lenguaje VectorCode.
    -- verible: .v, .sv | Verilog / SystemVerilog.
    -- veridian: .vd | Lenguaje Veridian (hardware).
    -- veryl_ls: .v | Veryl (HDL).
    -- vespa_ls: .xml, .json | Vespa configuration.
    -- vhdl_ls: .vhdl, .vho | VHDL.
    -- vimls: .vim, .vimrc | Vimscript.
    -- visualforce_ls: .page, .component | Visualforce (Salesforce).
    -- vls: .v | Lenguaje V (otro servidor).
    -- volar: .vue | Vue.js (framework, soporte oficial).
    -- vscoqtop: .v, .vok | Coq (soporte interactivo en VSCode).
    -- vtsls: .ts | TypeScript (variant LSP).
    -- vue_ls: .vue | Vue.js (alternativa LSP).
    -- wasm_language_tools: .wat, .wasm | WebAssembly (texto y binario).
    -- wgsl_analyzer: .wgsl | WebGPU Shading Language.
    -- yamlls: .yml, .yaml | YAML.
    -- yang_lsp: .yang | YANG (modelado de red).
    -- yls: .y | Yacc / Bison (gramáticas).
    -- ziggy: .zig | Lenguaje Zig.
    -- ziggy_schema: .zig | Zig (para esquemas/structs).
    -- zk: .zk | ZK (zk-SNARKs / zero-knowledge circuits).
    -- zls: .zig | Zig (LSP oficial).
    -- zuban: .zub | Lenguaje Zuban (experimental).
}

local function config()
    vim.lsp.config.lua_ls = {
        settings = {
            Lua = {
                runtime = {
                    version = 'LuaJIT',
                    special = {
                        reload = {
                            'require',
                        },
                    },
                },
                diagnostics = { globals = { 'vim' } },
                workspace = {
                    -- library = {
                    --   [vim.fn.stdpath("data") .. "/lazy/neovim/lua"] = true,
                    --   [vim.fn.stdpath("config")] = true,
                    -- },
                    library = vim.api.nvim_get_runtime_file('', true),
                    maxPreload = 10000,
                    preloadFileSize = 10000,
                },
                completion = { callSnippet = 'Replace' },
            },
        },
    }
    vim.lsp.enable({
        -- from package manager
        'texlab',
        'clangd',
        'lua_ls',
        'markdown_oxide',
        -- from npm
        'bashls',
        'awk_ls',
        'pyright',
        'html',
        'ts_ls',
        'cssls',
        -- other
        'rust_analyzer',
    })
end

return {
    'neovim/nvim-lspconfig',
    event = 'BufReadPre',
    config = config,
}
