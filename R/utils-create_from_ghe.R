
create_from_github_UCSF <- function(repo_spec,
                                    destdir = NULL,
                                    fork = NA,
                                    rstudio = NULL,
                                    protocol = git_protocol(),
                                    auth_token = github_UCSF_pat(),
                                    host = "github.ucsf.com/api/v3"){

  usethis::create_from_github(
    repo_spec,
    destdir = NULL,
    fork = NA,
    rstudio = NULL,
    protocol = git_protocol(),
    auth_token = github_token(),
    host = host
  )

}
