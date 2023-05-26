Rails.application.routes.draw do

get("/",{:controller => "base",:action =>"home"})

get("/users", {:controller => "user", :action=> "list"})

get("/users/:username", {:controller => "user", :action => "user"})

get("/user_signin", {:controller => "user", :action => "signin"})

post("/verify_credentials", {:controller => "user", :action => "authenticate"})

get("/user_signup",{:controller => "user",:action =>"signup"})

get("/user_signout", {:controller => "user", :action => "signout"})

get("/insert_user_record",{:controller => "user",:action =>"create"})

get("/all_destinations", {:controller =>"destination", :action=>"view"})

get("/gptresult",{:controller => "base",:action =>"result"})

get("/gptresult/:location_name",{:controller => "base",:action =>"itinerary"})

get("/create_like", {:controller => "like", :action => "likebyuser"})

end
