# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' JobStopAction Class
#'
#' @field action 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
JobStopAction <- R6::R6Class(
  'JobStopAction',
  public = list(
    `action` = NULL,
    initialize = function(`action`){
      if (!missing(`action`)) {
        stopifnot(R6::is.R6(`action`))
        self$`action` <- `action`
      }
    },
    toJSON = function() {
      JobStopActionObject <- list()
      if (!is.null(self$`action`)) {
        JobStopActionObject[['action']] <- self$`action`$toJSON()
      }

      JobStopActionObject
    },
    fromJSON = function(JobStopActionJson) {
      JobStopActionObject <- jsonlite::fromJSON(JobStopActionJson)
      if (!is.null(JobStopActionObject$`action`)) {
        actionObject <- JobActionType$new()
        actionObject$fromJSON(jsonlite::toJSON(JobStopActionObject$action, auto_unbox = TRUE))
        self$`action` <- actionObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "action": %s
        }',
        self$`action`$toJSON()
      )
    },
    fromJSONString = function(JobStopActionJson) {
      JobStopActionObject <- jsonlite::fromJSON(JobStopActionJson)
      JobActionTypeObject -> JobActionType$new()
      self$`action` <- JobActionTypeObject$fromJSON(jsonlite::toJSON(JobStopActionObject$action, auto_unbox = TRUE))
    }
  )
)
