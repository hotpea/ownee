class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.date :birth
      t.float :salary
      t.references :function, foreign_key: true

      t.timestamps
    end
  end
end
