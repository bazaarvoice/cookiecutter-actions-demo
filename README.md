# cookiecutter-actions-demo

Demo CookieCutter template used for GitHub Actions Demo

## Use Me

Run cookiecutter, pass it the URL for this repo and answer the three questions...

```console
$ cookiecutter https://github.com/bazaarvoice/cookiecutter-actions-demo
project_name [actions-demo]:
project_description [GitHub Actions CookieCutter Demo]:
owner [infrastructure-dev@bazaarvoice.com]:
```

This will generate a directory called your `project_name` and populate it with "all the things" including GitHub Actions Workflow, a Dockerfile, a Tekton PipelineRun and some Terraform to create a GitHub repository with some permissions. 

Once the directory has been generated, the CookieCutter Hook will run `make` in the new directory which will execute Terraform to create the GitHub Repo, initialise the new git repo, add, commit and push. This initial push will trigger the GitHub Action Workflow which will in turn trigger the Tekton Pipeline to create any required ECR repos then build and push the Docker image 

## Clean Up

When you are done with a Demo you can cd into the generated project root and run `make destroy` to delete the GitHub repo. Note that this will not clean up any ECR repos generated by Tekton.
