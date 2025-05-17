module CategoriesHelper
	def render_category_tree(category)
		puts "🔍 描画中: #{category.name} (ID: #{category.id}, Ancestry: #{category.ancestry})"
  	puts "  子カテゴリ数: #{category.children.size}"

		content_tag(:li) do
			concat category.name
			if category.children.any? then
				concat(content_tag(:ul) do
					category.children.map{ |child| render_category_tree(child) }.join.html_safe
				end)	
			end	
		end	
	end
	
	def render_arranged_categories(categories)
		content_tag(:ul) do
			categories.map do |category, children|
				content_tag(:li) do
					concat category.name
					if children.any? then
						concat render_arranged_categories(children)
					end	
				end	
			end.join.html_safe	
		end		
	end	
end
