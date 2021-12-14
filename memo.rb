require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i

if memo_type == 1
  puts "拡張子を除いたファイルを入力して下さい"
  csv_name = gets.chomp
  puts "メモしたい内容を記入して下さい"
  puts "完了したらCtrl + Dをおします"
  CSV.open("#{csv_name}.csv", "w") do |text|
    csv_text = $stdin.read
    text << ["#{csv_text}"]
end
elsif memo_type == 2
  puts "編集したいファイル名を入力して下さい"
  csv_edit = gets.chomp
  puts "編集を行なって下さい"
  puts "完了したらCtrl + Dをおします"
  CSV.open("#{csv_edit}.csv", "a") do |text|
    csv_text = $stdin.read
    text << ["#{csv_text}"]
end
end