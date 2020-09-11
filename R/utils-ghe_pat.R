#' Retrieve personal access token to UC San Francisco's GitHub Enterprise
#'
#' This function mimics `devtools::github_pat` to retrieve
#' a personal access token (PAT) to
#' UC San Francisco's instance of GitHub Enterprise.
#'
#' Unlike `devtools::github_pat`, this function does not handle the
#' the CI case.
#'
#' @param quiet `logical` indicates if function should be quiet
#'
#' @return `character`, PAT for UC San Francisco's GitHub Enterprise
#' @seealso `devtools::github_pat`
#'
#' @export
#'
github_UCSF_pat <- function(quiet = FALSE) {

  pat <- Sys.getenv("GITHUB_UCSF_PAT")
  if (nzchar(pat)) {
    if (!quiet) {
      message("Using GitHub PAT from envvar GITHUB_UCSF_PAT")
    }
    return(pat)
  }

  return(NULL)
}




