class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :user_id
      t.integer :club_id
      t.integer :match_number
      t.timestamps
    end
  end
end
