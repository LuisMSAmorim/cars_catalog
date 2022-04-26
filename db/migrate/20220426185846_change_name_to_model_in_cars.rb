class ChangeNameToModelInCars < ActiveRecord::Migration[5.2]
  def change
    change_table :cars do |t|
      t.rename :name, :model
    end
  end
end
