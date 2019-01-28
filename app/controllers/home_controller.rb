class HomeController < ShopifyApp::AuthenticatedController
  def index
    @title = 'Order Status Update'
    @products = ShopifyAPI::Product.find(:all, params: { limit: 100 })
    @orders = ShopifyAPI::Order.find(:all, params: { limit: 100 })
    @customer = ShopifyAPI::Customer.find(:all params: { limit: 100000 })
    #@webhooks = ShopifyAPI::Webhook.find(:all)
  end
end
