class ReportWorker
  include Sidekiq::Worker

  def perform(id)
    # Do something
    order = Order.find(id)
    OrderMailer.received(order).deliver
  end
end
