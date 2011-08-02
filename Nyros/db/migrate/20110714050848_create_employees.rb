class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.string :name
      t.date :date
      t.string :present
      t.string :late
      t.string :absent

      t.timestamps
    end
  end

  def self.down
    drop_table :employees
  end
end
