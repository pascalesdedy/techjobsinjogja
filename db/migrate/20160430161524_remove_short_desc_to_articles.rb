class RemoveShortDescToArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :short_desc, :string
  end
end
