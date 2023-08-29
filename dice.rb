require "sinatra" 
require "sinatra/reloader"

get("/") do
  erb(:elephant)
end

get("/zebra") do 
  "We must add a route for each path we want to support"
end

get("/giraffe") do
  "Hopefully this shows up without having to restart the server"
end 

get("/dice/2/6") do 

  @attempts = []
  
   2.times do 

    @first_die = rand(1..6) 
 
    @attempts.push(@first_die)

  end
  #sum = first_die + second_die

  #@outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
  

  erb(:two_six)
end 

get("/dice/2/10") do 
 
  @array = []
   2.times do 
    die = rand(1..10)
    @array.push(die)
   end

  #first_die = rand(1..10)
  #second_die = rand(1..10)
  #sum = first_die + second_die

  #@outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}. "

  erb(:two_ten)
  
end 

get("/dice/1/20") do 
  @array = []
  1.times do 
 @random_number_generator = rand(1..20)
 @array.push(@random_number_generator)
  end 

  #@outcome = "You rolled a #{@random_number_generator}. "

  erb(:one_20) 
end 


get("/dice/5/4") do 


  @rolls = []
  5.times do 
    dice = rand(1..4)
    @rolls.push(dice)

  end 
#dice1 = rand(1..4)
#dice2 = rand(1..4)
#dice3 = rand(1..4)
#dice4 = rand(1..4)
#dice5 = rand(1..4)

#sum = dice1 + dice2 + dice3 + dice4 + dice5

#@outcome = "You rolled a #{dice1}, a #{dice2}, a #{dice3}, a #{dice4}, and last one rolled was #{dice5} for a total of #{sum}."

erb(:four_five)
end 

get("/dice/100/6") do
   @rolls = []

  100.times do
    die = rand(1..6)

    @rolls.push(die)
  end 

  erb(:one_hundred_six) 
end 
