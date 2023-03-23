class SearchGifJob < ApplicationJob
  queue_as :default

  def perform(task)
    task.gif = SearchGif.new.search task.titulo
    task.save if task.gif.present?
  end
end
