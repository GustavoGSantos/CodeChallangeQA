Given("address of API to consult weather") do
    $uri_base = 'https://api.openweathermap.org/data/2.5/weather'
end
  
When("send a request about weather in São Paulo") do
    $response = HTTParty.get($uri_base, :query => { :q => "Sao paulo,br", 
                                                    :appid => "190c0cfa3a6254d0cdc78b721d46d267", 
                                                    :lang => "pt"})
end

Then("expect API response will be code {int}") do |int|
    #puts "response body #{$response.body}"
    puts "response code #{$response.code}"
    expect($response.code).to eq (200)
end

When("send a request about weather in São Paulo by id") do
    $response = HTTParty.get($uri_base, :query => { :id => "3448439", 
                                                    :appid => "190c0cfa3a6254d0cdc78b721d46d267", 
                                                    :lang => "pt"})
end

When("send a request about weather in São Paulo by longitude and latitude") do
    $response = HTTParty.get($uri_base, :query => { :lon => "-46.64",
                                                    :lat => "-23.55",
                                                    :appid => "190c0cfa3a6254d0cdc78b721d46d267", 
                                                    :lang => "pt"})
end

When("send a request about weather by zip code more than {int} numbers") do |int|
    $response = HTTParty.get($uri_base, :query => { :zip => "6100200,il",
                                                    :appid => "190c0cfa3a6254d0cdc78b721d46d267", 
                                                    :lang => "pt"})
end

Then("expect API error response will be code {int}") do |int|
    #puts "response body #{$response.body}"
    puts "response code #{$response.code}"
    expect($response.code).to eq (404)
end  

  
When("send a request about weather by zip code less or equal {int} numbers") do |int|
    $response = HTTParty.get($uri_base, :query => { :zip => "2133,ph",
                                                    :appid => "190c0cfa3a6254d0cdc78b721d46d267", 
                                                    :lang => "pt"})
end

When("use a different country") do
    $response = HTTParty.get($uri_base, :query => { :q => "Sao paulo,de", 
                                                    :appid => "190c0cfa3a6254d0cdc78b721d46d267", 
                                                    :lang => "pt"})
end

When("send a request about weather by wrong latitude and longitude") do
    $response = HTTParty.get($uri_base, :query => { :lon => "-154",
                                                    :lat => "168",
                                                    :appid => "190c0cfa3a6254d0cdc78b721d46d267", 
                                                    :lang => "pt"})
end

Then("expect API error response will be {int}") do |int|
    #puts "response body #{$response.body}"
    puts "response code #{$response.code}"
    expect($response.code).to eq (400)
end 