class ChangeArticleCategoryColumnName < ActiveRecord::Migration
  def change
    rename_column :articles, :category, :old_category
  end
end
