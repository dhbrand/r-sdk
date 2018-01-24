# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SingleTransformResponse Class
#'
#' @field message 
#' @field result 
#' @field status 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SingleTransformResponse <- R6::R6Class(
  'SingleTransformResponse',
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
      SingleTransformResponseObject <- list()
      if (!is.null(self$`message`)) {
        SingleTransformResponseObject[['message']] <- self$`message`
      }
      if (!is.null(self$`result`)) {
        SingleTransformResponseObject[['result']] <- self$`result`$toJSON()
      }
      if (!is.null(self$`status`)) {
        SingleTransformResponseObject[['status']] <- self$`status`
      }

      SingleTransformResponseObject
    },
    fromJSON = function(SingleTransformResponseJson) {
      SingleTransformResponseObject <- jsonlite::fromJSON(SingleTransformResponseJson)
      if (!is.null(SingleTransformResponseObject$`message`)) {
        self$`message` <- SingleTransformResponseObject$`message`
      }
      if (!is.null(SingleTransformResponseObject$`result`)) {
        resultObject <- Transform$new()
        resultObject$fromJSON(jsonlite::toJSON(SingleTransformResponseObject$result, auto_unbox = TRUE))
        self$`result` <- resultObject
      }
      if (!is.null(SingleTransformResponseObject$`status`)) {
        self$`status` <- SingleTransformResponseObject$`status`
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
    fromJSONString = function(SingleTransformResponseJson) {
      SingleTransformResponseObject <- jsonlite::fromJSON(SingleTransformResponseJson)
      self$`message` <- SingleTransformResponseObject$`message`
      TransformObject -> Transform$new()
      self$`result` <- TransformObject$fromJSON(jsonlite::toJSON(SingleTransformResponseObject$result, auto_unbox = TRUE))
      self$`status` <- SingleTransformResponseObject$`status`
    }
  )
)
