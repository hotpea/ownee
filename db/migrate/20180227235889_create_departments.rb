class CreateDepartments < ActiveRecord::Migration[5.1]
  def change
    create_table :departments do |t|
      t.string :name
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
