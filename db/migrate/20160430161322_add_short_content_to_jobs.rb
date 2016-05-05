class AddShortContentToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :short_content, :text
  end
end
