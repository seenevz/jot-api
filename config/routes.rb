Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/myProjects', to: 'projects#index'
  get '/myProjects/:user_code', to: 'projects#myProjects'
  post '/newProject', to: 'projects#newProject'
  get '/projects/:project_code', to: 'projects#show'
  get '/showCollaborators/:id', to: 'projects#showProjectCollaborators'

  post '/newPad', to: 'pads#newPad'
  get '/pads/:pad_code', to: 'pads#show'
  delete '/deletePad/:pad_code', to: 'pads#delete'

  get '/getCollaboration/:user_id/:project_id', to: 'collaborations#show'
  post '/joinProject', to: 'collaborations#joinProject'

  post '/newPoint', to: 'points#newPoint'

  post '/signin', to: 'users#signin'
  post '/signup', to: 'users#signup'
  get '/validate', to: 'users#validate'

  mount ActionCable.server => '/cable'
end
