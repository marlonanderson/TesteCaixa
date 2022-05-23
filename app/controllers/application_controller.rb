class ApplicationController < ActionController::Base
 # Previne ataques CSRF levantando uma exceção.
  # Para APIs, você pode usar :null_session.
  protect_from_forgery with: :exception


  def after_sign_in_path_for(cliente)
    if cliente_signed_in?
      return cliente_path(cliente)
    end
  end
end
