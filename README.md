<a name="readme-top"></a>

# <img src="app/assets/images/CritterismTrans.png" style="width: 150px;"> 
# Critterism - Front End

<b>Critterism</b> is an animal trivia application with an ulterior cause that seeks to persuade animal welfare without the Sarah McLachlan guilt trip soundtrack. 

Users can sign in with Google OAuth and play a 10-question trivia game with fun animal facts. Upon completion, users are granted the option to explore animal and wildlife organizations that they can donate to. The frontend application makes API calls to the backend. Crittism is currently deployed on <a href="https://critterism-fe.herokuapp.com/">Heroku</a>. 

The <a href="https://github.com/Critterism/Critterism-BE">Back End Repo</a> can be found deployed to <a href="https://critterism-be.herokuapp.com/">Heroku</a>.

<h2> Preview </h2>

When users first visit <a href="https://critterism-fe.herokuapp.com/">Critterism</a>, they'll have an option to sign in or sign up with Google OAuth.

<img width="1357" alt="Screenshot 2022-11-10 at 1 25 34 PM" src="https://user-images.githubusercontent.com/98506079/201199298-ce5d8166-8afb-4759-85f5-db5c293a95ec.png">

Upon signing in, they'll have the option to play a trivia game.

<img width="1383" alt="Screenshot 2022-11-10 at 1 25 45 PM" src="https://user-images.githubusercontent.com/98506079/201199868-19d00086-2a72-4e8f-91c2-93be100ddd0c.png">

They only see one question at a time and the user will be told if they answered correctly or incorrectly when they hit submit.

<img width="1391" alt="Screenshot 2022-11-10 at 1 26 09 PM" src="https://user-images.githubusercontent.com/98506079/201200686-4bbe0281-1bff-4b38-9e73-a821dc924d7d.png">

When they've completed the game, they'll be presented with a choice to select animal or wildlife charities.

<img width="1393" alt="Screenshot 2022-11-10 at 1 26 48 PM" src="https://user-images.githubusercontent.com/98506079/201200215-1fb32889-9e4c-47be-aab8-fb577092f547.png">

Once they've made a selection, they'll have a list of charities to choose from.

<img width="1399" alt="Screenshot 2022-11-10 at 1 27 04 PM" src="https://user-images.githubusercontent.com/98506079/201200407-a212cd83-8a8d-4e9b-84ae-93de7363cb4e.png">

<!-- TABLE OF CONTENTS -->

<h2> Table of Contents</h2>
<details open="open">
<summary>Table of Contents</summary>
  <ol>
    <li><a href="#built-with">Built With</a></li>
    <li><a href="#technical-requirements"> Technical Requirements</a></li>
    <li><a href="#gems-and-tools"> Gems and Tools</a></li>
    <li><a href="installation"> Installation</a></li>
    <li><a href="#schema"> Schema</a></li>
    <li><a href="#endpoints"> Server API Endpoint</a></li>
    <li><a href="#contributors"> Contributors</a></li>
  </ol>
</details>

<!-- Built With -->

<h2 id="built-with">Built With</h2>

<div align="center">
  
  <p>

[![Rails][Rails]][Rails-url] [![Ruby][Ruby]][Ruby-url] [![RSpec][RSpec]][RSpec-url] [![Atom][Atom]][Atom-url] [![Visual Studio Code][Visual Studio Code]][Visual Studio Code-url]
    
  </p>
  <p>
    
[![CSS][CSS]][CSS-url] [![HTML5][HTML5]][HTML5-url] [![JavaScript][JavaScript]][JavaScript-url] [![PostgreSQL][PostgreSQL]][PostgreSQL-url] [![Postman][Postman]][Postman-url]
    
  </p>
  <p>
    
[![CircleCI][CircleCI]][CircleCI-url] [![Bootstrap][Bootstrap]][Bootstrap-url] [![jQuery][jQuery]][jQuery-url] [![Heroku][Heroku]][Heroku-url] [![Miro][Miro]][Miro-url]

  </p>
  
 </div>
 
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- TECHNICAL REQUIREMENTS -->

<h2 id="technical-requirements">Technical Requirements</h2>

<ul>
<li>Ruby 2.7.4</li>
<li>Rails 5.2.8</li>
</ul>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GEMS AND TOOLS -->

<h2 id="gems-and-tools">Gems and Tools</h2>

