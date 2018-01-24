# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Apps operations
#' @description swagger.Apps
#'
#' @field path Stores url path of the request.
#' @field apiClient Handles the client-server communication.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' add_app  
#'
#'
#' add_app_permission  
#'
#'
#' clear_app_permissions  
#'
#'
#' delete_app  
#'
#'
#' delete_app_permission  
#'
#'
#' get_app_details  
#'
#'
#' get_app_permission  
#'
#'
#' get_app_submission_form  
#'
#'
#' invoke_app_action  
#'
#'
#' list_app_history  
#'
#'
#' list_app_permissions  
#'
#'
#' list_apps List apps 
#'
#'
#' update_app  
#'
#'
#' update_app_permission  
#'
#' }
#' 
#' @export
AppsApi <- R6::R6Class(
  'AppsApi',
  public = list(
    userAgent = "Swagger-Codegen/1.0.0/r",
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    add_app = function(naked, body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/apps/v2/"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body, 
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Application$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    add_app_permission = function(app_id, body, naked, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/apps/v2/{appId}/pems"
      if (!missing(`app_id`)) {
        urlPath <- gsub(paste0("\\{", "appId", "\\}"), `app_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body, 
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Permission$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    clear_app_permissions = function(app_id, naked, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/apps/v2/{appId}/pems"
      if (!missing(`app_id`)) {
        urlPath <- gsub(paste0("\\{", "appId", "\\}"), `app_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "DELETE",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body, 
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    delete_app = function(app_id, naked, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/apps/v2/{appId}"
      if (!missing(`app_id`)) {
        urlPath <- gsub(paste0("\\{", "appId", "\\}"), `app_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "DELETE",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body, 
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    delete_app_permission = function(app_id, username, naked, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/apps/v2/{appId}/pems/{username}"
      if (!missing(`app_id`)) {
        urlPath <- gsub(paste0("\\{", "appId", "\\}"), `app_id`, urlPath)
      }

      if (!missing(`username`)) {
        urlPath <- gsub(paste0("\\{", "username", "\\}"), `username`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "DELETE",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body, 
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_app_details = function(app_id, naked, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/apps/v2/{appId}"
      if (!missing(`app_id`)) {
        urlPath <- gsub(paste0("\\{", "appId", "\\}"), `app_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body, 
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Application$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_app_permission = function(app_id, username, filter, naked, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`filter`)) {
        queryParams['filter'] <- filter
      }

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/apps/v2/{appId}/pems/{username}"
      if (!missing(`app_id`)) {
        urlPath <- gsub(paste0("\\{", "appId", "\\}"), `app_id`, urlPath)
      }

      if (!missing(`username`)) {
        urlPath <- gsub(paste0("\\{", "username", "\\}"), `username`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body, 
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Permission$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_app_submission_form = function(app_id, naked, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/apps/v2/{appId}/form"
      if (!missing(`app_id`)) {
        urlPath <- gsub(paste0("\\{", "appId", "\\}"), `app_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body, 
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Character$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    invoke_app_action = function(app_id, body, naked, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/apps/v2/{appId}"
      if (!missing(`app_id`)) {
        urlPath <- gsub(paste0("\\{", "appId", "\\}"), `app_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "PUT",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body, 
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Application$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    list_app_history = function(naked, app_id, status, created, limit, offset, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`status`)) {
        queryParams['status'] <- status
      }

      if (!missing(`created`)) {
        queryParams['created'] <- created
      }

      if (!missing(`limit`)) {
        queryParams['limit'] <- limit
      }

      if (!missing(`offset`)) {
        queryParams['offset'] <- offset
      }

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/apps/v2/{appId}/history"
      if (!missing(`app_id`)) {
        urlPath <- gsub(paste0("\\{", "appId", "\\}"), `app_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body, 
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- HistoryEvent$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    list_app_permissions = function(app_id, filter, naked, limit, offset, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`filter`)) {
        queryParams['filter'] <- filter
      }

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      if (!missing(`limit`)) {
        queryParams['limit'] <- limit
      }

      if (!missing(`offset`)) {
        queryParams['offset'] <- offset
      }

      urlPath <- "/apps/v2/{appId}/pems"
      if (!missing(`app_id`)) {
        urlPath <- gsub(paste0("\\{", "appId", "\\}"), `app_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body, 
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Permission$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    list_apps = function(public, name, execution_system, tags, filter, naked, limit, offset, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`public`)) {
        queryParams['public'] <- public
      }

      if (!missing(`name`)) {
        queryParams['name'] <- name
      }

      if (!missing(`execution_system`)) {
        queryParams['executionSystem'] <- execution_system
      }

      if (!missing(`tags`)) {
        queryParams['tags'] <- tags
      }

      if (!missing(`filter`)) {
        queryParams['filter'] <- filter
      }

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      if (!missing(`limit`)) {
        queryParams['limit'] <- limit
      }

      if (!missing(`offset`)) {
        queryParams['offset'] <- offset
      }

      urlPath <- "/apps/v2/"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body, 
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- ApplicationSummary$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    update_app = function(app_id, body, naked, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/apps/v2/{appId}"
      if (!missing(`app_id`)) {
        urlPath <- gsub(paste0("\\{", "appId", "\\}"), `app_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body, 
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Application$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    update_app_permission = function(app_id, username, body, naked, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/apps/v2/{appId}/pems/{username}"
      if (!missing(`app_id`)) {
        urlPath <- gsub(paste0("\\{", "appId", "\\}"), `app_id`, urlPath)
      }

      if (!missing(`username`)) {
        urlPath <- gsub(paste0("\\{", "username", "\\}"), `username`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body, 
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Permission$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    }
  )
) 
