# RE-STREET

#### The API for RE-STREET

#### [Client-side Repository](https://github.com/rita-morozova/restreet-frontend)

#### [The demo can be viewed on Netlify](https://re-street.netlify.app/) 

#### [A video walkthrough of the original app](https://www.youtube.com/watch?v=oPv08cnf1gM&feature=youtu.be)

## Description

RE-STREET is an art-platform for street artists. Here artists can find locations of legal walls and email owners to reserve a wall for their future masterpiece. Also, if someone knows an available  walls location, they can share it with the community by placing a pin on the map. Users can get some inspiration by contemplating modern art. Each piece of art has a color palette showing the colors used to make it. Users can create their own moodboard by liking paintings from the gallery page. Users can watch video lessons, create notes while watching lessons and create their own library with favorited videos. Also, users can share their own art by uploading pictures and sharing them with the community. Users can also show some love to other artists by liking their photos.

## Getting Started
- Fork and clone this repo
- Navigate to restreet-backend
- Run `bundle install` to install all dependencies 
- Run `rails db:create`  to create a database
- Run `rails db:migrate`
- Run `rails db:seed` (this is important! In order to see all art and videos on the website, you should seed the database) 
- To be able to upload photos, you need to obtain Cloudinary API keys from [Cloudinary](https://cloudinary.com/) and save 'cloud_name', 'cloud_api_key', and 'cloud_api_secret' in application.yml file (you have to create application.yml in config folder manually)
- Start the server by running `rails s`

## Build with
Ruby on Rails

## Tools
* PostgreSQL
* BCrypt
* JSON Web Tokens
* Cloudinary - a cloud-based image and video management service, is utilized to handle hosting of user generated images
* Figaro - to secure the configuration of API keys


#### Created By  _**Margarita Morozova**_



