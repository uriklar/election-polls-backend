class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :source
      t.string :poller
      t.date :date
      t.integer :population

      t.timestamps
    end
  end
end
