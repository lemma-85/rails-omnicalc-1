Rails.application.routes.draw do
  root "pages#howdy"

  get("/howdy", { :controller => "pages", :action => "howdy" })

  get("/goodbye", { :controller => "pages", :action => "goodbye" })

 
  get("/square/new", { :controller => "calculations", :action => "new_square" })
  get("/square/results", { :controller => "calculations", :action => "square_results" })

  
  get("/square_root/new", { :controller => "calculations", :action => "new_square_root" })
  get("/square_root/results", { :controller => "calculations", :action => "square_root_results" })


  get("/random/new", { :controller => "calculations", :action => "new_random" })
  get("/random/results", { :controller => "calculations", :action => "random_results" })


  get("/payment/new", { :controller => "calculations", :action => "new_payment" })
  get("/payment/results", { :controller => "calculations", :action => "payment_results" })

end
