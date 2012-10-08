module CategoriesHelper
  def list_of_posts(category_id)
    Post.find_all_by_category_id(category_id)
  end
end
