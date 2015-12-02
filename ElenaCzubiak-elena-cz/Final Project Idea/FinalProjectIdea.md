
# About

### App name

Styled by Weather

### Concept

Users get 5-day weather forecast with shopable outfit suggestions

# Features & Technologies

### Sign in, save secure passwords, etc
*Use Devise to provide standard authentication

### Search for cities and save to account
* Search for cities and match to city ID, possibly using JSON database from OpenWeatherMAP API. Info here: http://openweathermap.org/forecast5
* Save locations as a separate model, has many association to User model 

### Display 5-day forecast (high & low temp, summary, etc)
* Get weather data from OpenWeatherMap API using JSON format:  http://openweathermap.org/forecast5
* Display weather info in custom frontend
* 
### Show suggested clothing items from ShopStyle
* Use simple logic to suggest clothing items based on weather (i.e. "high temp between 50 & 55" --> "thick sweater, jeans, ankle boots")
* Use each clothing suggestion as a search (i.e. "women's anke boots") in the ShopStyle API: https://www.shopstylecollective.com/api/overview
* Get JSON of search results (clothing items in the store that match the search)
* Display a few suggestions for each item of clothing with picture and link to buy



### Notes

Obviously this app could me much smarter, but keeping it simple for now. If I have time I might try to add more personalization or complexity.

I chose the OpenWeatherMap API because it has a free tier, but open to other suggestions

