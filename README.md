###Install Node

####Mac

Install homebrew

    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
    brew doctor

Install node using brew

    brew install node

####Linux(Ubuntu)

    sudo add-apt-repository ppa:chris-lea/node.js
    sudo apt-get update && sudo apt-get upgrade -y
    sudo apt-get install nodejs


###Install bower, grunt and karma

    npm install -g bower grunt-cli karma

###Install git

####Mac

    brew install git

####Linux

    sudo apt-get install git

###Setup Angular Cart Example Project

Clone this repository

    git clone https://bitbucket.org/seartipy/cartex.git

Install bower and npm dependencies

    cd cartex
    bower install
    npm install
    
Build the project                

    grunt build

Start the server(minify lib files, auto watch coffee, jade, html and css files, starts livereload, starts static connect server)

    grunt

Open url *https://localhost:8000/index.html*

###Usage

* Add all coffeescript files src/coffee folder, all files in src/coffee will be concatenated into all.js(included in index.jade be default).

* Drop javascript library files in src/lib folder, or better install using bower if possible.Libraries installed using bower and files in src/lib will be minified into all.min.js and all.min.css(included by default in index.jade).

* Add all jade files to src/jade folder, jade files in src/jade will be compiled to seperate html files.

* Add your jasmine coffeescript/javascript spec files to src/spec folder, karma watches files in src/coffee, src/js, src/spec folders, and runs all tests on modifications.

* If you need javascript, css, html files, add them to src/js, src/html and src/css respectively, these files will have to be explicitly included in your html files.

* All files in src/jade, src/coffee will be watched and auto compiled, changes to files in src/html, src/css, src/jade, src/coffee will reload the browser.


*Please note that this repository is only for development. You need to modify Gruntfile for it to be usable for deployment*

###Grunt, bower, karma commands

Following command will minify all lib files, concatenates coffeescript files, compiles jade files, starts a static server. Watches files, reloads browser on modifications.

    grunt

Following command will watch files, runs tests on modifications.

    karma start

Install a new bower package using

    bower install <package-name> --save

Install npm package using

    npm install <package-name> --save-dev
