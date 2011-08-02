class CreateRegisters < ActiveRecord::Migration
  def self.up
    create_table :registers do |t|
      t.integer :e_id, :references => :empdetails
      t.date :date
      t.string :present
      t.string :late
      t.string :absent

      t.timestamps
    end
  end

  def self.down
    drop_table :registers
  end
end
