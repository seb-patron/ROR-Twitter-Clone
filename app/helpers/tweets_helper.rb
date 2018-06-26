module TweetsHelper
     def user_allowed
          user_signed_in? && (current_user.id == @tweet.user_id)
     end
end
