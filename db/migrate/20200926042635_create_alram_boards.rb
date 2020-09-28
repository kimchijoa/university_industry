class CreateAlramBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :alram_boards do |t|
      t.references :user, null: false, foreign_key: true
      t.string :board_id
	  t.string :post_link
	  t.string :post_id
	  t.string :new_post_id
	  t.string :new_post_title

      t.timestamps
    end
  end
end
