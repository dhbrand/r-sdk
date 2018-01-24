# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' FilePermissionRequest Class
#'
#' @field username 
#' @field permission 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FilePermissionRequest <- R6::R6Class(
  'FilePermissionRequest',
  public = list(
    `username` = NULL,
    `permission` = NULL,
    initialize = function(`username`, `permission`){
      if (!missing(`username`)) {
        stopifnot(is.character(`username`), length(`username`) == 1)
        self$`username` <- `username`
      }
      if (!missing(`permission`)) {
        stopifnot(R6::is.R6(`permission`))
        self$`permission` <- `permission`
      }
    },
    toJSON = function() {
      FilePermissionRequestObject <- list()
      if (!is.null(self$`username`)) {
        FilePermissionRequestObject[['username']] <- self$`username`
      }
      if (!is.null(self$`permission`)) {
        FilePermissionRequestObject[['permission']] <- self$`permission`$toJSON()
      }

      FilePermissionRequestObject
    },
    fromJSON = function(FilePermissionRequestJson) {
      FilePermissionRequestObject <- jsonlite::fromJSON(FilePermissionRequestJson)
      if (!is.null(FilePermissionRequestObject$`username`)) {
        self$`username` <- FilePermissionRequestObject$`username`
      }
      if (!is.null(FilePermissionRequestObject$`permission`)) {
        permissionObject <- PermissionType$new()
        permissionObject$fromJSON(jsonlite::toJSON(FilePermissionRequestObject$permission, auto_unbox = TRUE))
        self$`permission` <- permissionObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "username": %s,
           "permission": %s
        }',
        self$`username`,
        self$`permission`$toJSON()
      )
    },
    fromJSONString = function(FilePermissionRequestJson) {
      FilePermissionRequestObject <- jsonlite::fromJSON(FilePermissionRequestJson)
      self$`username` <- FilePermissionRequestObject$`username`
      PermissionTypeObject -> PermissionType$new()
      self$`permission` <- PermissionTypeObject$fromJSON(jsonlite::toJSON(FilePermissionRequestObject$permission, auto_unbox = TRUE))
    }
  )
)
