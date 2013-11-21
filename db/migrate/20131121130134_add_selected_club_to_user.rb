class AddSelectedClubToUser < ActiveRecord::Migration
  def change
    add_column :users, :selected_club_id, :integer
  end
end
