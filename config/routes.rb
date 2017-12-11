Rails.application.routes.draw do
  root 'surveys#index'
  get 'surveys/result' => 'surveys#results'
  post 'survey' => 'surveys#process_survey'
end
