require 'json'

JSON_INPUT_FILE_PATH = './data/input.json'

def parse_from_json_input
  file = File.read(JSON_INPUT_FILE_PATH)
  JSON.parse(file)
end