class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.date :date
      t.integer :usuario_id
      t.string :goal
      t.text :give
      t.string :grateful_one
      t.string :grateful_two
      t.string :grateful_three
      t.string :grateful_four
      t.string :grateful_five
      t.string :grateful_six
      t.string :grateful_seven
      t.string :grateful_eight
      t.string :grateful_nine
      t.string :grateful_ten
      t.text :thanks
      t.string :happy
      t.string :evaluation
      t.string :improvement
      t.string :happier
      t.string :still_pending
      t.string :greeting
      t.timestamps
    end
  end

  def self.down
    drop_table :entries
  end
end
