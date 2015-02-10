#REQUIREMENTS
#-------------------------------------------------------------
require 'sinatra'
require 'sinatra/reloader'
require 'better_errors'
require './pops.rb'
also_reload './pops.rb'
#-------------------------------------------------------------

#    FROM APP.RB

#-------------------------------------------------------------
configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end

#-------------------------------------------------------------


before do
  @pops = Pops.new
end

# our application's routes
get '/hi' do
  @pops.greet
end

# return quotes matching a tag
get '/quote/:tag' do
  
  @pops.quote params[:tag]
end

# default /quote route
get '/quote' do
  @pops.quote
end









#------------------  FROM HOMEWORK PROMPT  --------------------
# before filter




# get '/quote/:tag' do

# @Quote = Pops.new


#   raise "tag must not be anything but 'life'" if params[:tag] != 'life'
#   "You've requested a quote for tag: '#{params[:tag]}'"

# end


# get '/quote' do
#   "The best is yet to come and won't that be fine."
# end


# get '/hi' do
#   "Hi, I am Frank!"
# end




#   [
#     "<h2>Quotes matching tag: '#{params[:tag]}'</h2>",
#     "<ul>"
#   ].concat(
#     quotes[params[:tag].to_sym].map do |quote|
#       "<li><h3>#{quote}</h3></li>"
#     end
#   ).push("</ul>")
# end







#-------------------------------------------------------------


# class Pops
#   def quote tag
# 		quotes = {
# 			:life => [
# 	  			"The big lesson in life, baby, is never be scared of anyone or anything.",
# 	  			"I'm gonna live till I die.",
# 	  			"You may be a puzzle, but I like the way the parts fit."
# 			],
# 			:success => [
# 				"The best is yet to come and won't that be fine.",
# 				"The best revenge is massive success.",
# 				"....A simple I love you means more than money...."
# 			],
# 			:alcohol => [
# 				"Basically, I'm for anything that gets you through the night - be it prayer, tranquilizers or a bottle of Jack Daniels.",
# 				"Alcohol may be man's worst enemy, but the bible says love your enemy."
# 			],
# 			:heartbreak => [
# 				"The cigarettes you light one after another won’t help you forget her."
# 			]
# 		}
# 		quotes[tag.to_sym].map do |quote|
# 			"<li><h3>#{quote}</h3></li>"
# 		end	
# 	.push("</ul>")
# 	.unshift("<h2>Quotes matching tag: '#{tag}'</h2>")

#  end 
# end	

#-----------------------------------------------------------------