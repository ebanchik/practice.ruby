require "http"

data = HTTP.get("https://data.ny.gov/resource/xjya-f8ng.json").parse

i = 0
name = []
times = []
dates = []

while i < data.length
  pp "The #{data[i]["market_name"]} is open #{data[i]["operation_hours"]}."
  i += 1
end