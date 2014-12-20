class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :mandates
      t.belongs_to :party
      t.belongs_to :poll

      t.timestamps
    end
  end
end
