class Storage
  @file_extension = 'json'
  @base_url = './db/'

  def self.save_date(class_name, object)
    # Create the directory
    Dir.mkdir(@base_url)

    file_path = "#{@base_url}#{class_name}.#{@file_extension}"
    File.write(file_path, JSON.generate(object))
  end

  def self.load_data(class_name)
    file_path = "#{@base_url}#{class_name}.#{@file_extension}"

    return [] unless File.exist?(file_path)

    data_from_file = File.read(file_path)
    JSON.parse(data_from_file, create_additions: true)
  end
end
