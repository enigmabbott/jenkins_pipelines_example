#!/usr/bin/env perl
use Test::More;
use Foo;

ok(1, "bogus test");   
ok(Foo->foo(), "called foo");
done_testing(); 
