# Repository for Lunch and Learn
[Instructions for Assignment](https://backend.turing.edu/module3/projects/lunch_and_learn/)
## Table of Contents

1. [Architecture and Design](#architecture-and-design)
2. [End Points](#end-points)
- [Recipe End Point](#recipe-end-point)
    - [Index](#recipe-index)
- [Learning Resources End Point](#learning-resources-end-point)
    - [Index](#learning-resources-index) 
-[Users End Point](#users-end-point)
	- [Create](#users-create)
- [Favorites End Points](#favorites-end-points)
    - [Create](#favorites-create)
    - [Index](#favorites-index)
3. [Local Setup](#local-setup)
4. [Versions](#versions)


## Architecture and Design

<p align="center">
  <img src="https://github.com/SandyyMarie/lunch_and_learn/blob/main/assets/LunchAndLearnDB.png?raw=true" />
</p>

## End Points:


### Recipe End Point

#### Recipe Index
Returns the top recipes for a given country.

`GET /api/v1/recipes?country={country}`

* if you don't send in a country param, a random Country will be chosen for you.


<b>Example Input:</b>

`GET http://localhost:3000/api/v1/recipes?country=Peru` 

<b>Example Output:</b>

```json
{
    "data": [
        {
            "id": null,
            "type": "recipe",
            "attributes": {
                "title": "Arriba Peru",
                "url": "http://www.myrecipes.com/recipe/arriba-peru",
                "country": "Peru",
                "image": "https://edamam-product-images.s3.amazonaws.com/web-img/94a/...."
            }
        }
    ]
}
```

##


### Learning Resources End Point

#### Learning Resources Index
Returns a informational video link and related images to the given search country.

`GET /api/v1/learning_resources?country={country}`

<b>Example Input:</b>

`GET http://localhost:3000/api/v1/learning_resources?country=laos`

<b>Example Output:</b>
```json
{
    "data": {
        "id": null,
        "type": "learning_resources",
        "attributes": {
            "country": "laos",
            "video": {
                "title": "Vietnam War | The 20th century | World history | Khan Academy",
                "youtube_video_id": "9e9GWdT2pEQ"
            },
            "images": [
                {
                    "alt_tag": "time lapse photography of flying hot air balloon",
                    "url": "https://images.unsplash.com/photo-1540611025311-01df3cef54b5?ixid=MnwzODExMzJ8MHwxfHNlYXJjaHwxfHxsYW9zfGVufDB8fHx8MTY2ODU5NTA4OA&ixlib=rb-4.0.3"
                },
                {
                    "alt_tag": "aerial view of city at daytime",
                    "url": "https://images.unsplash.com/photo-1570366583862-f91883984fde?ixid=MnwzODExMzJ8MHwxfHNlYXJjaHwyfHxsYW9zfGVufDB8fHx8MTY2ODU5NTA4OA&ixlib=rb-4.0.3"
                },
				...
            ]
        }
    }
}
```
##

### Users End Point

#### Users Create
Creates a new user if the given email isn't already taken, auto generates a fake API key per user'

`POST /api/v1/users` 
+ add name and email in the body of the request

<b>Example Input:</b>
`POST http://localhost:3000/api/v1/users`
```json
{
  "name": "Joe Bob",
  "email": "JoeBob@email.com"
}
```

<b>Example Output:</b>
```json
{
    "data": {
        "id": "1",
        "type": "user",
        "attributes": {
            "name": "Joe Bob",
            "email": "JoeBob@email.com",
            "api_key": "T43jXp1MqG"
        }
    }
}
```
##

### Favorites End Points

#### Favorites Create
Adds the given recipe to a given users favorites.

`POST /api/v1/favorites` 

<b>Example Input:</b>

`POST http://localhost:3000/api/v1/favorites`

```json
{
    "api_key": "abc1234cdef567",
    "country": "thailand",
    "recipe_link": "https://www.tastingtable.com/.....",
    "recipe_title": "Crab Fried Rice (Khaao Pad Bpu)"
}
```

<b>Example Output:</b>

```json
{
    "success": "Favorite added successfully"
}
```

#### Favorites Index
Lets you see all the favoites of a given user.

`GET /api/v1/favorites` 


<b>Example Input:</b>

`PUT http://localhost:3000/api/v1/favorites`

```json
{
    "api_key": "jgn983hy48thw9begh98h4539h4"
}
```
<b>Example Output:</b>
```json
{
    "data": [
        {
            "id": "1",
            "type": "favorite",
            "attributes": {
                "recipe_title": "Recipe: Egyptian Tomato Soup",
                "recipe_link": "http://www.thekitchn.com/recipe-egyptian-tomato-soup-weeknight....",
                "country": "egypt",
                "created_at": "2022-11-16T13:20:15.475Z"
            }
        },
        {
            "id": "2",
            "type": "favorite",
            "attributes": {
                "recipe_title": "Crab Fried Rice (Khaao Pad Bpu)",
                "recipe_link": "https://www.tastingtable.com/.....",
                "country": "thailand",
                "created_at": "2022-11-16T13:20:15.478Z"
            }
        }
    ]
}
```
##

## Local Setup

* Fork this repository
* Clone your fork
* From the command line, install gems and set up your DB:
    * `bundle`
    * `rails db:{drop,create,migrate,seed}`
	* `bundle exec figaro install`
* Add your API keys within the `application.yaml` file in `config`.
* Run the test suite with `bundle exec rspec`.
* Run your development server with `rails s` to see the app in action.

## Versions

- Ruby 2.7.4

- Rails 5.2.8

##

[Back To Top](#repository-for-lunch-and-learn) 
