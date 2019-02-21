10.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized:  15
    )
end

puts "10 skill post created"

9.times do |portfolio_item|
    Portfolio.create!(
        title: "POrtfolio title: #{portfolio_item}",
        subtitle: "My Great Service",
        body: "unde omnis iste natus error sit voluptatem accusantium 
        doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo 
        inventore veritatis et quasi architecto beatae vitae dicta sunt 
        explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur 
        aut odit aut fugit, sed quia consequuntur magni dolores eos qui 
        ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui 
        dolorem ipsum quia dolor sit amet, co",
        main_image: "https://via.placeholder.com/600x400",
        thumb_image: "https://via.placeholder.com/350x200"
    )
end

puts "9 portfolio created"


10.times do |blog|
    Blog.create!(
        title: "Blog Title: #{blog}",
        body: "unde omnis iste natus error sit voluptatem accusantium 
        doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo 
        inventore veritatis et quasi architecto beatae vitae dicta sunt 
        explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur 
        aut odit aut fugit, sed quia consequuntur magni dolores eos qui 
        ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui 
        dolorem ipsum quia dolor sit amet, co"
    )
end

puts "10 Blogs created"