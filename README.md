FanMade is a curated collection of the best fan created merchandise on the internet. Services like Etsy and Redbubble can be overwhelming. With FanMade, you can view the very best nerdy content that these sites have to offer, as well as add products that match your own taste. 

To get started, clone the repo and install any dependencies:

$ bundle install

Next, change your directory to fanmade_backend (which is contained within the backend directory):

$ cd backend
$ cd fanmade_backend

Run the necessary migrations...

$ rails db:migrate

...and seed the database if you'd like to see what we've already curated. 

$ rails db:seed

Lastly, spin up the server. 

$ rails server

With the backend running, you can open the application in your browser by navigating to the fanmade_frontend directory and opening index.html. 

$ open index.html