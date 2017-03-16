module QuotesHelper
  def ross_quote
    quotes.sample
  end

  private

  def quotes
    @quotes ||= load_quotes.split("\n")
  end

  def load_quotes
    File.open(Rails.root.join("db", "quotes.txt"), "rb").read
  end
end
