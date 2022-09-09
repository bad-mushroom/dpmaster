#!/usr/bin/perl -w

use strict;
use testlib;


Master_SetProperty ("extraOptions", [ "-v" ]);
exit Test_Run ("No parameter associated with the verbose command line option");
