class AddPriceToArticles < ActiveRecord::Migration
  def self.up
    add_column :articles, :price, :integer
  end

  def self.down
    remove_column :articles, :price
  end
end
