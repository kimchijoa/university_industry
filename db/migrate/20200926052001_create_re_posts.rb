class CreateRePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :re_posts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :comment
      t.references :alram_test, null: false, foreign_key: true

      t.timestamps
    end
  end
end
