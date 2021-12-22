require("impatient")
require("bootstrap"):init()
require("config"):load()
local plugins = require("plugins")
require("plugin-loader").load({ plugins, xvim.plugins })

require("lsp").init()
