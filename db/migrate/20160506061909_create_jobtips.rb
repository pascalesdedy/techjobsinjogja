class CreateJobtips < ActiveRecord::Migration
  def change
    create_table :jobtips do |t|
      t.string :title
      t.text :description
      t.attachment :image

      t.timestamps null: false
    end
  end
end
