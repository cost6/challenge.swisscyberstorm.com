#!/usr/bin/env ruby

# Requirements: rmagick and yaml gem. 
# Install: 
#   sudo apt-get install imagemagick
#   sudo apt-get install libmagickwand-dev
#   gem install rmagick
#
require 'rubygems'
require 'rmagick'
require 'yaml'

scaling = {'GOLD' => 1, 'SILVER' => 0.6, 'CHALLENGE+' => 0.6, 'BRONZE' => 0.4, 'CHALLENGE' => 0.4}
cnf = YAML::load(File.open('_data/sponsors.yml.orig'))


 #Determine smallest aspect ratio height/width
 smallest_aspect_ratio=Float::INFINITY;
 has_items = false;
 for item in cnf
  img = Magick::Image.read( item['image'][1..-1] ).first 
  width = img.columns
  height = img.rows
  aspect_ratio = height.to_f/width;
  puts "w: " + width.to_s + ", h: " + height.to_s + ", aspect ration: " + aspect_ratio.to_f.to_s 
  if(aspect_ratio < smallest_aspect_ratio)
    smallest_aspect_ratio = aspect_ratio
  end
  has_items = true;
 end
 #Determine scaling factor (relative, based on width) to
 #make all images the same amount of pixels and apply type specific scaling factor 
biggest_max_width = 0
for item in cnf 
  img = Magick::Image.read( item['image'][1..-1] ).first
  width = img.columns
  height = img.rows
  
  max_width = 100 * Math.sqrt(smallest_aspect_ratio / (height.to_f / width)) 
  max_width = max_width * scaling[item['type']]
  if(max_width > biggest_max_width) 
    biggest_max_width = max_width
  end
  item['max-width'] = max_width
  puts "image-alt: " + item['image-alt'] + ", w: " + width.to_s + ", h: " + height.to_s + ", max_width: " + item['max-width'].to_s
 end

if biggest_max_width > 100
  puts 'Biggest max_width is bigger than 100%! Aborting...'
  exit 
end

if biggest_max_width < 100
  puts 'Biggest max_width is smaller than 100%! Calculating correction factors...'
#Apply Correction that smallest image reaches 100% width in its box
  for item in cnf
    item['max-width'] = (item['max-width'] * (100/biggest_max_width)).to_i.to_s + "%";
    puts "image-alt: " + item['image-alt'] + ", w: " + width.to_s + ", h: " + height.to_s + ", max_width: " + item['max-width']
  end
end



File.open('_data/sponsors.yml', 'w') {|f| f.write cnf.to_yaml }

