# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' AbstractApplicationParameterValue Class
#'
#' @field defaultValue 
#' @field enumValues 
#' @field enquote 
#' @field order 
#' @field required 
#' @field type 
#' @field validator 
#' @field visible 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AbstractApplicationParameterValue <- R6::R6Class(
  'AbstractApplicationParameterValue',
  public = list(
    `defaultValue` = NULL,
    `enumValues` = NULL,
    `enquote` = NULL,
    `order` = NULL,
    `required` = NULL,
    `type` = NULL,
    `validator` = NULL,
    `visible` = NULL,
    initialize = function(`defaultValue`, `enumValues`, `enquote`, `order`, `required`, `type`, `validator`, `visible`){
      if (!missing(`defaultValue`)) {
        stopifnot(is.character(`defaultValue`), length(`defaultValue`) == 1)
        self$`defaultValue` <- `defaultValue`
      }
      if (!missing(`enumValues`)) {
        stopifnot(is.character(`enumValues`), length(`enumValues`) == 1)
        self$`enumValues` <- `enumValues`
      }
      if (!missing(`enquote`)) {
        self$`enquote` <- `enquote`
      }
      if (!missing(`order`)) {
        stopifnot(is.numeric(`order`), length(`order`) == 1)
        self$`order` <- `order`
      }
      if (!missing(`required`)) {
        self$`required` <- `required`
      }
      if (!missing(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!missing(`validator`)) {
        stopifnot(is.character(`validator`), length(`validator`) == 1)
        self$`validator` <- `validator`
      }
      if (!missing(`visible`)) {
        self$`visible` <- `visible`
      }
    },
    toJSON = function() {
      AbstractApplicationParameterValueObject <- list()
      if (!is.null(self$`defaultValue`)) {
        AbstractApplicationParameterValueObject[['defaultValue']] <- self$`defaultValue`
      }
      if (!is.null(self$`enumValues`)) {
        AbstractApplicationParameterValueObject[['enumValues']] <- self$`enumValues`
      }
      if (!is.null(self$`enquote`)) {
        AbstractApplicationParameterValueObject[['enquote']] <- self$`enquote`
      }
      if (!is.null(self$`order`)) {
        AbstractApplicationParameterValueObject[['order']] <- self$`order`
      }
      if (!is.null(self$`required`)) {
        AbstractApplicationParameterValueObject[['required']] <- self$`required`
      }
      if (!is.null(self$`type`)) {
        AbstractApplicationParameterValueObject[['type']] <- self$`type`
      }
      if (!is.null(self$`validator`)) {
        AbstractApplicationParameterValueObject[['validator']] <- self$`validator`
      }
      if (!is.null(self$`visible`)) {
        AbstractApplicationParameterValueObject[['visible']] <- self$`visible`
      }

      AbstractApplicationParameterValueObject
    },
    fromJSON = function(AbstractApplicationParameterValueJson) {
      AbstractApplicationParameterValueObject <- jsonlite::fromJSON(AbstractApplicationParameterValueJson)
      if (!is.null(AbstractApplicationParameterValueObject$`defaultValue`)) {
        self$`defaultValue` <- AbstractApplicationParameterValueObject$`defaultValue`
      }
      if (!is.null(AbstractApplicationParameterValueObject$`enumValues`)) {
        self$`enumValues` <- AbstractApplicationParameterValueObject$`enumValues`
      }
      if (!is.null(AbstractApplicationParameterValueObject$`enquote`)) {
        self$`enquote` <- AbstractApplicationParameterValueObject$`enquote`
      }
      if (!is.null(AbstractApplicationParameterValueObject$`order`)) {
        self$`order` <- AbstractApplicationParameterValueObject$`order`
      }
      if (!is.null(AbstractApplicationParameterValueObject$`required`)) {
        self$`required` <- AbstractApplicationParameterValueObject$`required`
      }
      if (!is.null(AbstractApplicationParameterValueObject$`type`)) {
        self$`type` <- AbstractApplicationParameterValueObject$`type`
      }
      if (!is.null(AbstractApplicationParameterValueObject$`validator`)) {
        self$`validator` <- AbstractApplicationParameterValueObject$`validator`
      }
      if (!is.null(AbstractApplicationParameterValueObject$`visible`)) {
        self$`visible` <- AbstractApplicationParameterValueObject$`visible`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "defaultValue": %s,
           "enumValues": %s,
           "enquote": %s,
           "order": %d,
           "required": %s,
           "type": %s,
           "validator": %s,
           "visible": %s
        }',
        self$`defaultValue`,
        self$`enumValues`,
        self$`enquote`,
        self$`order`,
        self$`required`,
        self$`type`,
        self$`validator`,
        self$`visible`
      )
    },
    fromJSONString = function(AbstractApplicationParameterValueJson) {
      AbstractApplicationParameterValueObject <- jsonlite::fromJSON(AbstractApplicationParameterValueJson)
      self$`defaultValue` <- AbstractApplicationParameterValueObject$`defaultValue`
      self$`enumValues` <- AbstractApplicationParameterValueObject$`enumValues`
      self$`enquote` <- AbstractApplicationParameterValueObject$`enquote`
      self$`order` <- AbstractApplicationParameterValueObject$`order`
      self$`required` <- AbstractApplicationParameterValueObject$`required`
      self$`type` <- AbstractApplicationParameterValueObject$`type`
      self$`validator` <- AbstractApplicationParameterValueObject$`validator`
      self$`visible` <- AbstractApplicationParameterValueObject$`visible`
    }
  )
)