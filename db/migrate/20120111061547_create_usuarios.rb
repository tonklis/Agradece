class CreateUsuarios < ActiveRecord::Migration
  def self.up
    create_table :usuarios do |t|
      t.string :name
			t.string :twitter_id
			t.timestamps
    end

  end

  def self.down
    drop_table :usuarios
  end
end
