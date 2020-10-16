class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  # def self.search(search)
  
  # 	if search
  	
  # 		comment = Comment.find_by(commenter: search).post
  # 		# byebug
  # 		if comment
  # 			self.where(id: comment)
  # 			# byebug
  # 		else
  # 			Post.all
  # 		end

  # 	else
  # 		Post.all 
  # 	end
  # end
end
