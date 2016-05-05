class CreateTalents < ActiveRecord::Migration
  def change
    create_table :talents do |t|
      t.string :name
      t.text :description
      t.text :skill
      t.string :email

      t.timestamps null: false
    end
  end
end
