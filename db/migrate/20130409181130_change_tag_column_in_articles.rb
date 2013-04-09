class ChangeTagColumnInArticles < ActiveRecord::Migration
  def change
    rename_column :articles, :tags, :old_tags
  end
end
