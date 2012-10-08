module PostsHelper
  def categories_list
    Category.all.collect { |c| [c.title, c.id] }
  end
end
