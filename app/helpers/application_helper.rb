module ApplicationHelper
  LINK_STRING = "  |  "

  def links_to_categories
    @all_categories = LINK_STRING + link_to("All", root_path)

    Category.all.each do |category|
      complete_string = LINK_STRING + link_to(category.title, category)
      @all_categories += complete_string.html_safe
    end

    @all_categories += LINK_STRING 
  end
  
  def links_to_create_content
    @links_to_content = ""
    content = {"Category" => categories_path, "Post" => posts_path, "Log Out" => destroy_user_session_path}

    content.each do |name, path|
      @links_to_content += LINK_STRING + link_to(name, path)
    end

    @links_to_content += LINK_STRING
  end
end
