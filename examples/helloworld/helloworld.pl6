#!/usr/bin/env perl6

use v6;

use Web::App::Ballet;

use-template6 '/usr/share/helloworld';

## The main page
get '/' => sub ($c)
{
  my $name = $c.get(:default<World>, 'name');
  $c.send(template('main', :$name));
}

## The name specified in the placeholder.
get '/hello/:name' => sub ($c)
{
  my $name = $c.get(':name');
  $c.send(template('main', :$name));
}

## Default if nothing else matches.
get '*' => sub ($c)
{
  $c.content-type: 'text/plain';
  $c.send("Invalid request");
}

dance;

