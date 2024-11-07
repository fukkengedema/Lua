-- quiz game --

local score = 0

print("\nWelcome to the test quiz game!\n")
print("To end the game, type 'stop'\n")
print("Question #1: What is the correct circumference of earth in km?")
print("Options: 40075, 35576, 12005, 79325\n")

local question1 = {
    ["40075"] = true ;
    ["35576"] = false ;
    ["12005"] = false ;
    ["79325"] = false
}

::retryQ1::
local answer1 = io.read()
if answer1 == "stop" then
    goto completed
end
if question1[answer1] ~= true and question1[answer1] ~= false then
    print("\nThis is not an option! Please try again.\n")
    goto retryQ1
end
if question1[answer1] == true then
    print("\nYour answer is correct!\n")
    score = score + 1
elseif question1[answer1] == false then
    print("\nYour answer is incorrect!\n")
end

print("Question #2: how often does Wizz Air's BTP work?")
print("Options: decided by RNG, once a day, always, never\n")

local question2 = {
    ["decided by RNG"] = true ;
    ["once a day"] = false ;
    ["always"] = false ;
    ["never"] = false
}

::retryQ2::
local answer2 = io.read()
if answer2 == "stop" then
    goto completed
end
if question2[answer2] ~= true and question2[answer2] ~= false then
    print("\nThis is not an option! Please try again.\n")
    goto retryQ2
end
if question2[answer2] == true then
    print("\nYour answer is correct!\n")
    score = score + 1
elseif question2[answer2] == false then
    print("\nYour answer is incorrect!\n")
end

print("Question #3: At which date Ukraine became independent?")
print("Options: 24 August 1991, 25 October 1917, 9 May 1945, 24 February 2022\n")

local question3 = {
    ["24 August 1991"] = true ;
    ["25 October 1917"] = false ;
    ["9 May 1945"] = false ;
    ["24 February 2022"] = false
}

::retryQ3::
local answer3 = io.read()
if answer3 == "stop" then
    goto completed
end
if question3[answer3] ~= true and question3[answer3] ~= false then
    print("\nThis is not an option! Please try again.\n")
    goto retryQ3
end
if question3[answer3] == true then
    print("\nYour answer is correct!\n")
    score = score + 1
elseif question3[answer3] == false then
    print("\nYour answer is incorrect!\n")
end

print("Question #4: Who won in 2024 US presidential election?")
print("Options: Donald Trump, Kamala Harris, Petro Poroshenko, Jeff Bezos\n")

local question4 = {
    ["Donald Trump"] = true ;
    ["Kamala Harris"] = false ;
    ["Petro Poroshenko"] = false ;
    ["Jeff Bezos"] = false
}

::retryQ4::
local answer4 = io.read()
if answer4 == "stop" then
    goto completed
end
if question4[answer4] ~= true and question4[answer4] ~= false then
    print("\nThis is not an option! Please try again.\n")
    goto retryQ4
end
if question4[answer4] == true then
    print("\nYour answer is correct!\n")
    score = score + 1
elseif question4[answer4] == false then
    print("\nYour answer is incorrect!\n")
end

print("Question #5: Who is the biggest smartphone producer?")
print("Options: Samsung, Apple, Xiaomi, UkrOboronProm\n")

local question5 = {
    ["Samsung"] = true ;
    ["Apple"] = false ;
    ["Xiaomi"] = false ;
    ["UkrOboronProm"] = false
}

::retryQ5::
local answer5 = io.read()
if answer5 == "stop" then
    goto completed
end
if question5[answer5] ~= true and question5[answer5] ~= false then
    print("\nThis is not an option! Please try again.\n")
    goto retryQ5
end
if question5[answer5] == true then
    print("\nYour answer is correct!\n")
    score = score + 1
elseif question5[answer5] == false then
    print("\nYour answer is incorrect!\n")
end

print("\nCongratulations on finishing the quiz!\n")
print("\nYour score is: " ..score.." out of 5!\n\n")

if score == 0 then
    print("Your mental evaluation is: an Amoeba!")
elseif score == 1 then
    print("Your mental evaluation is: a Fruit Fly!")
elseif score == 2 then
    print("Your mental evaluation is: a russian contracted soldier!")
elseif score == 3 then
    print("Your mental evaluation is: a Dota 2 fan!")
elseif score == 4 then
    print("Your mental evaluation is: a functional member of society!")
elseif score == 5 then
    print("Your mental evaluation is: a nerd!")
end

::completed::