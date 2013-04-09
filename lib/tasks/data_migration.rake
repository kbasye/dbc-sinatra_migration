namespace :data do
  desc "migrate sinatra app data"
  task :migrate => :environment do 

    Article.all.each do |article|
      category = Category.find_or_create_by_title(:title => article.old_category)
      category.articles << article
    end

    Article.all.each do |article|
      tags = article.old_tags.split(',')
      tags.each do |tag|
        article.tags.create(:name => tag)
      end
    end

  end
end
