library(plumber)

# Define your API
#* @get /hello
function() {
  list(message = "Hello, world!")
}

# Start the API
r <- plumb("path_to_your_api_file.R")
r$run(port=8000)
