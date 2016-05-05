class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.attachment :logo
      t.string :title
      t.text :description
      t.string :url

      t.timestamps null: false
    end
  end
end
