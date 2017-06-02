# Peaches 

<img src="https://i.imgsafe.org/5f18132866.png" align="left" width="120px" hspace="10" vspace="6"/> Peaches is a web application designed for students with the intention of being used as a tool to monitor their academic performance throughout the semester. Peaches can calculate a student’s current grade for their courses through inputted assignments, midterms and quizzes.<br> <center>Visit the website here at https://peachesgradetracker.herokuapp.com </center><br><br><br>


## Running Peaches on localhost
Have Ruby and Rails installed<br>
Open your Terminal<br>
Navigate to the directory where Peaches is located with `cd` <br>

Navigate to the Peaches folder
```bash
$ cd Peaches
```

Run Rails server
```bash
$ rails s
```

Open your browser and open Peaches by entering localhost:3000<br>

## Steps to Deploying on Heroku
Have a Heroku account <br>
Have Bundler installed locally -- run `gem install bundler`<br>
Have Heroku Command Line Interface (CLI) aka Heroku Toolbelt installed on your laptop<br>
Once installed, log in to your Heroku account from your terminal by typing `heroku login`<br>
<br>
Prepare the application by cloning the Peaches repository
```bash
$ git clone https://github.com/mariamarta/Peaches.git
$ cd Peaches
```

Create an app on Heroku<br>
Make sure you're in the directory that contains the Peaches Rails app then run the following the code
```bash
$ heroku create
```
With this command, Heroku generates a random name for the app. You can change this name later<br>

Always verify that the remote has been added to your project by running
```bash
$ git config --list | grep heroku
remote.heroku.url=https://git.heroku.com/<randomnamegenerated>.git
remote.heroku.fetch=+refs/heads/*:refs/remotes/heroku/*
```

Deploy the code
```bash
$ git push heroku master
```

When the application has been deployed, visit the app using the URL generated from `heroku create`<br>
or open from the terminal with command: `heroku open`
