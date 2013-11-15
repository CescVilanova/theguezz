class AddCrestToClubs < ActiveRecord::Migration
  def change
    add_column :clubs, :crest, :string
  end
end
