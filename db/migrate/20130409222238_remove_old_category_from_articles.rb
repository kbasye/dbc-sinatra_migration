class RemoveOldCategoryFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :old_category
 
end
