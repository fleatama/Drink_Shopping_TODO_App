class CreateDrinkusers < ActiveRecord::Migration[6.0]
  def change
    create_table :drinkusers do |t|

      t.timestamps
    end
  end
end
