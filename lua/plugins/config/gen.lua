local options = {
  model = "codellama:13b-instruct",
  display_mode = "float",
  show_prompt = false,
  show_model = false,
  no_auto_close = false,
  init = function(options)
    pcall(io.popen, "ollama serve > /dev/null 2>&1 &")
  end,
  command = "curl --silent --no-buffer -X POST http://localhost:11434/api/generate -d $body",
  list_models = "<omitted lua function>", -- Retrieves a list of model names
  debug = false, -- Prints errors and the command which is run.
}

return options
