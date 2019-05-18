# README

This app uses purely:

https://github.com/spree/spree
https://github.com/spree-contrib/spree_social

```
gem 'spree', '~> 3.6'
gem 'spree_auth_devise', '~> 3.3'
gem 'spree_social', github: 'spree-contrib/spree_social', branch: 'master'
```

Using the commit 953e162 the google oauth 2 process works fine.

`git checkout 953e162`

After mounting spree at a prefix 
`mount Spree::Core::Engine, at: '/u'`
there is a bug concerning the path generators

the path:
`/u/users/auth/google_oauth2`

is not there, although:
 
```
spree_user_google_oauth2_omniauth_callback_path     GET|POST    /u/users/auth/google_oauth2/callback(.:format)  

spree/omniauth_callbacks#google_oauth2
```
