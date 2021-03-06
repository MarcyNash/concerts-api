The following is a list of tables used in the backend api:

Tables and Columns

User Table - with columns user_id, email address, etc. as set up in the Rails template

Profile Table - with columns profile_id (generated by Rails), user_name, about_me

Concert Table - with columns concert_id (generated by Rails), event_name, date, time, artist, venue, venue_address, cost

Profile_Follow Join Table with columns profile_follow_id (generated by Rails), profile_follower_id (which is a profile_id), profile_id

Profile_Concert Join Table with columns profile_concert_id (generated by Rails), concert_id, profile_id

Note: I used the following website to help with setting up a 'friends' relationship among profile users -- http://railscasts.com/episodes/163-self-referential-association?view=asciicast


In a future release, additional table for Venue and Artist will be created.
``

ERD (entity relationship diagram)

These are the diagrams that show how your tables are related to one another (one to many, many to many, etc).

``` User Table    -|-----<   A profile has one user ```

``` Concert Table ->------<- A profile has many concerts; A concert has many profiles ```

``` Profile Table ->------<- Profile_Follow Join Table ```
``` A profile has many profile_followers and a profile_follower has many profiles```

``` Profile Table ->------<- Profile_Concert Join Table ```
``` A profile has many concerts and a concert has many profiles```


## Routing

What routes will you need to be able to make the proper request to your API?

  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'

  resources :profiles, except: [:new, :edit]
  ???? for :profiles no index??
