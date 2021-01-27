class ApplicationController < ActionController::API
  
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

end
