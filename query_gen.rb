#!/usr/bin/env ruby 

require 'csv'

print <<-EOS
EXPLAIN SELECT
  u.url 
FROM 
  url_lists4 u
EOS

CSV.open('keyword.txt').each_with_index do |row,i|
  url = row[2]
  buf = i == 0 ? "WHERE " : "   OR "
  buf += " u.url like '#{url}'\n"
  print buf
end

puts ";"

print <<-EOS
EXPLAIN ANALYZE SELECT
  u.url 
FROM 
  url_lists4 u
EOS

CSV.open('keyword.txt').each_with_index do |row,i|
  url = row[2]
  buf = i == 0 ? "WHERE " : "   OR "
  buf += " u.url like '#{url}'\n"
  print buf
end

puts ";"

print <<-EOS
SELECT
  u.url 
FROM 
  url_lists4 u
EOS

CSV.open('keyword.txt').each_with_index do |row,i|
  url = row[2]
  buf = i == 0 ? "WHERE " : "   OR "
  buf += " u.url like '#{url}'\n"
  print buf
end

puts ";"



