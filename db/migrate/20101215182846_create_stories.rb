class CreateStories < ActiveRecord::Migration
  def self.up
    create_table :stories do |t|
      t.string :number
      t.string :name
      t.string :status_code

      t.timestamps
    end
  end

  def self.down
    drop_table :stories
  end
end
