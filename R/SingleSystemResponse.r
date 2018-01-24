# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SingleSystemResponse Class
#'
#' @field message 
#' @field result 
#' @field status 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SingleSystemResponse <- R6::R6Class(
  'SingleSystemResponse',
  public = list(
    `message` = NULL,
    `result` = NULL,
    `status` = NULL,
    initialize = function(`message`, `result`, `status`){
      if (!missing(`message`)) {
        stopifnot(is.character(`message`), length(`message`) == 1)
        self$`message` <- `message`
      }
      if (!missing(`result`)) {
        stopifnot(R6::is.R6(`result`))
        self$`result` <- `result`
      }
      if (!missing(`status`)) {
        stopifnot(is.character(`status`), length(`status`) == 1)
        self$`status` <- `status`
      }
    },
    toJSON = function() {
      SingleSystemResponseObject <- list()
      if (!is.null(self$`message`)) {
        SingleSystemResponseObject[['message']] <- self$`message`
      }
      if (!is.null(self$`result`)) {
        SingleSystemResponseObject[['result']] <- self$`result`$toJSON()
      }
      if (!is.null(self$`status`)) {
        SingleSystemResponseObject[['status']] <- self$`status`
      }

      SingleSystemResponseObject
    },
    fromJSON = function(SingleSystemResponseJson) {
      SingleSystemResponseObject <- jsonlite::fromJSON(SingleSystemResponseJson)
      if (!is.null(SingleSystemResponseObject$`message`)) {
        self$`message` <- SingleSystemResponseObject$`message`
      }
      if (!is.null(SingleSystemResponseObject$`result`)) {
        resultObject <- System$new()
        resultObject$fromJSON(jsonlite::toJSON(SingleSystemResponseObject$result, auto_unbox = TRUE))
        self$`result` <- resultObject
      }
      if (!is.null(SingleSystemResponseObject$`status`)) {
        self$`status` <- SingleSystemResponseObject$`status`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "message": %s,
           "result": %s,
           "status": %s
        }',
        self$`message`,
        self$`result`$toJSON(),
        self$`status`
      )
    },
    fromJSONString = function(SingleSystemResponseJson) {
      SingleSystemResponseObject <- jsonlite::fromJSON(SingleSystemResponseJson)
      self$`message` <- SingleSystemResponseObject$`message`
      SystemObject -> System$new()
      self$`result` <- SystemObject$fromJSON(jsonlite::toJSON(SingleSystemResponseObject$result, auto_unbox = TRUE))
      self$`status` <- SingleSystemResponseObject$`status`
    }
  )
)
