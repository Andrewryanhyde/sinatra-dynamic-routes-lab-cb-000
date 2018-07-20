require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!


  get '/reversename/:name' do
    @user_name = params[:name]
    @reverse_user_name = @user_name.reverse!
    "#{@reverse_user_name}"
  end

  get '/square/:number' do
    number = params[:number]
    i_squared = @number.to_i * @number.to_i
    @squared = i_squared.to_s
    "#{@squared}"
  end

end
