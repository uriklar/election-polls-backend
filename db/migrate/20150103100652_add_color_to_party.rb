class AddColorToParty < ActiveRecord::Migration
  def change
    add_column :parties, :color, :string
  end
end
