class FetchProducts
  include Interactor
  include Pagy::Backend

  def call
    page = context.params[:page] || 1
    items_per_page = context.params[:items_per_page] || 6
    pagy, products = pagy(Product.all, page: page, limit: items_per_page)
    context.pagy = pagy
    context.products = products
  end
end