Rails.application.routes.draw do

  post 'relationships/:id' => 'users#follow'
  delete 'relationships/:id/destroy' => 'users#unfollow'
  get 'relationships/:id/follow' => 'users#follow_form'
  get 'relationships/:id/follower' => 'users#follower_form'

  
  get 'mainanswers/:user_id/:post_id/:acode_id' => 'mainanswers#new'
  post 'mainanswers/:user_id/:post_id/:acode_id' => 'mainanswers#create'
  get 'answers/:user_id/:post_id/:auni_id' => 'answers#new'
  post 'answers/:user_id/:post_id/:auni_id' => 'answers#create'


  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  post 'mainlike/:id' => 'mainposts#mainlike'
  delete 'mainlike/:id/destroy' => 'mainposts#mainlikedestroy'
  post 'like/:id' => 'posts#like'
  delete 'like/:id/destroy' => 'posts#likedestroy'

  get 'posts/:univ_id/:id' => 'posts#show'
  get 'mainposts/:code_id/:id' => 'mainposts#show'

  get 'posts/sogoindex' => 'posts#sogoindex'
  get 'posts/sogonew' => 'posts#sogonew'
  post 'posts/sogonew' => 'posts#sogocreate'
  

  get 'posts/bunindex' => 'posts#bunindex'
  get 'posts/bunnew' => 'posts#bunnew'
  post 'posts/bunnew' => 'posts#buncreate'
  

  get 'posts/kyouindex' => 'posts#kyouindex'
  get 'posts/kyounew' => 'posts#kyounew'
  post 'posts/kyounew' => 'posts#kyoucreate'
  

  get 'posts/houindex' => 'posts#houindex'
  get 'posts/hounew' => 'posts#hounew'
  post 'posts/hounew' => 'posts#houcreate'
  

  get 'posts/keiindex' => 'posts#keiindex'
  get 'posts/keinew' => 'posts#keinew'
  post 'posts/keinew' => 'posts#keicreate'
  

  get 'posts/riindex' => 'posts#riindex'
  get 'posts/rinew' => 'posts#rinew'
  post 'posts/rinew' => 'posts#ricreate'
  

  get 'posts/kouindex' => 'posts#kouindex'
  get 'posts/kounew' => 'posts#kounew'
  post 'posts/kounew' => 'posts#koucreate'
  

  get 'posts/seibutuindex' => 'posts#seibutuindex'
  get 'posts/seibutunew' => 'posts#seibutunew'
  post 'posts/seibutunew' => 'posts#seibutucreate'
  

  get 'posts/zyouhouindex' => 'posts#zyouhouindex'
  get 'posts/zyouhounew' => 'posts#zyouhounew'
  post 'posts/zyouhounew' => 'posts#zyouhoucreate'

  get 'posts/igakuindex' => 'posts#igakuindex'
  get 'posts/igakunew' => 'posts#igakunew'
  post 'posts/igakunew' => 'posts#igakucreate'

  get 'posts/kangoindex' => 'posts#kangoindex'
  get 'posts/kangonew' => 'posts#kangonew'
  post 'posts/kangonew' => 'posts#kangocreate'

  get 'posts/yakuindex' => 'posts#yakuindex'
  get 'posts/yakunew' => 'posts#yakunew'
  post 'posts/yakunew' => 'posts#yakucreate'

  get 'posts/siindex' => 'posts#siindex'
  get 'posts/sinew' => 'posts#sinew'
  post 'posts/sinew' => 'posts#sicreate'
  
  delete '/postdestroy/:id' => 'posts#destroy'
  delete '/postanswerdestroy/:id' => 'answers#destroy'

  get 'mainposts/gakkouindex' => 'mainposts#gakkouindex'
  get 'mainposts/gakkounew' => 'mainposts#gakkounew'
  post 'mainposts/gakkounew' => 'mainposts#gakkoucreate'

  get 'mainposts/syuindex' => 'mainposts#syuindex'
  get 'mainposts/syunew' => 'mainposts#syunew'
  post 'mainposts/syunew' => 'mainposts#syucreate'

  get 'mainposts/sakuruindex' => 'mainposts#sakuruindex'
  get 'mainposts/sakurunew' => 'mainposts#sakurunew'
  post 'mainposts/sakurunew' => 'mainposts#sakurucreate'

  delete '/mainpostdestroy/:id' => 'mainposts#destroy'
  delete '/mainpostanswerdestroy/:id' => 'mainanswers#destroy'

  get 'syuabout' => 'home#syuabout'
  get 'gakkouabout' => 'home#gakkouabout'
  get 'sakuruabout' => 'home#sakuruabout'
  
  get 'logintop' => 'home#logintop'
  get 'mokulist' => 'home#mokulist'
  get 'unilist' => 'home#unilist'
  get 'sogoabout' => 'home#sogoabout'
  get 'bunabout' => 'home#bunabout'
  get 'kyouabout' => 'home#kyouabout'
  get 'houabout' => 'home#houabout'
  get 'keiabout' => 'home#keiabout'
  get 'riabout' => 'home#riabout'
  get 'kouabout' => 'home#kouabout'
  get 'seibutuabout' => 'home#seibutuabout'
  get 'zyouhouabout' => 'home#zyouhouabout'
  get 'igakuabout' => 'home#igakuabout'
  get 'kangoabout' => 'home#kangoabout'
  get 'yakuabout' => 'home#yakuabout'
  get 'siabout' => 'home#siabout'

  get 'R9r8p7P6!' => 'users#secret'

  get 'users/new' => 'users#new'
  post 'users/new' => 'users#create'
  get 'users/:id' => 'users#show'
  get 'users/detail/:id' => 'users#detail'
  get 'users/:id/edit' => 'users#edit'
  patch 'users/:id/update' => 'users#update'
  get 'delete_form' => 'users#delete_form'
  delete 'delete' => 'users#destroy'

  get '/about' => 'home#about'
  get '/' => 'home#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
