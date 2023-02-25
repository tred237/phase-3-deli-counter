katz_deli = ["The line is currently:"]

def line queue
    new_queue = ["The line is currently:"]
    if queue.length > 0
        queue.each_with_index{|element, index| new_queue.push("#{index + 1}. #{element}")}
        puts new_queue.join(" ")
    else
        puts "The line is currently empty."
    end
end

def take_a_number queue, name
    queue.push(name)
    puts "Welcome, #{queue[-1]}. You are number #{queue.length} in line."
end

def now_serving queue
    if queue.length != 0
        puts "Currently serving #{queue[0]}."
        queue.shift
    else
        puts "There is nobody waiting to be served!"
    end
end