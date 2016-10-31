class CreatePost < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :content
      t.integer :author_id
    end
  end
end
