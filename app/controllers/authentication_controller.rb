class AuthenticationController < ApplicationController
  def login
    user = User.find_by(email: params[:email])

    if user&.authenticate(params[:password])
      token = encode_token({ user_id: user.id })  # method to encode JWT token
      render json: { token: token, user: user }, status: :ok
    else
      render json: { error: 'Correo o contraseña incorrectos' }, status: :unauthorized
    end
  end

  private

  def encode_token(payload)
    JWT.encode(payload, Rails.application.credentials.secret_key_base.to_s)
  end
end
