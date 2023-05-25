Rails.application.routes.draw do

get("/",{:controller => "base",:action =>"home"})

get("/gptresult",{:controller => "base",:action =>"result"})



end
