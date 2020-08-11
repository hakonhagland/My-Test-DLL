#! /usr/bin/env perl

use feature qw(say);
use strict;
use warnings;
use ExtUtils::testlib;
use My::Test::DLL;

My::Test::DLL::set_foo_handler();
My::Test::DLL::apply_handler("Hello");
