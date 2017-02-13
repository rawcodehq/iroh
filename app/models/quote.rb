class Quote
  def initialize(body)
    @body = body
  end

  def body
    @body
  end

  def save
    quotes_file = File.open("./data/quotes.txt", "a")
    quotes_file.puts(@body)
    quotes_file.close
  end

  def self.all
    File.read("./data/quotes.txt").each_line
      .map{|x| Quote.new(x.strip) }
  end
end
