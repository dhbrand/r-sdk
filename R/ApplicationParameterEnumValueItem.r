# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApplicationParameterEnumValueItem Class
#'
#' @field key 
#' @field value 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApplicationParameterEnumValueItem <- R6::R6Class(
  'ApplicationParameterEnumValueItem',
  public = list(
    `key` = NULL,
    `value` = NULL,
    initialize = function(`key`, `value`){
      if (!missing(`key`)) {
        stopifnot(is.character(`key`), length(`key`) == 1)
        self$`key` <- `key`
      }
      if (!missing(`value`)) {
        stopifnot(is.character(`value`), length(`value`) == 1)
        self$`value` <- `value`
      }
    },
    toJSON = function() {
      ApplicationParameterEnumValueItemObject <- list()
      if (!is.null(self$`key`)) {
        ApplicationParameterEnumValueItemObject[['key']] <- self$`key`
      }
      if (!is.null(self$`value`)) {
        ApplicationParameterEnumValueItemObject[['value']] <- self$`value`
      }

      ApplicationParameterEnumValueItemObject
    },
    fromJSON = function(ApplicationParameterEnumValueItemJson) {
      ApplicationParameterEnumValueItemObject <- jsonlite::fromJSON(ApplicationParameterEnumValueItemJson)
      if (!is.null(ApplicationParameterEnumValueItemObject$`key`)) {
        self$`key` <- ApplicationParameterEnumValueItemObject$`key`
      }
      if (!is.null(ApplicationParameterEnumValueItemObject$`value`)) {
        self$`value` <- ApplicationParameterEnumValueItemObject$`value`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "key": %s,
           "value": %s
        }',
        self$`key`,
        self$`value`
      )
    },
    fromJSONString = function(ApplicationParameterEnumValueItemJson) {
      ApplicationParameterEnumValueItemObject <- jsonlite::fromJSON(ApplicationParameterEnumValueItemJson)
      self$`key` <- ApplicationParameterEnumValueItemObject$`key`
      self$`value` <- ApplicationParameterEnumValueItemObject$`value`
    }
  )
)
