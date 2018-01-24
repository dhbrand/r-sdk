# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' AgaveNullResponse Class
#'
#' @field message 
#' @field status 
#' @field version 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AgaveNullResponse <- R6::R6Class(
  'AgaveNullResponse',
  public = list(
    `message` = NULL,
    `status` = NULL,
    `version` = NULL,
    initialize = function(`message`, `status`, `version`){
      if (!missing(`message`)) {
        stopifnot(is.character(`message`), length(`message`) == 1)
        self$`message` <- `message`
      }
      if (!missing(`status`)) {
        stopifnot(is.character(`status`), length(`status`) == 1)
        self$`status` <- `status`
      }
      if (!missing(`version`)) {
        stopifnot(is.character(`version`), length(`version`) == 1)
        self$`version` <- `version`
      }
    },
    toJSON = function() {
      AgaveNullResponseObject <- list()
      if (!is.null(self$`message`)) {
        AgaveNullResponseObject[['message']] <- self$`message`
      }
      if (!is.null(self$`status`)) {
        AgaveNullResponseObject[['status']] <- self$`status`
      }
      if (!is.null(self$`version`)) {
        AgaveNullResponseObject[['version']] <- self$`version`
      }

      AgaveNullResponseObject
    },
    fromJSON = function(AgaveNullResponseJson) {
      AgaveNullResponseObject <- jsonlite::fromJSON(AgaveNullResponseJson)
      if (!is.null(AgaveNullResponseObject$`message`)) {
        self$`message` <- AgaveNullResponseObject$`message`
      }
      if (!is.null(AgaveNullResponseObject$`status`)) {
        self$`status` <- AgaveNullResponseObject$`status`
      }
      if (!is.null(AgaveNullResponseObject$`version`)) {
        self$`version` <- AgaveNullResponseObject$`version`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "message": %s,
           "status": %s,
           "version": %s
        }',
        self$`message`,
        self$`status`,
        self$`version`
      )
    },
    fromJSONString = function(AgaveNullResponseJson) {
      AgaveNullResponseObject <- jsonlite::fromJSON(AgaveNullResponseJson)
      self$`message` <- AgaveNullResponseObject$`message`
      self$`status` <- AgaveNullResponseObject$`status`
      self$`version` <- AgaveNullResponseObject$`version`
    }
  )
)
