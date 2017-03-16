module QuotesHelper
  def ross_quote
    quotes.sample
  end

  private

  def quotes
    @quotes ||= Rails.root.join("db", "quotes.txt").read.split("\n")
  end
end
