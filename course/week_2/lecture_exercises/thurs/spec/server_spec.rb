#server_spec.rb

require_relative '../server.rb'
require 'rspec'
require 'rack/test'

describe 'Server Service' do
	include Rack::Test::Methods  #module from rack/test gem

	def app
		Sinatra::Application  #where computer is finding all the tests?
	end

	it "should load the home page" do  #make a fake request for the home page
		get '/'
		expect(last_response).to be_ok #be_ok talking about a status code of 200
	end

	it "should not load the home page" do
		get '/home'
		expect(last_response).to_not be_ok #not ok due to a status code of 400(?)
	end

	it "should load the otehr page" do
		get '/real_page'
		expect(last_response).to be_ok
	end

	it "should redirect to the real_page" do
		get '/hi'
		expect(last_response.redirect?).to be(true)
		follow_redirect! #another special method that changes redirect route
		expect(last_request.path).to eq('/real_page')
	end
end
