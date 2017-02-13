class Quote
  def initialize(body)
    @body = body
  end

  def body
    @body
  end

  def save
    quotes_file = File.open(quotes_file_path, "a")
    quotes_file.puts(@body)
    quotes_file.close
  end

  def self.all
    File.read(quotes_file_path).each_line
      .map{|x| Quote.new(x.strip) }
  end

  DATA_DIR = Rails.root.join("data")
  FileUtils.mkdir_p(DATA_DIR)
  def quotes_file_path
    DATA_DIR.join("quotes.txt").to_s
  end
end
