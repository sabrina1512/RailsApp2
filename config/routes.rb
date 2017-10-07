Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
  resources :users
  resources :products, :invoices, :orders, :users
  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'

  root 'static_pages#index'
  resources :orders, only: [:index, :show, :create, :destroy]

  post 'static_pages/thank_you'
  
  def create
  @product = Product.new(product_params)

respond_to do |format|
  if @product.save
      format.html { redirect_to @product, notice: 'Product was successfully created.' }
      format.json { render :show, status: :created, location: @product }
  else
      format.html { render :new }
      format.json { render json: @product.errors, status: :unprocessable_entity }
  	end
  end
end
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
