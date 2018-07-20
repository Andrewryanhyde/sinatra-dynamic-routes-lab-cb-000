require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!


  get '/reversename/:name' do
    @user_name = params[:name]
    @reverse_user_name = @user_name.reverse!
    "#{@reverse_user_name}"
  end

  get '/square/:number' do
    square = params[:number].to_i ** 2
      "#{square}"
  end

  get '/say/:number/:phrase' do
    string = ''
    params[:number].to_i.times { string += params[:phrase] }
    string
  end
end
