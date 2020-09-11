#' Connect a local repo with UC San Francisco's GitHub Enterprise
#'
#' This is a wrapper for `usethis::use_github` to make it easier to access
#' UC San Francisco's instance of GitHub Enterprise.
#'
#' @inheritParams usethis::use_github
#' @seealso `usethis::use_github`
#' @export
#'
use_github_UCSF <- function(organisation = NULL,
                                  private = FALSE,
                                  protocol = c("ssh", "https"),
                                  credentials = NULL,
                                  auth_token = github_UCSF_pat(),
                                  host = "https://git.ucsf.com/api/v3") {

  usethis::use_github(
    organisation = organisation,
    private = private,
    protocol = protocol,
    credentials = credentials,
    auth_token = auth_token,
    host = host
  )
}
