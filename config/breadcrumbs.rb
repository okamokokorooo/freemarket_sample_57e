crumb :root do
  link "メルカリ", root_path
end

crumb :items do
  link "商品一覧", items_path
  parent :root
end

crumb :item_show do |item|
  link name item_path
  parent :root
end

crumb :mypage do
  link "マイページ", users_path
  parent :root
end

crumb :logout do
  link "ログアウト", users_sign_out_path
end






# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).