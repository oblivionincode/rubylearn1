def bucketing(customer_id,buckets)

    pick = rand(1..100)
    eff = 0
    buckets.each do |server|
        eff += server[1]
        if eff > pick
            server[0].push(customer_id)
            break
        end
    end
end

  print "number of server: "
  no_of_server = gets.chomp.to_i

  buckets = []

  no_of_server.times { |i|
      print "Efficiency of server_#{i+1} : "
      efficiency = gets.chomp.to_i
      arr = []
      buckets.push([arr,efficiency])
    }

  loop do
    print "customer id: "
    customer_id = gets.chomp.to_i
    bucketing(customer_id,buckets)
    if customer_id == 0
      break
    end
  end

  buckets.each do |server|
      p server[0]
  end
