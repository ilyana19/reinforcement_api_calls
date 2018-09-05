require "httparty"

# exercise 1
toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')
toronto_wards_json = JSON.parse(toronto_wards_response.body)

p "list of wards"
toronto_wards_json["objects"].each do |object|
  p object["name"]
end

# exercise 2
candidates_response = HTTParty.get('https://represent.opennorth.ca/candidates/')
candidate_json = JSON.parse(candidates_response.body)

puts ""
p "list of candidates"

candidate_json["objects"].each do |object|
  p object["last_name"]
end