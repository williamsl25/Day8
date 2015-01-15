require 'sinatra'
# require the allows you to use the gems!
# gem lsit on terminal will allow you to see all gems
# in the project
# rvm list will show you the current rvm version
# rvm gemset list will show you the gemset used
# to open the sublime files from terminal, use sub .
 

 # get '/' do "Nick"	the rought
 	
 # end

 # get '/name' do
 # 	"Destiny's child"
 # end

# you must refresh server every time you make a change
# to the ruby file for changes to take place

# this creates a template 
get '/' do
	erb :index, layout: :home
	# require 'views/index.erb'
end

# one of the pages for the site
get '/soccer' do
	erb :soccer, layout: :home
end

# one of the pages for the site
get '/running' do
	@next_marathon = "Next Race: The Cooper River Bridge Run!"
	@marathons = [
		{
			name: "Bank of America Chicago Marathon",
			location: "Chicago, IL",
			date: "October 1999"
		},
		{
			name: "Detroit Free Press Marathon",
			location: "Detroit, MI",
			date: "October 2004"
		},
		{
			name: "Portland Marathon",
			location: "Portland, OR",
			date: "October 2009"
		}
	]
	erb :running, layout: :home
end

 
