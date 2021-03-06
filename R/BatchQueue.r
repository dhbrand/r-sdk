# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
#
# Agave Platform version: 2.2.14
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' BatchQueue Class
#'
#' 
#'
#' @field customDirectives Any custom directives that should be appended to scheduler directives. ex. #$ -A TG-12345
#' @field isDefault Is this the default queue for the system.
#' @field maxJobs The maximum number of jobs that can be in queue at once.
#' @field maxUserJobs The maximum number of jobs per user that can be in queue at once.
#' @field maxNodes The max nodes available per node to jobs submitted to this queue.
#' @field maxMemoryPerNode The max memory available per node to jobs submitted to this queue.
#' @field maxProcessorsPerNode The max processors per node available to jobs submitted to this queue.
#' @field maxRequestedTime The max length of jobs submitted to this queue in hhh:mm:ss format.
#' @field name The name of the batch queue.
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BatchQueue <- R6::R6Class(
  'BatchQueue',
  public = list(
    `customDirectives` = NULL,
    `isDefault` = NULL,
    `maxJobs` = NULL,
    `maxUserJobs` = NULL,
    `maxNodes` = NULL,
    `maxMemoryPerNode` = NULL,
    `maxProcessorsPerNode` = NULL,
    `maxRequestedTime` = NULL,
    `name` = NULL,
    initialize = function(`customDirectives`, `isDefault`, `maxJobs`, `maxUserJobs`, `maxNodes`, `maxMemoryPerNode`, `maxProcessorsPerNode`, `maxRequestedTime`, `name`){
      if (!missing(`customDirectives`)) {
        stopifnot(is.character(`customDirectives`), length(`customDirectives`) == 1)
        self$`customDirectives` <- `customDirectives`
      }
      if (!missing(`isDefault`)) {
        self$`isDefault` <- `isDefault`
      }
      if (!missing(`maxJobs`)) {
        stopifnot(is.numeric(`maxJobs`), length(`maxJobs`) == 1)
        self$`maxJobs` <- `maxJobs`
      }
      if (!missing(`maxUserJobs`)) {
        stopifnot(is.numeric(`maxUserJobs`), length(`maxUserJobs`) == 1)
        self$`maxUserJobs` <- `maxUserJobs`
      }
      if (!missing(`maxNodes`)) {
        stopifnot(is.character(`maxNodes`), length(`maxNodes`) == 1)
        self$`maxNodes` <- `maxNodes`
      }
      if (!missing(`maxMemoryPerNode`)) {
        stopifnot(is.character(`maxMemoryPerNode`), length(`maxMemoryPerNode`) == 1)
        self$`maxMemoryPerNode` <- `maxMemoryPerNode`
      }
      if (!missing(`maxProcessorsPerNode`)) {
        stopifnot(is.numeric(`maxProcessorsPerNode`), length(`maxProcessorsPerNode`) == 1)
        self$`maxProcessorsPerNode` <- `maxProcessorsPerNode`
      }
      if (!missing(`maxRequestedTime`)) {
        stopifnot(is.character(`maxRequestedTime`), length(`maxRequestedTime`) == 1)
        self$`maxRequestedTime` <- `maxRequestedTime`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
    },
    asJSON = function() {
      self$toJSON()
    },
    toJSON = function() {
      BatchQueueObject <- list()
      if (!is.null(self$`customDirectives`)) {
        BatchQueueObject[['customDirectives']] <- self$`customDirectives`
      }
      else {
        BatchQueueObject[['customDirectives']] <- NULL
      }
      if (!is.null(self$`isDefault`)) {
        BatchQueueObject[['isDefault']] <- self$`isDefault`
      }
      else {
        BatchQueueObject[['isDefault']] <- NULL
      }
      if (!is.null(self$`maxJobs`)) {
        BatchQueueObject[['maxJobs']] <- self$`maxJobs`
      }
      else {
        BatchQueueObject[['maxJobs']] <- NULL
      }
      if (!is.null(self$`maxUserJobs`)) {
        BatchQueueObject[['maxUserJobs']] <- self$`maxUserJobs`
      }
      else {
        BatchQueueObject[['maxUserJobs']] <- NULL
      }
      if (!is.null(self$`maxNodes`)) {
        BatchQueueObject[['maxNodes']] <- self$`maxNodes`
      }
      else {
        BatchQueueObject[['maxNodes']] <- NULL
      }
      if (!is.null(self$`maxMemoryPerNode`)) {
        BatchQueueObject[['maxMemoryPerNode']] <- self$`maxMemoryPerNode`
      }
      else {
        BatchQueueObject[['maxMemoryPerNode']] <- NULL
      }
      if (!is.null(self$`maxProcessorsPerNode`)) {
        BatchQueueObject[['maxProcessorsPerNode']] <- self$`maxProcessorsPerNode`
      }
      else {
        BatchQueueObject[['maxProcessorsPerNode']] <- NULL
      }
      if (!is.null(self$`maxRequestedTime`)) {
        BatchQueueObject[['maxRequestedTime']] <- self$`maxRequestedTime`
      }
      else {
        BatchQueueObject[['maxRequestedTime']] <- NULL
      }
      if (!is.null(self$`name`)) {
        BatchQueueObject[['name']] <- self$`name`
      }
      else {
        BatchQueueObject[['name']] <- NULL
      }

      BatchQueueObject
    },
    fromJSON = function(BatchQueueObject) {
      if (is.character(BatchQueueObject)) {
        BatchQueueObject <- jsonlite::fromJSON(BatchQueueJson)
      }

      if ("result" %in% names(BatchQueueObject)) {
        BatchQueueObject <- BatchQueueObject$result
      }

      if (!is.null(BatchQueueObject$`customDirectives`)) {
        self$`customDirectives` <- BatchQueueObject$`customDirectives`
      }
      if (!is.null(BatchQueueObject$`isDefault`)) {
        self$`isDefault` <- BatchQueueObject$`isDefault`
      }
      if (!is.null(BatchQueueObject$`maxJobs`)) {
        self$`maxJobs` <- BatchQueueObject$`maxJobs`
      }
      if (!is.null(BatchQueueObject$`maxUserJobs`)) {
        self$`maxUserJobs` <- BatchQueueObject$`maxUserJobs`
      }
      if (!is.null(BatchQueueObject$`maxNodes`)) {
        self$`maxNodes` <- BatchQueueObject$`maxNodes`
      }
      if (!is.null(BatchQueueObject$`maxMemoryPerNode`)) {
        self$`maxMemoryPerNode` <- BatchQueueObject$`maxMemoryPerNode`
      }
      if (!is.null(BatchQueueObject$`maxProcessorsPerNode`)) {
        self$`maxProcessorsPerNode` <- BatchQueueObject$`maxProcessorsPerNode`
      }
      if (!is.null(BatchQueueObject$`maxRequestedTime`)) {
        self$`maxRequestedTime` <- BatchQueueObject$`maxRequestedTime`
      }
      if (!is.null(BatchQueueObject$`name`)) {
        self$`name` <- BatchQueueObject$`name`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "customDirectives": %s,
           "isDefault": %s,
           "maxJobs": %d,
           "maxUserJobs": %d,
           "maxNodes": %s,
           "maxMemoryPerNode": %s,
           "maxProcessorsPerNode": %d,
           "maxRequestedTime": %s,
           "name": %s
        }',
        ifelse( is.null(self$`customDirectives`),"null",paste0(c('"', self$`customDirectives`, '"'))),
        ifelse( is.null(self$`isDefault`),"null",paste0(c('"', self$`isDefault`, '"'))),
        ifelse( is.null(self$`maxJobs`),"null",paste0(c('"', self$`maxJobs`, '"'))),
        ifelse( is.null(self$`maxUserJobs`),"null",paste0(c('"', self$`maxUserJobs`, '"'))),
        ifelse( is.null(self$`maxNodes`),"null",paste0(c('"', self$`maxNodes`, '"'))),
        ifelse( is.null(self$`maxMemoryPerNode`),"null",paste0(c('"', self$`maxMemoryPerNode`, '"'))),
        ifelse( is.null(self$`maxProcessorsPerNode`),"null",paste0(c('"', self$`maxProcessorsPerNode`, '"'))),
        ifelse( is.null(self$`maxRequestedTime`),"null",paste0(c('"', self$`maxRequestedTime`, '"'))),
        ifelse( is.null(self$`name`),"null",paste0(c('"', self$`name`, '"')))
      )
    },
    fromJSONString = function(BatchQueueJson) {
      BatchQueueObject <- jsonlite::fromJSON(BatchQueueJson)
      self::fromJSON(BatchQueueObject)

    }
  )
)
