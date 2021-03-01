# Travel Agency JSON Exercise

In this exercise we learn how to parse data from a JSON document into a Ruby object.

Note: This exercise requires you to be connected to the internet.

## Goal

The main goal is to implement an interactive command line application where a user can display information about countries.

### Workflow

This is how the application should work:

1. The user starts the application using `ruby travel_agency.rb`.
2. The user enters a **country code**.
3. The application asks the internet for details about given input.
4. The application displays some facts about that country, or shows an information that the input was not valid.
5. The user repeats step 2 as many times as they want.

#### Example

```
$ ruby travel_agency.rb
*************************************
*                                   *
*              WELCOME              *
*                to                 *
*           TRAVEL AGENCY           *
*                                   *
*************************************

How it works:

  Enter a country code (e.g. "CHE") to show a country's details.
  (To quit travelling, enter "exit")


Enter country code: SWE                         # "SWE" was the user's input

Name .........................: Sweden          # To be implemented
Demonym ......................: Swedish         # To be implemented
Capital ......................: Stockholm       # To be implemented
Region .......................: Europe          # To be implemented
Subregion ....................: Northern Europe # To be implemented
Population ...................: 9'894'888       # To be implemented
Area .........................: 450'295 km²     # To be implemented
Borders with .................: FIN, NOR        # To be implemented

Enter country code: exit

Bye, come again!
$
```

Note that this is just an example. The parts `To be implemented` can be implemented as you like.

## Files overview

| Filename | Do you need to change it? | Purpose |
|:-|:-|:-|
| `countries_api.rb` | No | This file is responsible to fetch data about a country from the web. |
| `travel_agency.rb` | Yes | Here we handle the user's input and make sure that a country's information is displayed |
| `travel_agency_helper.rb` | No | This file is supposed to hide all "unimportant" logic that you don't need to worry about for this exercise. |

## How to start

Don't panic, most of the application is already prepared for you.

As a matter of fact, **you only have to implement step 4** (see "Workflow" above).

And as you can see in the "Files overview" above, there's only 1 file where you're supposed to change code.

As a first step, [download this code](https://github.com/rubymonstas-zurich/travel-agency-json-exercise/archive/main.zip) and simply try what happens if you run:

```ruby
ruby travel_agency.rb
```
... and then enter a **country code**.

You should then see a chaotic output, which is the response we get from the web. This response is a JSON document.

Try playing around with this using Ruby's JSON standard library. In the end you should be able to display any information you like in a "fancy way".

You don't have to implement/show the same data as in the example above.

Also try to implement a nice "Error message" if the users's input was not a valid country code, for example

```
# [...]
Enter country code: FOO

Ooops... that country code does not exist.

Enter country code:
```

## But wait, where does the data come from?

Good question. This part is hidden in the file `countries_api.rb`, since that technique will be covered in another lesson.

However, the data comes from an online service (API) called [REST Countries](https://restcountries.eu/).
This API enables us to request information about any country of the world.
