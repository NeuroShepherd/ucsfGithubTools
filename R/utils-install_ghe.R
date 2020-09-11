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
                                    ref = "HEAD",
                                    subdir = NULL,
                                    auth_token = github_UCSF_pat(quiet),
                                    host = "api.github.com",
                                    quiet = FALSE,
                                    ...) {

  devtools::install_github(
    repo,
    ref = ref,
    subdir = subdir,
    auth_token = auth_token,
    host = host,
    quiet = quiet,
    ...
  )
}


