# certgen-action

A github action that pulls danvixent/certgen

This is a Github Action that can be used in your Github Workflow to generate & install certificates for localhost

## How to use this Action

This action accepts the following parameters

| Name| Description | Required  | Default |
| ------------- |-------------|-----|-----|
| output-folder | Folder to put the certgen binary in | No | . |
| os | The name of the host os. Supported values include (linux, ubuntu, darwin, mac)  | Yes | - |
| certgen-version: | Version of certgen to download | No | 0.1.6 |

Here is an example of using this action:

```yaml
name: CI
on: push

jobs:

  deploy:
    name: Deploy challenge
    runs-on: ubuntu-latest
    needs: cancel

    steps:
    - name: Checkout
      uses: actions/checkout@v2
    
    - name: Run container
      run: docker-compose up -d 
    
    - name: Pull certgen
      uses: danvixent/certgen-action@v0.1.6
      with:
        output-folder: $(go env GOPATH)/bin
        os: ${{ runner.os }}
        certgen-version: 0.2.0
```
