class RePost < ApplicationRecord
  belongs_to :user
  belongs_to :alram_test
	
  after_create :update_alrams
	
  def update_alrams
	  original_post_user_id = AlramTest.find(self.alram_test_id).user_id
	  AlramBoard.create!(user_id: original_post_user_id, board_id: self.alram_test_id, new_post_id: self.id, new_post_title:self.comment, post_link: "alram_tests/#{self.alram_test_id}")
  end
end
