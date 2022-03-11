# certgen-action

A github action that pulls danvixent/certgen

This is a Github Action that can be used in your Github Workflow to generate & install certificates for localhost

## How to use this Action

This action accepts the following parameters

| Name| Description | Required  | Default |
| ------------- |-------------|-----|-----|
| timeout | After this timeout the deployment will automatically shutdown the tunelling and therefore stop the action. (max is 6 hours) | No | 1h |
| port | The port in localhost to forward traffic from/to  | Yes | - |
| ngrok_authtoken | Your ngrok authtoken| Yes | - |

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
    
    - uses: danvixent/certgen-action@0.1.0
      with:
        os: linux
        version: 0.1.2
```
