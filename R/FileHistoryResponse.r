# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' FileHistoryResponse Class
#'
#' @field message 
#' @field status 
#' @field version 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FileHistoryResponse <- R6::R6Class(
  'FileHistoryResponse',
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
      FileHistoryResponseObject <- list()
      if (!is.null(self$`message`)) {
        FileHistoryResponseObject[['message']] <- self$`message`
      }
      if (!is.null(self$`status`)) {
        FileHistoryResponseObject[['status']] <- self$`status`
      }
      if (!is.null(self$`version`)) {
        FileHistoryResponseObject[['version']] <- self$`version`
      }

      FileHistoryResponseObject
    },
    fromJSON = function(FileHistoryResponseJson) {
      FileHistoryResponseObject <- jsonlite::fromJSON(FileHistoryResponseJson)
      if (!is.null(FileHistoryResponseObject$`message`)) {
        self$`message` <- FileHistoryResponseObject$`message`
      }
      if (!is.null(FileHistoryResponseObject$`status`)) {
        self$`status` <- FileHistoryResponseObject$`status`
      }
      if (!is.null(FileHistoryResponseObject$`version`)) {
        self$`version` <- FileHistoryResponseObject$`version`
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
    fromJSONString = function(FileHistoryResponseJson) {
      FileHistoryResponseObject <- jsonlite::fromJSON(FileHistoryResponseJson)
      self$`message` <- FileHistoryResponseObject$`message`
      self$`status` <- FileHistoryResponseObject$`status`
      self$`version` <- FileHistoryResponseObject$`version`
    }
  )
)
