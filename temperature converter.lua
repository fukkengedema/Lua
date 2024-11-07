-- temperature converter --

repeat

    ::retryMode::
    print([[
    
    choose conversion mode
    Options: c to k, c to f, k to c, k to f, f to k, f to c
    To end program type "stop"
    ]])
    local conversionMode = io.read()
    if conversionMode == "stop" then
        break
    end
    
    if conversionMode ~= "c to k" and conversionMode ~= "c to f" and conversionMode ~= "k to c" and conversionMode ~= "k to f" and conversionMode ~= "f to k" and conversionMode ~= "f to c" then
        print("\nincorrect input. please try again.")
        goto retryMode
    end
    
    ::retryNumber::
    print("\nenter your value:\n")
    local input = tonumber(io.read())
    if input == nil then
        print("\nthis is not a number. please try again.")
        goto retryNumber
    end
    
    local celsiusToKelvin = (input + 273.15)
    local celsiusToFahrenheit = (input * (9/5) + 32)
    local kelvinToCelsius = (input - 273.15)
    local kelvinToFahrenheit = (input * (9/5) - 459.67)
    local fahrenheitToKelvin = ((input + 459.67) * (5/9))
    local fahrenheitToCelsius = ((input - 32) * (5/9))
    
    if conversionMode == "c to k" then print("\n" ..input.." celsius equals ".. celsiusToKelvin .." kelvins\n")
    elseif conversionMode == "c to f" then print("\n" ..input.." celsius equals ".. celsiusToFahrenheit .." fahrenheit\n")
    elseif conversionMode == "k to c" then print("\n" ..input.." kelvin equals ".. kelvinToCelsius .." celsius\n")
    elseif conversionMode == "k to f" then print("\n" ..input.." kelvin equals ".. kelvinToFahrenheit .." fahrenheit\n")
    elseif conversionMode == "f to k" then print("\n" ..input.." fahrenheit equals ".. fahrenheitToKelvin .." kelvins\n")
    elseif conversionMode == "f to c" then print("\n" ..input.." fahrenheit equals ".. fahrenheitToCelsius .." celsius\n")
    end
    
    until conversionMode == "stop"