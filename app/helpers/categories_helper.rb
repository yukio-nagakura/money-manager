module CategoriesHelper
  def render_category_tree(category)
    content_tag(:li) do
      concat "#{category.name} "

      # ✅ 削除ボタンを追加
      concat(
        link_to "削除", category_path(category),
                method: :delete,
                data: { confirm: "本当に削除しますか？" },
                style: "color: red; margin-left: 10px;"
      )

      if category.children.any?
        concat(content_tag(:ul) do
          category.children.map { |child| render_category_tree(child) }.join.html_safe
        end)
      end
    end
  end
end
