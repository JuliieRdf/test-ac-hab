class CreateHabitants < ActiveRecord::Migration[7.0]
  def change
    create_table :habitants do |t|
      t.string :name
      t.string :type
      t.string :personality
      t.string :birthday
      t.text :photo

      t.timestamps
    end
  end
end
