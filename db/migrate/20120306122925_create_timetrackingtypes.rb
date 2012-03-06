class CreateTimetrackingtypes < ActiveRecord::Migration
  def change
    create_table :timetrackingtypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
