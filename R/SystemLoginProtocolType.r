# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SystemLoginProtocolType Class
#'
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SystemLoginProtocolType <- R6::R6Class(
  'SystemLoginProtocolType',
  public = list(
    initialize = function(){
    },
    toJSON = function() {
      SystemLoginProtocolTypeObject <- list()

      SystemLoginProtocolTypeObject
    },
    fromJSON = function(SystemLoginProtocolTypeJson) {
      SystemLoginProtocolTypeObject <- jsonlite::fromJSON(SystemLoginProtocolTypeJson)
    },
    toJSONString = function() {
       sprintf(
        '{
        }',
      )
    },
    fromJSONString = function(SystemLoginProtocolTypeJson) {
      SystemLoginProtocolTypeObject <- jsonlite::fromJSON(SystemLoginProtocolTypeJson)
    }
  )
)
