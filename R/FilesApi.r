# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Files operations
#' @description swagger.Files
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
#' clear_file_item_permissions  
#'
#'
#' delete_file_item  
#'
#'
#' delete_file_item_on_default_system  
#'
#'
#' download_file_item  
#'
#'
#' download_file_item_on_default_system  
#'
#'
#' import_file_item  
#'
#'
#' import_file_item_to_default_system  
#'
#'
#' invoke_file_action_on_default_system  
#'
#'
#' invoke_file_item_action  
#'
#'
#' list_file_item_history  
#'
#'
#' list_file_item_history_on_default_system  
#'
#'
#' list_file_item_permissions  
#'
#'
#' list_file_item_permissions_on_default_system  
#'
#'
#' list_file_items  
#'
#'
#' list_file_items_on_default_system  
#'
#'
#' update_file_item_permission  
#'
#'
#' update_file_item_permissions_on_default_system  
#'
#' }
#' 
#' @export
FilesApi <- R6::R6Class(
  'FilesApi',
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
    clear_file_item_permissions = function(file_path, system_id, naked, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/files/v2/pems/system/{systemId}/{filePath}"
      if (!missing(`file_path`)) {
        urlPath <- gsub(paste0("\\{", "filePath", "\\}"), `file_path`, urlPath)
      }

      if (!missing(`system_id`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `system_id`, urlPath)
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
    delete_file_item = function(system_id, file_path, naked, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/files/v2/media/system/{systemId}/{filePath}"
      if (!missing(`system_id`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `system_id`, urlPath)
      }

      if (!missing(`file_path`)) {
        urlPath <- gsub(paste0("\\{", "filePath", "\\}"), `file_path`, urlPath)
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
    delete_file_item_on_default_system = function(file_path, naked, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/files/v2/media/{filePath}"
      if (!missing(`file_path`)) {
        urlPath <- gsub(paste0("\\{", "filePath", "\\}"), `file_path`, urlPath)
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
    download_file_item = function(system_id, file_path, force, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`force`)) {
        queryParams['force'] <- force
      }

      urlPath <- "/files/v2/media/system/{systemId}/{filePath}"
      if (!missing(`system_id`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `system_id`, urlPath)
      }

      if (!missing(`file_path`)) {
        urlPath <- gsub(paste0("\\{", "filePath", "\\}"), `file_path`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
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
    download_file_item_on_default_system = function(file_path, force, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`force`)) {
        queryParams['force'] <- force
      }

      urlPath <- "/files/v2/media/{filePath}"
      if (!missing(`file_path`)) {
        urlPath <- gsub(paste0("\\{", "filePath", "\\}"), `file_path`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
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
    import_file_item = function(system_id, file_path, body, naked, ...){
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

      urlPath <- "/files/v2/media/system/{systemId}/{filePath}"
      if (!missing(`system_id`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `system_id`, urlPath)
      }

      if (!missing(`file_path`)) {
        urlPath <- gsub(paste0("\\{", "filePath", "\\}"), `file_path`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body, 
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- FileInfo$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    import_file_item_to_default_system = function(file_path, body, naked, ...){
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

      urlPath <- "/files/v2/media/{filePath}"
      if (!missing(`file_path`)) {
        urlPath <- gsub(paste0("\\{", "filePath", "\\}"), `file_path`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body, 
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- FileInfo$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    invoke_file_action_on_default_system = function(file_path, body, naked, ...){
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

      urlPath <- "/files/v2/media/{filePath}"
      if (!missing(`file_path`)) {
        urlPath <- gsub(paste0("\\{", "filePath", "\\}"), `file_path`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "PUT",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body, 
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- TODO_OBJECT_MAPPING$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    invoke_file_item_action = function(system_id, file_path, body, naked, ...){
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

      urlPath <- "/files/v2/media/system/{systemId}/{filePath}"
      if (!missing(`system_id`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `system_id`, urlPath)
      }

      if (!missing(`file_path`)) {
        urlPath <- gsub(paste0("\\{", "filePath", "\\}"), `file_path`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "PUT",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body, 
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- TODO_OBJECT_MAPPING$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    list_file_item_history = function(file_path, system_id, status, created, filter, naked, limit, offset, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`status`)) {
        queryParams['status'] <- status
      }

      if (!missing(`created`)) {
        queryParams['created'] <- created
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

      urlPath <- "/files/v2/history/system/{systemId}/{filePath}"
      if (!missing(`file_path`)) {
        urlPath <- gsub(paste0("\\{", "filePath", "\\}"), `file_path`, urlPath)
      }

      if (!missing(`system_id`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `system_id`, urlPath)
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
    list_file_item_history_on_default_system = function(file_path, status, created, filter, naked, limit, offset, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`status`)) {
        queryParams['status'] <- status
      }

      if (!missing(`created`)) {
        queryParams['created'] <- created
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

      urlPath <- "/files/v2/history/{filePath}"
      if (!missing(`file_path`)) {
        urlPath <- gsub(paste0("\\{", "filePath", "\\}"), `file_path`, urlPath)
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
    list_file_item_permissions = function(file_path, naked, system_id, limit, offset, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`limit`)) {
        queryParams['limit'] <- limit
      }

      if (!missing(`offset`)) {
        queryParams['offset'] <- offset
      }

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/files/v2/pems/system/{systemId}/{filePath}"
      if (!missing(`file_path`)) {
        urlPath <- gsub(paste0("\\{", "filePath", "\\}"), `file_path`, urlPath)
      }

      if (!missing(`system_id`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `system_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body, 
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- FilePermission$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    list_file_item_permissions_on_default_system = function(file_path, naked, limit, offset, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`limit`)) {
        queryParams['limit'] <- limit
      }

      if (!missing(`offset`)) {
        queryParams['offset'] <- offset
      }

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/files/v2/pems/{filePath}"
      if (!missing(`file_path`)) {
        urlPath <- gsub(paste0("\\{", "filePath", "\\}"), `file_path`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body, 
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- FilePermission$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    list_file_items = function(system_id, file_path, naked, limit, offset, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      if (!missing(`limit`)) {
        queryParams['limit'] <- limit
      }

      if (!missing(`offset`)) {
        queryParams['offset'] <- offset
      }

      urlPath <- "/files/v2/listings/system/{systemId}/{filePath}"
      if (!missing(`system_id`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `system_id`, urlPath)
      }

      if (!missing(`file_path`)) {
        urlPath <- gsub(paste0("\\{", "filePath", "\\}"), `file_path`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body, 
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- FileInfo$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    list_file_items_on_default_system = function(filepath, filter, naked, limit, offset, ...){
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

      urlPath <- "/files/v2/listings/{filepath}"
      if (!missing(`filepath`)) {
        urlPath <- gsub(paste0("\\{", "filepath", "\\}"), `filepath`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body, 
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- FileInfo$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    update_file_item_permission = function(file_path, system_id, body, naked, ...){
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

      urlPath <- "/files/v2/pems/system/{systemId}/{filePath}"
      if (!missing(`file_path`)) {
        urlPath <- gsub(paste0("\\{", "filePath", "\\}"), `file_path`, urlPath)
      }

      if (!missing(`system_id`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `system_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body, 
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- FilePermission$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    update_file_item_permissions_on_default_system = function(file_path, body, file_path2, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`file_path2`)) {
        queryParams['filePath'] <- file_path2
      }

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/files/v2/pems/{filePath}"
      if (!missing(`file_path`)) {
        urlPath <- gsub(paste0("\\{", "filePath", "\\}"), `file_path`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body, 
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- FilePermission$new()
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