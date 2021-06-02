# {{cookiecutter.project_name}}

[![Tekton Image Pipeline](https://github.com/bazaarvoice/{{cookiecutter.project_name}}/actions/workflows/push.yaml/badge.svg)](https://github.com/bazaarvoice/{{cookiecutter.project_name}}/actions/workflows/push.yaml)

## Description

This is a CookieCutter project intended as a scaffolding demo of GitHub Actions Workflows

## Initialise

Run `make` to "do everything". This will...

* create the GitHub Repository via Terraform
* add team permissions to the new repo
* initialise the new repo
* add, commit and push all contents to the new remote

This push will immediately trigger the GitHub Actions `push` Workflow to build and deploy the app using its `Dockerfile` and the Tekton SIngle Image Pipeline.

## Destroy

When you are finished with this repo you can `make destroy` to delete the GitHub repo. Note that this will _not_ delete any ECR repo created for this by Tekton.
