require "sinatra" 
require "sinatra/reloader"

get("/") do
  "Hello World"
end

get("/zebra") do 
  "We must add a route for each path we want to support"
end

get("/giraffe") do
  "Hopefully this shows up without having to restart the server"
end 

get("/dice/2/6") do 
  first_die = rand(1..6) 
  second_die = rand(1..6)
  sum = first_die + second_die

  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
  
  "<h1> 2d6 </h1>
  <p> #{outcome} </p? "
end 

get("/dice/2/10") do 
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die

  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}. "

  "<h1> Two 10-sided dice </h1> 

  <p> #{outcome} </p> " 
end 

get("/dice/1/20") do 
  random_number_generator = rand(1..20)
  sum = random_number_generator

  outcome = "You rolled a #{random_number_generator} for a total of #{sum}. "

  "<h1> One 20-sided dice </h1> 

  <p> #{outcome} </p> " 
end 


get("/dice/5/4") do 

dice1 = rand(1..4)
dice2 = rand(1..4)
dice3 = rand(1..4)
dice4 = rand(1..4)
dice5 = rand(1..4)

sum = dice1 + dice2 + dice3 + dice4 + dice5

outcome = "You rolled a #{dice1}, a #{dice2}, a #{dice3}, a #{dice4}, and last one rolled was #{dice5} for a total of #{sum}."

" <h1> Five 4-sided dice </h1> 

<p> #{outcome} </p> "
end 
