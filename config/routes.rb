Rails.application.routes.draw do
  get 'employee/index'

  get 'employee/add'

  get 'employee/edit'

  get 'function/index'

  get 'function/add'

  get 'function/edit'

  get 'department/index'

  get 'department/add'

  get 'department/edit'

  get 'general/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
