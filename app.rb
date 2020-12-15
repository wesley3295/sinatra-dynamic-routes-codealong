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
    @name = params[:name]
    "Goodbye, #{@name}."
  end
  
  get "/multiply/:num1/:num2" do
    @equals = params[:num1].to_i * params[:num2].to_i
    "#{@equals}"
    # @num1 = params[:num1]
    # @num2 = params[:num2]
    # @equals= @num1.to_i * @num2.to_i
  end

  # Code your final two routes here:

end