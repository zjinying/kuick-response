package = "test-response"

version = "0.1.1-1"

supported_platforms = {"linux", "macosx"}

source = {
  url = "https://github.com/zjinying/kuick-response.git",
  tag = "0.1"
}


dependencies = {
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.test-response.handler"] = "src/handler.lua",
    ["kong.plugins.test-response.schema"] = "src/schema.lua",
    ["kong.plugins.test-response.body_transformer"] = "src/body_transformer.lua",
    ["kong.plugins.test-response.header_transformer"] = "src/header_transformer.lua"
  }
}
