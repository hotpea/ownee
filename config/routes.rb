Rails.application.routes.draw do
  get '/' => 'general#index'

  get 'employee/index'

  get 'employee/add'

  post 'employee/save'

  get 'employee/edit/:id' => 'employee#edit'

  get 'employee/delete/:id' => 'employee#delete'

  get 'employee/edit'

  get 'function/index'

  get 'function/add'

  post 'function/save'

  get 'function/edit/:id' => 'function#edit'

  get 'function/delete/:id' => 'function#delete'

  get 'department/index'

  get 'department/add'

  post 'department/save'

  get 'department/edit/:id' => 'department#edit'

  get 'department/delete/:id' => 'department#delete'

  get 'department/edit'

  get 'general/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
