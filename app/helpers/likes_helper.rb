module LikesHelper
  def heart(message, user)
    p '--------------------'
    p message.likes.find_by(user: user)
    p '--------------------'
    if message.likes.find_by(user: user).present?
      "❤️"
    else
      "🤍"
    end
  end
  def likes_count(message, user)
   " #{message.likes_count}" if message.likes_count.positive?
  end


end
