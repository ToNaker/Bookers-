Rails.application.routes.draw do
  # トップページ
  root "homes#top"

  # Books 一覧・作成
  get  "books" => "books#index",  as: "books"
  post "books" => "books#create"

  # 詳細・編集・更新・削除
  get    "books/:id"      => "books#show",   as: "book"
  get    "books/:id/edit" => "books#edit",   as: "edit_book"
  patch  "books/:id"      => "books#update"
  delete "books/:id"      => "books#destroy"
end
