class AddPriceToReview < ActiveRecord::Migration
  def change
    change_table :reviews do |t|
      t.float :price
    end
  end
end
