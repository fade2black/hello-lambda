1. Either first create the secrets and then change them from the console manually or edit `secrets.json` and then create secrets. In the latter case remember to delete the secrets from the file after you successfully create it.
```bash 
aws cloudformation deploy --stack-name bailiff-secrets --template create-secrets.yml --parameter-overrides file://secrets.json
```
2. Create deployment pipeline

```bash 
aws cloudformation deploy --stack-name bailiff-pipeline --template create-pipeline.yml --parameter-overrides SecretsName=BailiffSecret FunctionName=bailiff-worker SourceLocation=https://github.com/fade2black/hello-lambda.git --capabilities CAPABILITY_NAMED_IAM
```