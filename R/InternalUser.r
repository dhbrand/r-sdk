# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' InternalUser Class
#'
#' @field city 
#' @field country 
#' @field department 
#' @field email 
#' @field fax 
#' @field firstName 
#' @field gender 
#' @field institution 
#' @field lastName 
#' @field phone 
#' @field position 
#' @field researchArea 
#' @field state 
#' @field username 
#' @field password 
#' @field uuid 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InternalUser <- R6::R6Class(
  'InternalUser',
  public = list(
    `city` = NULL,
    `country` = NULL,
    `department` = NULL,
    `email` = NULL,
    `fax` = NULL,
    `firstName` = NULL,
    `gender` = NULL,
    `institution` = NULL,
    `lastName` = NULL,
    `phone` = NULL,
    `position` = NULL,
    `researchArea` = NULL,
    `state` = NULL,
    `username` = NULL,
    `password` = NULL,
    `uuid` = NULL,
    initialize = function(`city`, `country`, `department`, `email`, `fax`, `firstName`, `gender`, `institution`, `lastName`, `phone`, `position`, `researchArea`, `state`, `username`, `password`, `uuid`){
      if (!missing(`city`)) {
        stopifnot(is.character(`city`), length(`city`) == 1)
        self$`city` <- `city`
      }
      if (!missing(`country`)) {
        stopifnot(is.character(`country`), length(`country`) == 1)
        self$`country` <- `country`
      }
      if (!missing(`department`)) {
        stopifnot(is.character(`department`), length(`department`) == 1)
        self$`department` <- `department`
      }
      if (!missing(`email`)) {
        stopifnot(is.character(`email`), length(`email`) == 1)
        self$`email` <- `email`
      }
      if (!missing(`fax`)) {
        stopifnot(is.character(`fax`), length(`fax`) == 1)
        self$`fax` <- `fax`
      }
      if (!missing(`firstName`)) {
        stopifnot(is.character(`firstName`), length(`firstName`) == 1)
        self$`firstName` <- `firstName`
      }
      if (!missing(`gender`)) {
        stopifnot(R6::is.R6(`gender`))
        self$`gender` <- `gender`
      }
      if (!missing(`institution`)) {
        stopifnot(is.character(`institution`), length(`institution`) == 1)
        self$`institution` <- `institution`
      }
      if (!missing(`lastName`)) {
        stopifnot(is.character(`lastName`), length(`lastName`) == 1)
        self$`lastName` <- `lastName`
      }
      if (!missing(`phone`)) {
        stopifnot(is.character(`phone`), length(`phone`) == 1)
        self$`phone` <- `phone`
      }
      if (!missing(`position`)) {
        stopifnot(is.character(`position`), length(`position`) == 1)
        self$`position` <- `position`
      }
      if (!missing(`researchArea`)) {
        stopifnot(is.character(`researchArea`), length(`researchArea`) == 1)
        self$`researchArea` <- `researchArea`
      }
      if (!missing(`state`)) {
        stopifnot(is.character(`state`), length(`state`) == 1)
        self$`state` <- `state`
      }
      if (!missing(`username`)) {
        stopifnot(is.character(`username`), length(`username`) == 1)
        self$`username` <- `username`
      }
      if (!missing(`password`)) {
        stopifnot(is.character(`password`), length(`password`) == 1)
        self$`password` <- `password`
      }
      if (!missing(`uuid`)) {
        stopifnot(is.character(`uuid`), length(`uuid`) == 1)
        self$`uuid` <- `uuid`
      }
    },
    toJSON = function() {
      InternalUserObject <- list()
      if (!is.null(self$`city`)) {
        InternalUserObject[['city']] <- self$`city`
      }
      if (!is.null(self$`country`)) {
        InternalUserObject[['country']] <- self$`country`
      }
      if (!is.null(self$`department`)) {
        InternalUserObject[['department']] <- self$`department`
      }
      if (!is.null(self$`email`)) {
        InternalUserObject[['email']] <- self$`email`
      }
      if (!is.null(self$`fax`)) {
        InternalUserObject[['fax']] <- self$`fax`
      }
      if (!is.null(self$`firstName`)) {
        InternalUserObject[['firstName']] <- self$`firstName`
      }
      if (!is.null(self$`gender`)) {
        InternalUserObject[['gender']] <- self$`gender`$toJSON()
      }
      if (!is.null(self$`institution`)) {
        InternalUserObject[['institution']] <- self$`institution`
      }
      if (!is.null(self$`lastName`)) {
        InternalUserObject[['lastName']] <- self$`lastName`
      }
      if (!is.null(self$`phone`)) {
        InternalUserObject[['phone']] <- self$`phone`
      }
      if (!is.null(self$`position`)) {
        InternalUserObject[['position']] <- self$`position`
      }
      if (!is.null(self$`researchArea`)) {
        InternalUserObject[['researchArea']] <- self$`researchArea`
      }
      if (!is.null(self$`state`)) {
        InternalUserObject[['state']] <- self$`state`
      }
      if (!is.null(self$`username`)) {
        InternalUserObject[['username']] <- self$`username`
      }
      if (!is.null(self$`password`)) {
        InternalUserObject[['password']] <- self$`password`
      }
      if (!is.null(self$`uuid`)) {
        InternalUserObject[['uuid']] <- self$`uuid`
      }

      InternalUserObject
    },
    fromJSON = function(InternalUserJson) {
      InternalUserObject <- jsonlite::fromJSON(InternalUserJson)
      if (!is.null(InternalUserObject$`city`)) {
        self$`city` <- InternalUserObject$`city`
      }
      if (!is.null(InternalUserObject$`country`)) {
        self$`country` <- InternalUserObject$`country`
      }
      if (!is.null(InternalUserObject$`department`)) {
        self$`department` <- InternalUserObject$`department`
      }
      if (!is.null(InternalUserObject$`email`)) {
        self$`email` <- InternalUserObject$`email`
      }
      if (!is.null(InternalUserObject$`fax`)) {
        self$`fax` <- InternalUserObject$`fax`
      }
      if (!is.null(InternalUserObject$`firstName`)) {
        self$`firstName` <- InternalUserObject$`firstName`
      }
      if (!is.null(InternalUserObject$`gender`)) {
        genderObject <- Gender$new()
        genderObject$fromJSON(jsonlite::toJSON(InternalUserObject$gender, auto_unbox = TRUE))
        self$`gender` <- genderObject
      }
      if (!is.null(InternalUserObject$`institution`)) {
        self$`institution` <- InternalUserObject$`institution`
      }
      if (!is.null(InternalUserObject$`lastName`)) {
        self$`lastName` <- InternalUserObject$`lastName`
      }
      if (!is.null(InternalUserObject$`phone`)) {
        self$`phone` <- InternalUserObject$`phone`
      }
      if (!is.null(InternalUserObject$`position`)) {
        self$`position` <- InternalUserObject$`position`
      }
      if (!is.null(InternalUserObject$`researchArea`)) {
        self$`researchArea` <- InternalUserObject$`researchArea`
      }
      if (!is.null(InternalUserObject$`state`)) {
        self$`state` <- InternalUserObject$`state`
      }
      if (!is.null(InternalUserObject$`username`)) {
        self$`username` <- InternalUserObject$`username`
      }
      if (!is.null(InternalUserObject$`password`)) {
        self$`password` <- InternalUserObject$`password`
      }
      if (!is.null(InternalUserObject$`uuid`)) {
        self$`uuid` <- InternalUserObject$`uuid`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "city": %s,
           "country": %s,
           "department": %s,
           "email": %s,
           "fax": %s,
           "firstName": %s,
           "gender": %s,
           "institution": %s,
           "lastName": %s,
           "phone": %s,
           "position": %s,
           "researchArea": %s,
           "state": %s,
           "username": %s,
           "password": %s,
           "uuid": %s
        }',
        self$`city`,
        self$`country`,
        self$`department`,
        self$`email`,
        self$`fax`,
        self$`firstName`,
        self$`gender`$toJSON(),
        self$`institution`,
        self$`lastName`,
        self$`phone`,
        self$`position`,
        self$`researchArea`,
        self$`state`,
        self$`username`,
        self$`password`,
        self$`uuid`
      )
    },
    fromJSONString = function(InternalUserJson) {
      InternalUserObject <- jsonlite::fromJSON(InternalUserJson)
      self$`city` <- InternalUserObject$`city`
      self$`country` <- InternalUserObject$`country`
      self$`department` <- InternalUserObject$`department`
      self$`email` <- InternalUserObject$`email`
      self$`fax` <- InternalUserObject$`fax`
      self$`firstName` <- InternalUserObject$`firstName`
      GenderObject -> Gender$new()
      self$`gender` <- GenderObject$fromJSON(jsonlite::toJSON(InternalUserObject$gender, auto_unbox = TRUE))
      self$`institution` <- InternalUserObject$`institution`
      self$`lastName` <- InternalUserObject$`lastName`
      self$`phone` <- InternalUserObject$`phone`
      self$`position` <- InternalUserObject$`position`
      self$`researchArea` <- InternalUserObject$`researchArea`
      self$`state` <- InternalUserObject$`state`
      self$`username` <- InternalUserObject$`username`
      self$`password` <- InternalUserObject$`password`
      self$`uuid` <- InternalUserObject$`uuid`
    }
  )
)
