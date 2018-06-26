class Tweet < ApplicationRecord
     # each tweet belongs to a user who made it
     belongs_to :user
end
