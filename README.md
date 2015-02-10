# Mylabs
A repository for all the labs I have done for WDI 16
Afternoon lab:

With a partner, write the rest of the get '/quote/:tag' route to return sinatra quotes based on the tag.

Use Frank Sinatra Quotes

Think about what native ruby object you may want to use to store and quickly retrieve multiple quotes based on a tag.

Afternoon lab refactor:

Let's write our own ruby class and move some functionality therein
I'll get you started:

# greeter.rb

class Greeter
  def greet
  end

  def quote(tag)
  end
end
# app.rb

require 'sinatra'
require 'sinatra/reloader'

require './greeter'

# before filter
before do
  @greeter = Greeter.new
end

# our application's routes
get '/hi' do
  @greeter.greet
end

# return quotes matching a tag
get '/quote/:tag' do
  raise "tag must not be anything but 'life'" if params[:tag] != 'life'
  @greeter.quote params[:tag]
end

# default /quote route
get '/quote' do
  @greeter.quote
end
Your job for the rest of the day is:

Move your code from app.rb into greeter.rb as necessary
Bonus:
Have the get /quote/:tag route return a random quote from each category
figure out how to load static files in a sinatra app, and then load a random sinatra photo for the route get /photo. Add a class to the Greeter class to generate the random photo's path
Note: You'll have to find a stackoverflow post to help you figure out how to serve these photos, because sinatra won't load the photos from public directory by default.
