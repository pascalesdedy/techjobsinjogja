class AddShortDescToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :short_desc, :text
  end
end
