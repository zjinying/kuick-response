package = "kuick-response"

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
    ["kong.plugins.kuick-response.handler"] = "src/handler.lua",
    ["kong.plugins.kuick-response.schema"] = "src/schema.lua"
  }
}
