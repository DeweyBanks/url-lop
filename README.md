
[<img src="https://url-lop.herokuapp.com/assets/lop.jpg">](https://url-lop.herokuapp.com/)

### LOP'D is a url shortner.

## Getting started

LOP'D works with Rails 4.2.10

 clone the repo with:

```console
$ git clone git@github.com:DeweyBanks/url-lop.git
```

Then run
```console
$ bundle install
```

If you would like to pre-populate some urls, you can seed the database:

```console
$ rake db:seed
```

Create an .env file with the following keys:
```
BASE_URL=http://localhost:3000/
```

Start your server and visit the root to see it in action.

To run the test suite
```console
$ rspec
```


a working example can be found at:
[LOP'D on Heroku](https://url-lop.herokuapp.com/ "Get Lop'd")
