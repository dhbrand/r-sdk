# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SystemPublishAction Class
#'
#' @field action 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SystemPublishAction <- R6::R6Class(
  'SystemPublishAction',
  public = list(
    `action` = NULL,
    initialize = function(`action`){
      if (!missing(`action`)) {
        stopifnot(R6::is.R6(`action`))
        self$`action` <- `action`
      }
    },
    toJSON = function() {
      SystemPublishActionObject <- list()
      if (!is.null(self$`action`)) {
        SystemPublishActionObject[['action']] <- self$`action`$toJSON()
      }

      SystemPublishActionObject
    },
    fromJSON = function(SystemPublishActionJson) {
      SystemPublishActionObject <- jsonlite::fromJSON(SystemPublishActionJson)
      if (!is.null(SystemPublishActionObject$`action`)) {
        actionObject <- SystemActionType$new()
        actionObject$fromJSON(jsonlite::toJSON(SystemPublishActionObject$action, auto_unbox = TRUE))
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
    fromJSONString = function(SystemPublishActionJson) {
      SystemPublishActionObject <- jsonlite::fromJSON(SystemPublishActionJson)
      SystemActionTypeObject -> SystemActionType$new()
      self$`action` <- SystemActionTypeObject$fromJSON(jsonlite::toJSON(SystemPublishActionObject$action, auto_unbox = TRUE))
    }
  )
)
