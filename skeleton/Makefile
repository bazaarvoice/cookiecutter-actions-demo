# actions-demo makefile

# config
.DEFAULT_GOAL := init
TERRAFORM_DIR := "terraform"

terraform/terraform.tfstate:
	cd $(TERRAFORM_DIR) && rm -f {{cookiecutter.project_name}}.plan && terraform init -reconfigure && terraform validate
	cd $(TERRAFORM_DIR) && terraform plan -out={{cookiecutter.project_name}}.plan && terraform apply -auto-approve {{cookiecutter.project_name}}.plan

.PHONY: destroy
destroy:
	cd $(TERRAFORM_DIR) && terraform destroy

.git:
	git init
	git remote add origin git@github.com:bazaarvoice/{{cookiecutter.project_name}}.git
	git add .
	git commit -m "feat(cookiecutter): actions demo initial commit"
	git branch -M main
	git push -u origin main

.PHONY: init
init: terraform/terraform.tfstate .git
	@printf "\n\n🤖 repo ready: https://github.com/bazaarvoice/%s\n\n" "{{cookiecutter.project_name}}"
