# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave
# Science-as-a-Service API Platform. Agave provides hosted services that allow
# researchers to manage data, conduct experiments, and publish and share results from
# anywhere at any time.
#
# Agave Platform version: 2.2.14
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' The Tokens API is an OAuth2 endpoint handling all authentication and token
#' management for the Agave Platform.
#'
#'     > In order to fetch an access token, you ***must*** have a valid, registered [rAgave::Client]
#'     > application. Please see the [rAgave::ClientsApi] documentation for more on creating and
#'     > managing client keys.
#'
#' ```
#' api <- Agave$new(username="username", password="password"
#'                  clientKey="abcde", clientSecret="12345")
#'
#' myClient <- api$clients$create(clientName = "my_client")
#'
#' myToken = api$tokens$create(client=myClient)
#'
#' api$reload(client=myClient, token=myToken)
#' ```
#'
#' @title Agave Token API operations
#' @description
#' TokensApi Class
#'
#' OAuth2 token api client to manage credentials and session caching.
#'
#' > Note: This class is NOT generated by the swagger code generator program.
#'
#' @usage
#' tokens <- TokenApi$new(apiClient, cache, client, username, password, responseType="list")
#'
#'
#' @section Arguments:
#' \describe{
#'
#' `apiClient` a [rAgave::ApiClient] instance preconfigured to speak to the Agave Platform.
#'
#' `cache` an [rAgave::AgaveCache] instance pointing to the persistent auth cache file on disk.
#'
#' `client` a [rAgave::Client] instance with valid key and secret for the tenant pointed
#'   to by `apiClient`.
#'
#' `username` the username that will be used to authenticate the user and obtain an access token.
#'
#' `password` the password that will be used to authenticate the user and obtain an access token.
#'
#' `responseType` the default object type methods of this class should return. Valid values are:
#' * **raw**: the raw JSON string response from the API. You may optionally include
#'   `pretty=TRUE` in the method call to receive pretty printed JSON.
#' * **list**: a standard R list object. This is the default value.
#' * **dt**: a data table
#'
#' }
#'
#' @section Methods:
#' \describe{
#'
#' `$impersonate(tokenUsername)` fetches a token for another user. To use this
#' method, you must have the "impersonator" role.
#'
#' **Usage**
#'
#' ```
#' tokens$impersonate(tokenUsername="testuser")
#' tokens$impersonate(tokenUsername="testuser", username="username", password="password")
#' ```
#'
#' `$create(updateCache, client, username, password)` fetch a new token.
#'
#' **Usage**
#'
#' ```
#' tokens$create()
#' tokens$create(updateCache=TRUE,username=myUsername, password=myPassword, client=myClient)
#' ```
#'
#' `$refresh(updateCache, client, refreshToken)` refresh the current token using the
#' refreshToken cached on disk or provided to the method.
#'
#' **Usage**
#'
#' ```
#' tokens$refresh()
#' tokens$refresh(refreshToken=myRefreshToken, client=myClient)
#' ```
#'
#' `$revoke(updateCache, client, accessToken)`` revoke the given access token or
#' invalidate the one cached on disk.
#'
#' **Usage**
#'
#' ```
#' tokens$revoke()
#' tokens$revoke(accessToken="zyxwvut")
#' ```
#'
#' `$loadFromSystemConfiguration()` Read the local auth cache file and, if a token
#' is found, load and use that.
#'
#' **Usage**
#'
#' ```
#' tokens$loadFromSystemConfiguration()
#' ```
#'
#' }
#'
#' @importFrom R6 R6Class
#' @name TokensApi
#' @seealso [rAgave::Token] [rAgave::ClientsApi] [rAgave::Client]
#'
#' @export
TokensApi  <- R6::R6Class(
  'TokensApi',
  public = list(
    initialize = function(apiClient, cache, client, username, password, responseType) {
      if (missing(apiClient)) {
        apiClient = ApiClient$new()
      }

      private$apiClient = apiClient

      if (missing(cache)) {
        cache = AgaveCache$new()
      }

      if (missing(client)) {
        client = cache$getClient()
      }
      private$client = client

      if (!missing(username)) {
        private$username = username
      }

      if (!missing(password)) {
        private$password = password
      }

      private$authCache = cache

      # user can override the global representation in which resources
      # responses from this API are returned in when calling methods of
      # this class. The same responseType attribute may be passed to any
      # public method to override individual calls as well.
      if (missing(responseType) || is.null(responseType) || nchar(responseType) == 0) {
        # we ignore and use the default
      }
      else if (responseType != "raw" && responseType != "list" && responseType != "df") {
        stop("Invalid responseType. Please specify one of: raw, list, df")
      }
      else {
        # set the response type to the class default to be used
        # whenever it is not explicitly set on a request
        private$responseType = responseType
      }
    },

    loadFromSystemConfiguration = function() {

      token = authCache$getToken();

      # look for the client api key of the user in the environment and auth cache.
      # This will be used for interaction with the clients api and for token generation
      token$key = private$resolveConfigurationProperty(explicitValue = token$key, envPropertyName = "AGAVE_CLIENT_KEY")


      # look for the client secret key of the user in the environment and auth cache.
      # This will be used for interaction with the clients api and for token generation
      token$secret = private$resolveConfigurationProperty(explicitValue = token$secret, envPropertyName = "AGAVE_CLIENT_SECRET")

      # look for the username of the user in the environment and auth cache.
      # This will be used for interaction with the clients api and for token generation
      # as well as name resolution for auto-generated templates, etc.
      token$username <- private$resolveConfigurationProperty(configPropertyName = "username", envPropertyName = "AGAVE_USERNAME")

      # look for the password of the user in the environment and auth cache (should not be there).
      # This will be used for interaction with the clients api and for token generation
      # as well as name resolution for auto-generated templates, etc.
      token$password <- private$resolveConfigurationProperty(configPropertyName = "password", envPropertyName = "AGAVE_PASSWORD")

      # look for an access token explicitly provided for use in all authenticated api calls.
      # If present, this will be used for interaction with the clients api and for token generation
      token$access_token <- private$resolveConfigurationProperty(configPropertyName = "access_token", envPropertyName = "AGAVE_ACCESS_TOKEN")

      # look for a refresh token explicitly provided for use in all authenticated api calls.
      # If present, this will be used to obtain a new access token when th previous one expires
      token$refreshToken <- private$resolveConfigurationProperty(configPropertyName = "refresh_token", envPropertyName = "AGAVE_REFRESH_TOKEN")

      #private$authCache$setToken(token)

      token
    },

    impersonate = function(updateCache, client, tokenUsername, username, password) {

      if (missing(updateCache)) {
        updateCache <- FALSE
      }
      else {
        updateCache <- isTRUE(updateCache)
      }

      # pull the client from the cache if not present
      if (missing(client)) {
        client <- private$authCache$getClient()
      }

      # valiate impersonated username is present
      if (!missing(tokenUsername)) {
        stopifnot(is.character(`tokenUsername`), length(`tokenUsername`) == 1)
      }
      else {
        stopifnot(!missing(tokenUsername))
      }

      # valiate username is present
      if (!missing(username)) {
        stopifnot(is.character(username), length(username) == 1)
      }
      else {
        username = private$username
      }

      # valiate password is present
      if (!missing(password)) {
        stopifnot(is.character(`password`), length(`password`) == 1)
      }
      else {
        password = private$password
      }

      urlPath <- "/token"

      body <- list(token_username = tokenUsername,
                   username = username,
                   password = password,
                   grant_type= "admin_password",
                   scope = private$scope)

      logger.info("Creating new impersonation auth token...")

      resp <- httr::POST(url = paste0(private$apiClient$basePath, urlPath),
                         httr::authenticate(client$key, client$secret),
                         body = body,
                         encode = "form")

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        if (updateCache) {
          private$authCache$setToken(token)
        }
      }
      private$formatResponse(resp, args)
    },

    create = function(updateCache, client, username, password) {
      if (missing(updateCache)) {
        updateCache <- FALSE
      }
      else {
        updateCache <- isTRUE(updateCache)
      }

      # pull the client from the cache if not present
      if (missing(client)) {
        client <- private$client
      }

      # valiate username is present
      if (!missing(username)) {
        stopifnot(is.character(username), length(username) == 1)
      }
      else {
        username = private$username
      }

      # valiate password is present
      if (!missing(password)) {
        stopifnot(is.character(`password`), length(`password`) == 1)
      }
      else {
        password = private$password
      }

      urlPath <- "/token"

      body <- list(username = username,
                   password = password,
                   grant_type = "password",
                   scope = private$scope)

      logger.info("Creating new auth token...")

      resp <- httr::POST(url = paste0(private$apiClient$basePath, urlPath),
                         httr::authenticate(client$key,client$secret),
                         body = body,
                         encode = "form")

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        if (updateCache) {
          returnObject <- Token$new()
          result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
          private$authCache$setToken(returnObject)
        }
      }
      private$formatResponse(resp, args)
    },

    refresh = function(updateCache, client, refreshToken) {
      if (missing(updateCache)) {
        updateCache <- FALSE
      }
      else {
        updateCache <- isTRUE(updateCache)
      }

      # pull the client from the cache if not present
      if (missing(client)) {
        client <- private$client
      }

      # pull the refreshToken from the cache if not present
      if (missing(refreshToken)) {
        refreshToken <- private$authCache$getToken()$refresh_token
      }

      urlPath <- "/token"

      body <- list(refresh_token = refreshToken,
                   grant_type= "refresh_token",
                   scope = private$scope)

      logger.info("Refreshing auth token...")

      resp <- httr::POST(url = paste0(private$apiClient$basePath, urlPath),
                         httr::authenticate(client$key,client$secret),
                         body = body,
                         encode = "form")

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        if (updateCache) {
          returnObject <- Token$new()
          result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
          private$authCache$setToken(returnObject)
        }
      }

      private$formatResponse(resp, args)

    },

    revoke = function(updateCache, client, accessToken) {
      if (missing(updateCache)) {
        updateCache <- FALSE
      }
      else {
        updateCache <- isTRUE(updateCache)
      }

      # pull the client from the cache if not present
      if (missing(client)) {
        client <- private$authCache$getClient()
      }

      # pull the refreshToken from the cache if not present
      if (missing(accessToken)) {
        accessToken <- private$authCache$getToken()$access_token
      }

      urlPath <- "/revoke"

      body <- list(token = accessToken)

      logger.info("Refreshing auth token...")

      resp <- httr::POST(url = paste0(private$apiClient$basePath, urlPath),
                         httr::authenticate(client$key,client$secret),
                         body = body,
                         encode = "form")

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        if (updateCache) {
          private$authCache$setToken(Token$new())
        }
      }
      private$formatResponse(resp, args)
    }
  ),
  private = list(
    authCache = NULL,
    username = NULL,
    password = NULL,
    client = NULL,
    apiClient = NULL,
    scope = "PRODUCTION",
    responseType = "list",
    resolveConfigurationProperty = function(explicitValue, configPropertyName, envPropertyName) {

      val <- NULL
      if (!missing(explicitValue) && !is.null(explicitValue) && nchar(explicitValue) > 1) {
        val <- explicitValue
      }

      if ((is.null(val) || nchar(val) == 0) && !missing(envPropertyName) && !is.null(envPropertyName)) {
        val <- Sys.getenv(envPropertyName)
      }

      if ((is.null(val) || nchar(val) == 0) && !missing(configPropertyName) && !is.null(configPropertyName)) {
        val <- private$authCache$getProperty(configPropertyName)
      }

      val
    },
    formatResponse = function(resp, args=list()) {

      # read the args from the unnamed request args
      if ("responseType" %in% names(args)) {
        responseType = args$responseType
      }
      else {
        responseType = NULL
      }

      if (is.null(responseType) || nchar(responseType) == 0) {
        responseType = private$responseType
      }

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        logger.debug(jsonlite::toJSON(httr::content(resp,stringsAsFactors = FALSE), auto_unbox=TRUE, null="null", na="null"))

        if (responseType == "raw") {
          # check for the undeclared pretty attibute to pretty-print the json response
          prettyPrint <- ("pretty" %in% names(args) && isTRUE(args$pretty))
          jsonlite::toJSON(httr::content(resp, stringsAsFactors = FALSE), auto_unbox=TRUE, null="null", na="null", pretty=prettyPrint)
        }
        else {
          jsonResp <- httr::content(resp)
          if ("result" %in% names(jsonResp)) {
            jsonResp <- jsonResp$result
          }

          if (responseType == "df" && length(jsonResp) > 0) {
            # lookup properties of object. if null, it's a list. if not null, it's an object
            colNames <- names(jsonResp)
            if (is.null(colNames)) {
              # convert to a list of dataframes
              do.call("rbind", lapply(jsonResp, as.data.frame, col.names=factor(names(jsonResp[[1]]))))
            }
            else {
              # convert object to single data frame
              as.data.frame(jsonResp)
            }
          }
          else {
            jsonResp
          }
        }

      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        logger.warn(jsonlite::toJSON(httr::content(resp, "text", encoding="UTF-8"), auto_unbox=TRUE, null="null", na="null"))
        httr::content(resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        logger.warn(jsonlite::toJSON(httr::content(resp, "text", encoding="UTF-8"), auto_unbox=TRUE, null="null", na="null"))
        httr::content(resp)
      }
    }
  )
)
