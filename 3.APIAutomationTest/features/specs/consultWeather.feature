@consultWeather

Feature: Using API to consult weather
    In order to consult the weather in specific region
    As a client
    I want recieve information about the weather in specific regions
    
    @consulByCity
    Scenario: Consult weather in São Paulo
        Given address of API to consult weather
        When send a request about weather in São Paulo
        Then expect API response will be code 200

    @consultById
    Scenario: Consult weather by id
        Given address of API to consult weather
        When send a request about weather in São Paulo by id
        Then expect API response will be code 200

    @consultByLonLat
    Scenario: Consult weather by longitude and latitude
        Given address of API to consult weather
        When send a request about weather in São Paulo by longitude and latitude
        Then expect API response will be code 200

    @consultByZipCodeFailed
    Scenario: Consult weather by zip code failed
        Given address of API to consult weather
        When send a request about weather by zip code more than 5 numbers
        Then expect API error response will be code 404

    @consultByZipCodeSuccess
    Scenario: Consult weather by zip code 
        Given address of API to consult weather
        When send a request about weather by zip code less or equal 5 numbers
        Then expect API response will be code 200

    @consulByCityFailed
    Scenario: Consult weather in São Paulo failed
        Given address of API to consult weather
        When send a request about weather in São Paulo
        And use a different country
        Then expect API error response will be code 404

    @consultByLonLatFailed
    Scenario: Consult weather by longitude and latitude failed
        Given address of API to consult weather
        When send a request about weather by wrong latitude and longitude
        Then expect API error response will be 400