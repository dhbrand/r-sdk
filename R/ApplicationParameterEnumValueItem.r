# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
#
# Agave Platform version: 2.2.14
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApplicationParameterEnumValueItem Class
#'
#' Enumerated single attribute object representing an enumeration value for an ApplicationParamaeterEnumValue. While a single pimary type may be specified, an ApplicationParameterEnumValueItem is the recommended structure as it allows for better display for consumers rendering enumerated values as HTML select elemetns.
#'
#' @field key The enumerated value.
#' @field value The value of the enumeration to display in a dropdown list
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
    asJSON = function() {
      self$toJSON()
    },
    toJSON = function() {
      ApplicationParameterEnumValueItemObject <- list()
      if (!is.null(self$`key`)) {
        ApplicationParameterEnumValueItemObject[['key']] <- self$`key`
      }
      else {
        ApplicationParameterEnumValueItemObject[['key']] <- NULL
      }
      if (!is.null(self$`value`)) {
        ApplicationParameterEnumValueItemObject[['value']] <- self$`value`
      }
      else {
        ApplicationParameterEnumValueItemObject[['value']] <- NULL
      }

      ApplicationParameterEnumValueItemObject
    },
    fromJSON = function(ApplicationParameterEnumValueItemObject) {
      if (is.character(ApplicationParameterEnumValueItemObject)) {
        ApplicationParameterEnumValueItemObject <- jsonlite::fromJSON(ApplicationParameterEnumValueItemJson)
      }

      if ("result" %in% names(ApplicationParameterEnumValueItemObject)) {
        ApplicationParameterEnumValueItemObject <- ApplicationParameterEnumValueItemObject$result
      }

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
        ifelse( is.null(self$`key`),"null",paste0(c('"', self$`key`, '"'))),
        ifelse( is.null(self$`value`),"null",paste0(c('"', self$`value`, '"')))
      )
    },
    fromJSONString = function(ApplicationParameterEnumValueItemJson) {
      ApplicationParameterEnumValueItemObject <- jsonlite::fromJSON(ApplicationParameterEnumValueItemJson)
      self::fromJSON(ApplicationParameterEnumValueItemObject)

    }
  )
)
