class Quote

  DATA_DIR = Rails.root.join("data")
  FileUtils.mkdir_p(DATA_DIR)
  QUOTES_FILE_PATH = DATA_DIR.join("quotes.txt").to_s

  def initialize(body)
    @body = body
  end

  def body
    @body
  end

  def save
    quotes_file = File.open(Quote.QUOTES_FILE_PATH, "a")
    quotes_file.puts(@body)
    quotes_file.close
  end

  def self.all
    File.read(QUOTES_FILE_PATH).each_line
      .map{|x| Quote.new(x.strip) }
  end
end
