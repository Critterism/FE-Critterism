# Critterism - Front End

<b>Critterism</b> is an animal trivia application with an ulterior cause that seeks to persuade animal welfare without the Sarah McLachlan guilt trip soundtrack. 

Users can sign in with Google OAuth and play a 10-question trivia game with fun animal facts. Upon completion, users are granted the option to explore animal and wildlife organizations that they can donate to. The frontend application makes API calls to the backend. Crittism is currently deployed on Heroku, click <a href="https://critterism-fe.herokuapp.com/">here</a>. 

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
    <li><a href="#technical-requirements"> Technical Requirements</a></li>
    <li><a href="#gems-and-tools"> Gems and Tools</a></li>
    <li><a href="installation"> Installation</a></li>
    <li><a href="#schema"> Schema</a></li>
    <li><a href="#endpoints"> Server API Endpoint</a></li>
    <li><a href="#contributors"> Contributors</a></li>
  </ol>
</details>

<!-- TECHNICAL REQUIREMENTS -->

<h2 id="technical-requirements">Technical Requirements</h2>
<ul>
<li>Ruby 2.7.4</li>
<li>Rails 5.2.8</li>
</ul>

<!-- GEMS AND TOOLS -->

<h2 id="gems-and-tools">Gems and Tools</h2>
<ul>
  <li>Bootstrap</li>
  <li>Capybara</li>
  <li>Factory Bot</li>
  <li>Faker</li>
  <li>Faraday</li>
  <li>Figaro</li>
  <li>Launchy</li>
  <li>Orderly</li>
  <li>Postman</li>
  <li>Pry</li>
  <li>Shoulda-Matchers</li>
  <li>SimpleCov</li>
  <li>VCR</li>
  <li>Webmock</li>
  <li>RSpec</li>
</ul>

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
  <li>Update the `application.yml` file with `ENV` variables storing API keys for <em>GOOGLE_CLIENT_ID: '< your api key ></em> and <em>GOOGLE_CLIENT_SECRET: '< your ID >'</em>. Follow the instruction on how to get started with Google OAuth <a href="https://oauth.net/getting-started/">here</a>.</li>
</ul>  

<!-- DATABASE SCHEMA -->
<h2 id="schema"> Schema</h2>

![Image](https://user-images.githubusercontent.com/98506079/200989143-7b73c4c7-a679-4ae0-8216-52483c2dc169.png)

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