* [bcrypt][bcrypt-docs]
* [capybara][capybara-docs]
* [factory_bot_rails][factory_bot_rails-docs]
* [faker][faker-docs]
* [faraday][faraday-docs]
* [figaro][figaro-docs]
* [jsonapi-serializer][jsonapi-serializer-docs]
* [launchy][launchy-docs]
* [omniauth-google-oauth2][omniauth-google-oauth2-docs]
* [orderly][orderly-docs]
* [pry][pry-docs]
* [rspec-rails][rspec-rails-docs]
* [shoulda-matchers][shoulda-matchers-docs]
* [simplecov][simplecov-docs]
* [vcr][vcr-docs]
* [webmock][webmock-docs]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- INSTALLATION -->

<h2 id="installation"> </h2>

To get started, clone the repo in your terminal by entering the following:
<ul>
  <li>git clone git@github.com:Critterism/FE-Critterism.git</li>
</ul>  
   
Once cloned, run the following commands:
<ul>
  <li>bundle install</li>
  <li>rails db:create</li>
  <li>rails db:migrate</li>
  <li>Run the Figaro command: <em>bundle exec figaro install</em></li>
  <li>Update the `application.yml` file with `ENV` variables storing API keys for <em>GOOGLE_CLIENT_ID: '< your api key >'</em> and <em>GOOGLE_CLIENT_SECRET: '< your ID >'</em>. Follow the instruction on how to get started with <a href="https://oauth.net/getting-started/">Google OAuth</a>.</li>
</ul>  

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- DATABASE SCHEMA -->
<h2 id="schema"> Schema</h2>

