class CreateEmpdetails < ActiveRecord::Migration
  def self.up
    create_table :empdetails do |t|
      t.integer :id
      t.string :name
      t.string :department

      t.timestamps
    end
  end

  def self.down
    drop_table :empdetails
  end
end
