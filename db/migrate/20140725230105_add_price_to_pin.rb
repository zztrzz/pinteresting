class AddPriceToPin < ActiveRecord::Migration
  def change
    add_column :pins, :price, :integer
  end
end