![Image](https://user-images.githubusercontent.com/98506079/200989143-7b73c4c7-a679-4ae0-8216-52483c2dc169.png)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SERVER API ENDPOINT -->
<h2 id="endpoints"> Endpoints</h2>

<h4>Get Wildlife Charities</h4>
<pre>
  <code>
    "/api/v1/charities/wildlife"

    "data": {
                "id": null,
                "type": "charity",
                "attributes": {
                    "description": "The Fungi Foundation is a global organization that works for the Fungi, their habitats, and the people who depend on them.. Launched in 2012, the Fungi Foundation is the first NGO dedicated to the fungi kingdom. Since its inception, it has achieved",
                    "ein": "851478153",
                    "id": null,
                    "location": "New York, NY, USA",
                    "logo": "https://res.cloudinary.com/everydotorg/image/upload/c_lfill,w_24,h_24,dpr_2/c_crop,ar_24:24/q_auto,f_auto,fl_progressive/profile_pics/wq14eif08jx3kka2ixau",
                    "name": "Fungi Foundation",
                    "profile_url": "https://www.every.org/ffungi",
                    "slug": "ffungi",
                    "tags": [
                        "wildlife",
                        "education",
                        "climate",
                        "conservation",
                        "research",
                        "women-led",
                        "environment"
                    ]
              }
  </code>
</pre>

<h4>Get Animal Charities</h4>
<pre>
  <code>
    "/api/v1/charities/animals"

    "data": {
                "id": null,
            "type": "charity",
            "attributes": {
                "description": "The Fungi Foundation is a global organization that works for the Fungi, their habitats, and the people who depend on them.. Launched in 2012, the Fungi Foundation is the first NGO dedicated to the fungi kingdom. Since its inception, it has achieved",
                "ein": "851478153",
                "id": null,
                "location": "New York, NY, USA",
                "logo": "https://res.cloudinary.com/everydotorg/image/upload/c_lfill,w_24,h_24,dpr_2/c_crop,ar_24:24/q_auto,f_auto,fl_progressive/profile_pics/wq14eif08jx3kka2ixau",
                "name": "Fungi Foundation",
                "profile_url": "https://www.every.org/ffungi",
                "slug": "ffungi",
                "tags": [
                    "wildlife",
                    "education",
                    "climate",
                    "conservation",
                    "research",
                    "women-led",
                    "environment"
                    ]
              }
  </code>
</pre>

<h4>Get Charity by Slug</h4>
<pre>
  <code>
    "/api/v1/charities/#{slug}"
    
    "data": {
        "id": "82ea3d2e-ee6e-4e1e-b9ef-9e890ee2be88",
        "type": "charity",
        "attributes": {
            "description": "Dedicated to combatting animal cruelty and illegal animal sales through rescue efforts, public education, investigations, legislation, special events and media.",
            "ein": "263792479",
            "id": "82ea3d2e-ee6e-4e1e-b9ef-9e890ee2be88",
            "location": "LOS ANGELES, CA",
            "logo": "https://res.cloudinary.com/everydotorg/image/upload/c_lfill,w_24,h_24,dpr_2/c_crop,ar_24:24/q_auto,f_auto,fl_progressive/faja_profile/cdyalof6zfbqdmpfgdi0",
            "name": "Bunny World Foundation",
            "profile_url": "https://www.every.org/bunny-world-foundation",
            "slug": "bunny-world-foundation",
            "tags": [
                "animals"
              }
  </code>
</pre>

<h4>Get Trivia Questions</h4>
<pre>
  <code>
    "/api/v1/trivia"

    "data": {
            "id": null,
            "type": "trivia",
            "attributes": {
                "category": "Animals",
                "type": "boolean",
                "difficulty": "easy",
                "question": "The Axolotl is an amphibian that can spend its whole life in a larval state.",
                "correct_answer": "True",
                "incorrect_answers": [
                    "False"
                ]
            }
  </code>
</pre>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTORS -->
<h2 id="contributors"> Contributors</h2>

<h3>Anna Marie Sterling</h3>

[![GitHub Badge](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/AMSterling)
[![LinkedIn Badge](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/sterling-316a6223a/)

<h3>Nicole Esquer</h3>

[![GitHub Badge](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/nicole-esquer)
[![LinkedIn Badge](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/nicole-esquer)

<h3>Nikky Rojas</h3>

[![GitHub Badge](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/nikkyrojas/)
[![LinkedIn Badge](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/nikkyrojas/)

<h3>Sunny Moore</h3>

[![GitHub Badge](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/sunny-moore)
[![LinkedIn Badge](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/sunny-moore/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->

[Atom]: https://img.shields.io/badge/Atom-66595C?style=for-the-badge&logo=Atom&logoColor=white
[Atom-url]: https://atom.io/

[Bootstrap]: https://img.shields.io/badge/bootstrap-%23563D7C.svg?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com/

[CircleCI]: https://img.shields.io/badge/circle%20ci-%23161616.svg?style=for-the-badge&logo=circleci&logoColor=white
[CircleCI-url]: https://circleci.com/developer

[CSS]: 	https://img.shields.io/badge/CSS-239120?&style=for-the-badge&logo=css3&logoColor=white
[CSS-url]: https://en.wikipedia.org/wiki/CSS

[Fly]: https://custom-icon-badges.demolab.com/badge/Fly-DCDCDC?style=for-the-badge&logo=fly-io
[Fly-url]: https://fly.io/

[GitHub Badge]: https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white
[GitHub-url]: https://github.com/<Username>/

[Heroku]: https://img.shields.io/badge/Heroku-430098?style=for-the-badge&logo=heroku&logoColor=white
[Heroku-url]: https://www.heroku.com/

[HTML5]: https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white
[HTML5-url]: https://en.wikipedia.org/wiki/HTML5

[JavaScript]: https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E
[JavaScript-url]: https://www.javascript.com/

[jQuery]: https://img.shields.io/badge/jquery-%230769AD.svg?style=for-the-badge&logo=jquery&logoColor=white
[jQuery-url]: https://github.com/rails/jquery-rails

[LinkedIn Badge]: https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white
[LinkedIn-url]: https://www.linkedin.com/in/<Username>/

[Miro]: https://img.shields.io/badge/Miro-050038?style=for-the-badge&logo=Miro&logoColor=white
[Miro-url]: https://miro.com/

[PostgreSQL]: https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white
[PostgreSQL-url]: https://www.postgresql.org/

[Postman]: https://img.shields.io/badge/Postman-FF6C37?style=for-the-badge&logo=postman&logoColor=white
[Postman-url]: https://web.postman.co/

[Rails]: https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white
[Rails-url]: https://rubyonrails.org/

[RSpec]: https://custom-icon-badges.demolab.com/badge/RSpec-fffcf7?style=for-the-badge&logo=rspec
[RSpec-url]: https://rspec.info/

[RuboCop]: https://img.shields.io/badge/Rubocop-red?style=for-the-badge&logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAzMiAzMiI+PHRpdGxlPmZpbGVfdHlwZV9ydWJvY29wPC90aXRsZT48cGF0aCBkPSJNMjcuMDUsMTMuOVYxM2ExLjc5MywxLjc5MywwLDAsMC0xLjgtMS44SDYuNjVBMS43OTMsMS43OTMsMCwwLDAsNC44NSwxM3YuOWExLjUyNSwxLjUyNSwwLDAsMC0uNywxLjJ2Mi40YTEuMzg3LDEuMzg3LDAsMCwwLC43LDEuMnYuOWExLjc5MywxLjc5MywwLDAsMCwxLjgsMS44aDE4LjdhMS43OTMsMS43OTMsMCwwLDAsMS44LTEuOHYtLjlhMS41MjUsMS41MjUsMCwwLDAsLjctMS4yVjE1LjFBMS43NDIsMS43NDIsMCwwLDAsMjcuMDUsMTMuOVoiIHN0eWxlPSJmaWxsOiNjNWM1YzUiLz48cGF0aCBkPSJNMTUuOTUsMmE5LjkyNSw5LjkyNSwwLDAsMC05LjgsOC42aDE5LjZBOS45MjUsOS45MjUsMCwwLDAsMTUuOTUsMloiIHN0eWxlPSJmaWxsOiNjNWM1YzUiLz48cG9seWdvbiBwb2ludHM9IjEzLjA1IDI0IDE4Ljg1IDI0IDE5LjQ1IDI0LjcgMjAuMzUgMjQgMTkuNDUgMjIuOSAxMi40NSAyMi45IDExLjU1IDI0IDEyLjQ1IDI0LjcgMTMuMDUgMjQiIHN0eWxlPSJmaWxsOiNjNWM1YzUiLz48cGF0aCBkPSJNMjMuNTUsMTcuNkg4LjM1YTEuMywxLjMsMCwxLDEsMC0yLjZoMTUuM2ExLjMyNCwxLjMyNCwwLDAsMSwxLjMsMS4zQTEuNDkzLDEuNDkzLDAsMCwxLDIzLjU1LDE3LjZaIiBzdHlsZT0iZmlsbDojZWMxYzI0Ii8+PHBhdGggZD0iTTIzLjA1LDIydjMuOGExLjk2NywxLjk2NywwLDAsMS0xLjksMS45aC0xYS44NjQuODY0LDAsMCwxLS42LS4zbC0xLjItMS42YS42LjYsMCwwLDAtLjYtLjNoLTMuNmEuNzY0Ljc2NCwwLDAsMC0uNS4ybC0xLjMsMS42YS42LjYsMCwwLDEtLjYuM2gtMWExLjk2NywxLjk2NywwLDAsMS0xLjktMS45VjIySDYuNTV2My44YTQuMjI1LDQuMjI1LDAsMCwwLDQuMiw0LjJoMTAuNGE0LjIyNSw0LjIyNSwwLDAsMCw0LjItNC4yVjIyWiIgc3R5bGU9ImZpbGw6I2M1YzVjNSIvPjwvc3ZnPg==
[RuboCop-url]: https://docs.rubocop.org/rubocop-rails/index.html

[Ruby]: https://img.shields.io/badge/Ruby-000000?style=for-the-badge&logo=ruby&logoColor=CC342D
[Ruby-url]: https://www.ruby-lang.org/en/

[Visual Studio Code]: https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white
[Visual Studio Code-url]: https://code.visualstudio.com/

[bcrypt-docs]: https://github.com/bcrypt-ruby/bcrypt-ruby
[capybara-docs]: https://github.com/teamcapybara/capybara
[factory_bot_rails-docs]: https://github.com/thoughtbot/factory_bot_rails
[faker-docs]: https://github.com/faker-ruby/faker
[faraday-docs]: https://lostisland.github.io/faraday/
[figaro-docs]: https://github.com/laserlemon/figaro
[jsonapi-serializer-docs]: https://github.com/jsonapi-serializer/jsonapi-serializer
[launchy-docs]: https://www.rubydoc.info/gems/launchy/2.2.0
[omniauth-google-oauth2-docs]: https://github.com/zquestz/omniauth-google-oauth2
[orderly-docs]: https://github.com/jmondo/orderly
[pry-docs]: https://github.com/pry/pry
[rspec-rails-docs]: https://github.com/rspec/rspec-rails
[shoulda-matchers-docs]: https://github.com/thoughtbot/shoulda-matchers
[simplecov-docs]: https://github.com/simplecov-ruby/simplecov
[vcr-docs]: https://github.com/vcr/vcr
[webmock-docs]: https://github.com/bblimke/webmock
