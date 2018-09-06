require "httparty"

response = HTTParty.get("https://makemeapassword.org/api/v1/pronouncable/json?c=10&sc=3&dsh=n")

body = JSON.parse(response.body)

p body["pws"]