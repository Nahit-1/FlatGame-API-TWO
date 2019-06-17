class User < ApplicationRecord
    has_many :games 
    has_many :feedbacks
end
