Rails.application.routes.draw do
  get("/", {:controller => "admin", :action => "square" })
  get("/square/new", {:controller => "admin", :action => "square" })
  get("/square_root/new", {:controller => "admin", :action => "root" })
  get("/payment/new", {:controller => "admin", :action => "payment" })
  get("/random/new", {:controller => "admin", :action => "random" })

  get("/square/results", {:controller => "admin", :action => "square_results" })
  get("/square_root/results", {:controller => "admin", :action => "root_results" })
  get("/payment/results", {:controller => "admin", :action => "payment_results" })
  get("/random/results", {:controller => "admin", :action => "random_results" })


end
