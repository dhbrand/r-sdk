# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' TenantContact Class
#'
#' @field name 
#' @field email 
#' @field url 
#' @field type 
#' @field primary 
#' @field contact 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TenantContact <- R6::R6Class(
  'TenantContact',
  public = list(
    `name` = NULL,
    `email` = NULL,
    `url` = NULL,
    `type` = NULL,
    `primary` = NULL,
    `contact` = NULL,
    initialize = function(`name`, `email`, `url`, `type`, `primary`, `contact`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`email`)) {
        stopifnot(is.character(`email`), length(`email`) == 1)
        self$`email` <- `email`
      }
      if (!missing(`url`)) {
        stopifnot(is.character(`url`), length(`url`) == 1)
        self$`url` <- `url`
      }
      if (!missing(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!missing(`primary`)) {
        self$`primary` <- `primary`
      }
      if (!missing(`contact`)) {
        stopifnot(R6::is.R6(`contact`))
        self$`contact` <- `contact`
      }
    },
    toJSON = function() {
      TenantContactObject <- list()
      if (!is.null(self$`name`)) {
        TenantContactObject[['name']] <- self$`name`
      }
      if (!is.null(self$`email`)) {
        TenantContactObject[['email']] <- self$`email`
      }
      if (!is.null(self$`url`)) {
        TenantContactObject[['url']] <- self$`url`
      }
      if (!is.null(self$`type`)) {
        TenantContactObject[['type']] <- self$`type`
      }
      if (!is.null(self$`primary`)) {
        TenantContactObject[['primary']] <- self$`primary`
      }
      if (!is.null(self$`contact`)) {
        TenantContactObject[['contact']] <- self$`contact`$toJSON()
      }

      TenantContactObject
    },
    fromJSON = function(TenantContactJson) {
      TenantContactObject <- jsonlite::fromJSON(TenantContactJson)
      if (!is.null(TenantContactObject$`name`)) {
        self$`name` <- TenantContactObject$`name`
      }
      if (!is.null(TenantContactObject$`email`)) {
        self$`email` <- TenantContactObject$`email`
      }
      if (!is.null(TenantContactObject$`url`)) {
        self$`url` <- TenantContactObject$`url`
      }
      if (!is.null(TenantContactObject$`type`)) {
        self$`type` <- TenantContactObject$`type`
      }
      if (!is.null(TenantContactObject$`primary`)) {
        self$`primary` <- TenantContactObject$`primary`
      }
      if (!is.null(TenantContactObject$`contact`)) {
        contactObject <- TenantContact$new()
        contactObject$fromJSON(jsonlite::toJSON(TenantContactObject$contact, auto_unbox = TRUE))
        self$`contact` <- contactObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "email": %s,
           "url": %s,
           "type": %s,
           "primary": %s,
           "contact": %s
        }',
        self$`name`,
        self$`email`,
        self$`url`,
        self$`type`,
        self$`primary`,
        self$`contact`$toJSON()
      )
    },
    fromJSONString = function(TenantContactJson) {
      TenantContactObject <- jsonlite::fromJSON(TenantContactJson)
      self$`name` <- TenantContactObject$`name`
      self$`email` <- TenantContactObject$`email`
      self$`url` <- TenantContactObject$`url`
      self$`type` <- TenantContactObject$`type`
      self$`primary` <- TenantContactObject$`primary`
      TenantContactObject -> TenantContact$new()
      self$`contact` <- TenantContactObject$fromJSON(jsonlite::toJSON(TenantContactObject$contact, auto_unbox = TRUE))
    }
  )
)
