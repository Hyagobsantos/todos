# frozen_string_literal: true

class SearchGif
  Giphy::Configuration.configure do |config|
    config.api_key = Rails.application.credentials.giphy_api_key
  end

  def search(text)
    result = Giphy.search(text, limit: 3) || []

    gifs = result.select { |r| r.is_a? Giphy::Gif }
    return nil unless gifs.present?

    gifs.sample.embed_url.to_s
  end
end
