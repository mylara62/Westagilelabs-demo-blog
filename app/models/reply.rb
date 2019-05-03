class Reply < ApplicationRecord
	belongs_to :comment
  has_many :reply_comments, dependent: :destroy
end
