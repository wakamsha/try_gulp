config      = require '../config'
gulp        = require 'gulp'
ApiMock     = require 'api-mock'

gulp.task 'api-mock', ->
    mockServer = new ApiMock
        blueprintPath: config.path.src.mdIndex
        options:
            port: 5557
    mockServer.run();
