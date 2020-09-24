katz_deli = []

def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    line_with_position = []
    position = 1
    katz_deli.each do |customer_name|
      line_with_position << "#{position}. #{customer_name}"
      position += 1
    end
    puts "The line is currently: #{ line_with_position.join( " " ) }"
  end
end

# def take_a_number(katz_deli, new_customer)
#   katz_deli << new_customer
#   puts "Welcome, #{new_customer}. You are number #{(katz_deli.length)} in line."
# end
$count=0
katz_deli = []
def take_a_number(katz_deli)
  $count +=1
  katz_deli << $count
  puts katz_deli
  puts "Welcome, You are number #{$count} in line."
end

take_a_number(katz_deli)
take_a_number(katz_deli)
take_a_number(katz_deli)

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end
