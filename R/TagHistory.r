# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' TagHistory Class
#'
#' @field created 
#' @field event 
#' @field description 
#' @field id 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TagHistory <- R6::R6Class(
  'TagHistory',
  public = list(
    `created` = NULL,
    `event` = NULL,
    `description` = NULL,
    `id` = NULL,
    initialize = function(`created`, `event`, `description`, `id`){
      if (!missing(`created`)) {
        stopifnot(is.character(`created`), length(`created`) == 1)
        self$`created` <- `created`
      }
      if (!missing(`event`)) {
        stopifnot(is.character(`event`), length(`event`) == 1)
        self$`event` <- `event`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
    },
    toJSON = function() {
      TagHistoryObject <- list()
      if (!is.null(self$`created`)) {
        TagHistoryObject[['created']] <- self$`created`
      }
      if (!is.null(self$`event`)) {
        TagHistoryObject[['event']] <- self$`event`
      }
      if (!is.null(self$`description`)) {
        TagHistoryObject[['description']] <- self$`description`
      }
      if (!is.null(self$`id`)) {
        TagHistoryObject[['id']] <- self$`id`
      }

      TagHistoryObject
    },
    fromJSON = function(TagHistoryJson) {
      TagHistoryObject <- jsonlite::fromJSON(TagHistoryJson)
      if (!is.null(TagHistoryObject$`created`)) {
        self$`created` <- TagHistoryObject$`created`
      }
      if (!is.null(TagHistoryObject$`event`)) {
        self$`event` <- TagHistoryObject$`event`
      }
      if (!is.null(TagHistoryObject$`description`)) {
        self$`description` <- TagHistoryObject$`description`
      }
      if (!is.null(TagHistoryObject$`id`)) {
        self$`id` <- TagHistoryObject$`id`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "created": %s,
           "event": %s,
           "description": %s,
           "id": %s
        }',
        self$`created`,
        self$`event`,
        self$`description`,
        self$`id`
      )
    },
    fromJSONString = function(TagHistoryJson) {
      TagHistoryObject <- jsonlite::fromJSON(TagHistoryJson)
      self$`created` <- TagHistoryObject$`created`
      self$`event` <- TagHistoryObject$`event`
      self$`description` <- TagHistoryObject$`description`
      self$`id` <- TagHistoryObject$`id`
    }
  )
)
