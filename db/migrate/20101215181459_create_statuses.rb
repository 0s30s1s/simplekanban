class CreateStatuses < ActiveRecord::Migration
  def self.up
    create_table :statuses do |t|
      t.string :code
      t.string :name
      t.string :color

      t.timestamps
    end
  end

  def self.down
    drop_table :statuses
  end
end
