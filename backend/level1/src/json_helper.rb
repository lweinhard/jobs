require 'json'

JSON_INPUT_FILE_PATH = './data/input.json'
JSON_OUTPUT_FILE_PATH = './data/output.json'

def parse_from_json_input
  file = File.read(JSON_INPUT_FILE_PATH)
  JSON.parse(file)
end

def write_output_to_file(output)
  File.open(JSON_OUTPUT_FILE_PATH, "w") do |f|
    f.write(output.to_json)
  end
end