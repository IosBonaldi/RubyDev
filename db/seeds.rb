3.times do |topic|
  Topic.create!(
      title:"Topic #{topic}"
    )
end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title:"My blog post #{blog}",
    body:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fringilla purus vel nisi posuere tempus. Cras nec magna in neque consequat imperdiet quis euismod arcu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In sollicitudin magna in justo rhoncus egestas quis sit amet enim. Pellentesque sem turpis, volutpat quis dictum sed, placerat sit amet nisi. Sed sit amet varius ipsum, in euismod neque. Donec vehicula, felis vel feugiat pellentesque, quam neque ultrices arcu, eget aliquet ex elit at purus. Morbi convallis elit quis felis commodo congue. Suspendisse in erat et quam interdum fermentum.",
    topic_id: Topic.last.id
  )
end

puts "10 blog items created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "Vivamus vulputate risus eget magna bibendum congue. Sed venenatis libero vel porta dictum. Praesent eget tristique dui. Sed vel sem velit. Cras rutrum, odio quis maximus faucibus, nibh odio scelerisque nunc, vitae vehicula dolor sapien sed nisi. Aenean eu nibh aliquet, sollicitudin metus ornare, varius nisi. Aliquam viverra arcu non velit venenatis efficitur. Duis sed congue diam.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: "Angular",
    body: "Vivamus vulputate risus eget magna bibendum congue. Sed venenatis libero vel porta dictum. Praesent eget tristique dui. Sed vel sem velit. Cras rutrum, odio quis maximus faucibus, nibh odio scelerisque nunc, vitae vehicula dolor sapien sed nisi. Aenean eu nibh aliquet, sollicitudin metus ornare, varius nisi. Aliquam viverra arcu non velit venenatis efficitur. Duis sed congue diam.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end

puts "9 portfolio items created"