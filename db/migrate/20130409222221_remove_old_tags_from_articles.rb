class RemoveOldTagsFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :old_tags
  end
end
