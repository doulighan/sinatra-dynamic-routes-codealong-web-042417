require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get "/goodbye/:name" do 
    @user_name = params[:name]
    "Goodbye #{@user_name}"
  end

  get "/multiply/:n/:m" do 
    @result = params[:n].to_i * params[:m].to_i
    @result.to_s
  end


end