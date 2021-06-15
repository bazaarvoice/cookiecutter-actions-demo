# outputs

output "http_clone_url" {
  value = github_repository.{{cookiecutter.project_name}}.http_clone_url
}

output "html_url" {
  value = github_repository.{{cookiecutter.project_name}}.html_url
}
