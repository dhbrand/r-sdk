# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ClientSubscriptionTier Class
#'
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ClientSubscriptionTier <- R6::R6Class(
  'ClientSubscriptionTier',
  public = list(
    initialize = function(){
    },
    toJSON = function() {
      ClientSubscriptionTierObject <- list()

      ClientSubscriptionTierObject
    },
    fromJSON = function(ClientSubscriptionTierJson) {
      ClientSubscriptionTierObject <- jsonlite::fromJSON(ClientSubscriptionTierJson)
    },
    toJSONString = function() {
       sprintf(
        '{
        }',
      )
    },
    fromJSONString = function(ClientSubscriptionTierJson) {
      ClientSubscriptionTierObject <- jsonlite::fromJSON(ClientSubscriptionTierJson)
    }
  )
)