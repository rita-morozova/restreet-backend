require 'json'

class ApplicationController < ActionController::API
  # before_action :authorized


  def encode_token(payload)
    JWT.encode(payload, ENV['secret_key'])
  end

  def auth_header
    request.headers['Authorization'] || request.headers['Authentication']
  end 

  def decoded_token
    if auth_header
      token=auth_header.split(' ')[1]
      begin
        JWT.decode(token, ENV['secret_key'], true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end 
    end 
  end 

  def current_user
    if decoded_token
      user_id=decoded_token[0]['user_id']
      @user = User.find_by(id: user_id)
    else 
      nil
    end 
  end 

  def logged_in?
    !!current_user 
  end 

  def artsy_token
    api_url = URI.parse('https://api.artsy.net/api/tokens/xapp_token')
    response = Net::HTTP.post_form(api_url, client_id: ENV['ARTSY_CLIENT_ID'], client_secret: ENV['ARTSY_CLIENT_SECRET'])
    xapp_token = JSON.parse(response.body)['token']
end

  # Prevent unauthorized access
  # def authorized
  #   render json: {message: 'Please log in'}, status: :unauthorized unless logged_in?
  # end 


end
