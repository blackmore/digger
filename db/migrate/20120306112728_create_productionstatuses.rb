class CreateProductionstatuses < ActiveRecord::Migration
  def change
    create_table :productionstatuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
