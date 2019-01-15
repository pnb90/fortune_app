Rails.application.routes.draw do
  get "/fortune_url" => 'api/my_examples#fortune_action'
  get "/lotto_url" => 'api/my_examples#lotto_action'
end
