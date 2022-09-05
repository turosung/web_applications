require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base

    configure :development do
        register Sinatra::Reloader
    end

    # get '/' do
    #     return 'Hello!'
    # end

    # get '/hello' do 
    #     name = params[:name]
    #     return "Hello #{name}"
    # end
  

    # get '/posts' do
    #     name = params[:name]
    #     cohort_name = params[:cohort_name]


    #     return "Hello #{name}, you are welcome to the #{cohort_name} cohort"
    # end

    # post '/posts' do 
    #     title = params[:title]
    #     return "Posts was created with title: #{title}"
    # end

    # get '/hello' do
    #     name = params[:name]
    #     return "Hello #{name}"
    # end


    post '/sort-names' do
        names = params[:names] # accessing body paramenter called 'names'
            .split(',') # splitting a string where commas are
            .sort # sorts array of strings alphabetically
            .join(',') # joins array of strings with commas

        # names_array = params[:names].split(',')

        # names_sorted_array = names_array.sort

        # sorted_names_string = names_sorted_array.join(',')
        
        return names
    end
end