User.create!([
  {email: "abc1@example.com", encrypted_password: "$2a$10$dKS5zXMU.Ur3JQ3X7R.vo.qmSpBtNsg.Vrbt8.e6pBVQd8yvr2OnO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-04-21 16:39:57", last_sign_in_at: "2016-04-21 16:39:57", current_sign_in_ip: "::1", last_sign_in_ip: "::1"},
  {email: "admin@example.com", encrypted_password: "$2a$10$vpa5CRa2J4B1LWpfVcUM0eSbDCq4cr2mpliEYmUlY/M33AaM//3Ey", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil}
])
AdminUser.create!([
  {email: "abc1@example.com", encrypted_password: "$2a$10$DCFfhRJhUEBzNJKN7bMSC.nbLO47kInPtrS2tJC7fUu.nhtnoxE6q", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, username: nil}
])
Comment.create!([
  {query_id: 3, user_id: nil, admin_user_id: nil, post_id: nil, body: "This does actually work. Be proud!"}
])
Query.create!([
  {user_id: nil, title: "What is this?", body: "Does this even work?", approved: true, sport_id: nil},
  {user_id: nil, title: "Hoop Height", body: "What is the proper hoop height for children, and how does it change as they grow? Is it based on the child's height or the child's ability? Where can I find more information about the subject?", approved: nil, sport_id: 0}
])
Sport.create!([
  {name: "Basketball", image: "https://upload.wikimedia.org/wikipedia/commons/7/7a/Basketball.png", description: "Basketball is a team sport. Two teams – 5 players on each team – play against\r\n\r\neach other during a timed athletic event. Each team tries to score more points than the other team,\r\n\r\nand also tries to prevent the other team from scoring points. Points are scored when a team “shoots” a\r\n\r\nbasketball through one of two baskets – or hoops - located at either end of the basketball court. One\r\n\r\nteam shoots at one basket; the other team shoots at the other. When a team has possession of the ball\r\n\r\nand is trying to score points, they are on offense. The team that is trying to prevent them from scoring\r\n\r\nis on defense. A team always wants to maximize the time that they have possession of the ball, because\r\n\r\nthey can score points and be in control of the game."}
])
