require 'spec_helper'
require 'rack/test'
require_relative '../../app'

describe Application do 
    # This is so we can use rack-test helper methods.
  include Rack::Test::Methods

  # We need to declare the `app` value by instantiating the Application
  # class so our tests work.
  let(:app) { Application.new }

  # Test driving GET /
    # context 'GET /' do 
    #     it 'returns 200 OK' do 
    #         response = get ('/')

    #         expect(response.status).to eq(200)
    #         expect(response.body).to eq('Hello!')
    #     end 
    #end 

    # context 'GET /hello' do
    #     it 'returns "Hello Leo"' do 
    #         response = get('/hello?name=Leo')

    #         expect(response.status).to eq(200)
    #         expect(response.body).to eq('Hello Leo')        
    #     end

    context 'POST /sort-names' do
        it 'returns only one name when given one name' do
            response = post('/sort-names', names: 'Joe')

            expect(response.status).to eq(200)
            expect(response.body).to eq('Joe')
            
        end

        it 'returns names in alphabetical order' do
            response = post('/sort-names', names: 'Bname,Aname')

            expect(response.status).to eq(200)
            expect(response.body).to eq('Aname,Bname')
        end 
    end
end 
