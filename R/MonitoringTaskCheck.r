# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
#
# Agave Platform version: 2.2.14
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' MonitoringTaskCheck Class
#'
#' An individual check made for a monitoring task. 
#'
#' @field created A timestamp indicating when this monitor check was created.
#' @field id The UUID for this monitor check.
#' @field message The error message if this monitor check failed.
#' @field result 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MonitoringTaskCheck <- R6::R6Class(
  'MonitoringTaskCheck',
  public = list(
    `created` = NULL,
    `id` = NULL,
    `message` = NULL,
    `result` = NULL,
    initialize = function(`created`, `id`, `message`, `result`){
      if (!missing(`created`)) {
        stopifnot(is.character(`created`), length(`created`) == 1)
        self$`created` <- `created`
      }
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`message`)) {
        stopifnot(is.character(`message`), length(`message`) == 1)
        self$`message` <- `message`
      }
      if (!missing(`result`)) {
        stopifnot(R6::is.R6(`result`))
        self$`result` <- `result`
      }
    },
    asJSON = function() {
      self$toJSON()
    },
    toJSON = function() {
      MonitoringTaskCheckObject <- list()
      if (!is.null(self$`created`)) {
        MonitoringTaskCheckObject[['created']] <- self$`created`
      }
      else {
        MonitoringTaskCheckObject[['created']] <- NULL
      }
      if (!is.null(self$`id`)) {
        MonitoringTaskCheckObject[['id']] <- self$`id`
      }
      else {
        MonitoringTaskCheckObject[['id']] <- NULL
      }
      if (!is.null(self$`message`)) {
        MonitoringTaskCheckObject[['message']] <- self$`message`
      }
      else {
        MonitoringTaskCheckObject[['message']] <- NULL
      }
      if (!is.null(self$`result`)) {
        MonitoringTaskCheckObject[['result']] <- self$`result`$toJSON()
      }
      else {
        MonitoringTaskCheckObject[['result']] <- NULL
      }

      MonitoringTaskCheckObject
    },
    fromJSON = function(MonitoringTaskCheckObject) {
      if (is.character(MonitoringTaskCheckObject)) {
        MonitoringTaskCheckObject <- jsonlite::fromJSON(MonitoringTaskCheckJson)
      }

      if ("result" %in% names(MonitoringTaskCheckObject)) {
        MonitoringTaskCheckObject <- MonitoringTaskCheckObject$result
      }

      if (!is.null(MonitoringTaskCheckObject$`created`)) {
        self$`created` <- MonitoringTaskCheckObject$`created`
      }
      if (!is.null(MonitoringTaskCheckObject$`id`)) {
        self$`id` <- MonitoringTaskCheckObject$`id`
      }
      if (!is.null(MonitoringTaskCheckObject$`message`)) {
        self$`message` <- MonitoringTaskCheckObject$`message`
      }
      if (!is.null(MonitoringTaskCheckObject$`result`)) {
        resultObject <- MonitorCheckResultType$new()
        resultObject$fromJSON(jsonlite::toJSON(MonitoringTaskCheckObject$result, auto_unbox = TRUE))
        self$`result` <- resultObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "created": %s,
           "id": %s,
           "message": %s,
           "result": %s
        }',
        ifelse( is.null(self$`created`),"null",paste0(c('"', self$`created`, '"'))),
        ifelse( is.null(self$`id`),"null",paste0(c('"', self$`id`, '"'))),
        ifelse( is.null(self$`message`),"null",paste0(c('"', self$`message`, '"'))),
        self$`result`$toJSON()
      )
    },
    fromJSONString = function(MonitoringTaskCheckJson) {
      MonitoringTaskCheckObject <- jsonlite::fromJSON(MonitoringTaskCheckJson)
      self::fromJSON(MonitoringTaskCheckObject)

    }
  )
)
