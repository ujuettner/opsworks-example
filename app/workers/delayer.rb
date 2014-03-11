class Delayer
  include Sidekiq::Worker

  def perform(title, body)
    Note.create!(title: title, body: body)
  end
end
