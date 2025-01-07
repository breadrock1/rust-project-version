# Rust project version

Current GitHub actions provides ability to get rust project version. This action useful to create release and upload artifacts.

# Usage

See [action.yml](action.yml)

```yaml
name: Get project version example

on: [pull_request, issues]

jobs:
  runs-on: ubuntu-latest

  outputs:
    version_output: ${{ steps.version.outputs.version }}

  steps:
    - uses: actions/checkout@v4
    - uses: actions/rust-project-version@master
      with:
        manifest-path: example/hello-world/Cargo.toml

```

# License

The scripts and documentation in this project are released under the [MIT License](LICENSE)