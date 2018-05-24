class Helpers

  def self.current_user(session)
    
    if @user = User.find(session[:user_id])
      @user
    else
      nil
    end
  end

  def self.is_logged_in?(session)
    !!session[:user_id]? true : false
  end

end
