class CreateInterns < ActiveRecord::Migration
  def self.up
    create_table :interns do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :interns
  end
end
