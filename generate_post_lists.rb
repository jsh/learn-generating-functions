require 'fileutils'
require 'erb'

# Path to your posts directory
posts_dir = '_posts'

# Read all .md files in the posts directory
files = Dir.glob("#{posts_dir}/*.md")

# Extract the title and permalink from each file
posts_data = files.map do |file|
  title = File.basename(file).split('.')[0]
  permalink = File.join(posts_dir, File.basename(file))
  { title: title, permalink: permalink }
end

# Render the posts list to a string
template = ERB.new(File.read('_data/template.erb'))
posts_list = template.result(binding)

# Write the posts list to _data/posts_list.md
FileUtils.open('_data/posts_list.md', 'w') do |file|
  file.write(posts_list)
end