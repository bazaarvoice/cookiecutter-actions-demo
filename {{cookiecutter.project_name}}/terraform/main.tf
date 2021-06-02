resource "github_repository" "{{cookiecutter.project_name}}" {
  name        = "{{cookiecutter.project_name}}"
  description = "{{cookiecutter.project_description}}"
  visibility  = "private"
}

data "github_team" "infra" {
  slug = "team-infrastructure"
}

resource "github_team_repository" "infra" {
  team_id    = data.github_team.infra.id
  repository = github_repository.{{cookiecutter.project_name}}.name
  permission = "admin"
}
