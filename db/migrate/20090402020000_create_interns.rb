class CreateInterns < ActiveRecord::Migration
  def self.up
    create_table :interns do |t|
			t.integer  :number
			t.text     :skills
			t.string   :smell
			t.boolean  :indentured_servant
      t.timestamps
    end
  end

  def self.down
    drop_table :interns
  end
end
