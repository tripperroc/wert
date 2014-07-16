require 'openssl'
require 'uri'
require 'net/https'
require 'json'


def befriend (friend1, friend2) 
  uri = URI ("https://graph.facebook.com/" + friend1["id"] + "/friends/" + friend2["id"])
  #print uri.to_s + "\n"
  Net::HTTP.post_form(uri, 'access_token' => friend1["access_token"])
  uri = URI ("https://graph.facebook.com/" + friend2["id"] + "/friends/" + friend1["id"])
  #print uri.to_s + "\n\n"
  Net::HTTP.post_form(uri, 'access_token' => friend2["access_token"])
end

def deletem (out)
  uri = URI.parse("https://graph.facebook.com/")
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  JSON.parse(out)['data'].each do |u| 
    request = Net::HTTP::Delete.new("/" + u["id"])
    request.set_form_data({"access_token" => u["access_token"]})
    res = http.request(request)
    puts "deleted #{res}"
  end
end

out =  Net::HTTP.get(URI(URI.encode("https://graph.facebook.com/179445217929/accounts/test-users?access_token=179445217929|3f881df113dc48cd63b49de1fa1ca39a")))

deletem (out)

ppl = ["Foo1", "Foo2", "Foo3", "Foo4", "Foo5", "Foo6", "Foo7", "Foo8",
       "Maggie", "Grandpa", "Lisa", "Marge", "Bart", "Homer", "Otto", "Milhaus", "Lenny", "Carl", "Moe", "Barnie", "Ned", "Skinner",
      "Fry", "Leela", "Bender", "Amy", "Conrad", "Farnsworth", "Zoidberg", "Krusty", "Troy", "Patty", "Selma", "Burns", "Smithers"]
uri = URI ("https://graph.facebook.com/179445217929/accounts/test-users")
ppl.each {|p| out = Net::HTTP.post_form(uri, 'access_token' => '179445217929|3f881df113dc48cd63b49de1fa1ca39a', 'installed' => 'true', 'name' => p) }

friends = {"Maggie" => ["Grandpa", "Lisa", "Marge", "Bart", "Homer", "Ned"], 
  "Grandpa" => ["Lisa", "Marge", "Bart", "Homer"], 
  "Lisa" => ["Marge", "Bart", "Homer", "Otto", "Ned", "Skinner", "Fry", "Krusty", "Zoidberg"], 
  "Marge" => ["Bart", "Homer", "Ned", "Skinner", "Patty", "Selma", "Troy"], 
  "Bart" => ["Homer", "Otto", "Milhaus", "Ned", "Skinner", "Fry", "Krusty"],
  "Homer" => ["Moe", "Barnie",  "Lenny", "Carl", "Ned", "Skinner", "Burns"],
  "Burns" => ["Smithers", "Troy"],
  "Milhaus" => ["Fry", "Skinner"],
  "Otto" => ["Milhaus", "Skinner"],
  "Lenny" => ["Carl"],
  "Moe" => ["Barnie"],
   "Ned" => ["Skinner"],
  "Patty" => ["Selma"],
  "Fry" => ["Zoidberg", "Bender", "Leela", "Farnsworth"],
  "Zoidberg" => ["Bender", "Leela", "Farnsworth", "Conrad"],
  "Leela" => ["Amy", "Farnsworth", "Conrad", "Bender"],
  "Farnsworth" => ["Bender", "Conrad", "Amy"],
}

user = Hash.new
           
out =  Net::HTTP.get(URI(URI.encode("https://graph.facebook.com/179445217929/accounts/test-users?access_token=179445217929|3f881df113dc48cd63b49de1fa1ca39a")))

JSON.parse(out)['data'].each do |u| 
  i = URI.parse("https://graph.facebook.com/" + u['id'])
  r =  Net::HTTP.get(i)
  user[JSON.parse(r)["first_name"]] = u 
end

#print friends

friends.each do |name1 , namelist| 
  namelist.each do |name2|
    puts name1 + " << >> " + name2 + "\n"
    befriend(user[name1], user[name2])
  end
end
    
  
