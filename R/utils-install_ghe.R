#' Attempts to install a package directly from UC San Francisco's GitHub Enterprise.
#'
#' This is a wrapper for `devtools::install_github` to make it easier to access
#' UC San Francisco's instance of GitHub Enterprise.
#'
#' @inheritParams devtools::install_github
#' @seealso `devtools::install_github`
#' @export
#'
install_github_UCSF <- function(repo,
                                    username = NULL,
                                    ref = "master",
                                    subdir = NULL,
                                    auth_token = github_UCSF_pat(quiet),
                                    host = "git.ucsf.com/api/v3",
                                    quiet = FALSE,
                                    ...) {

  devtools::install_github(
    repo,
    username = username,
    ref = ref,
    subdir = subdir,
    auth_token = auth_token,
    host = host,
    quiet = quiet,
    ...
  )
}


