Rails.application.routes.draw do
  resources :products, :invoices, :orders, :users
  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'

  root 'static_pages#index'
  resources :orders, only: [:index, :show, :create, :destroy]

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
