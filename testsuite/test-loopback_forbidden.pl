#!/usr/bin/perl -w

use strict;
use testlib;


Master_SetProperty ("allowLoopback", 0);

my $serverRef = Server_New ();
my $clientRef = Client_New ();

exit Test_Run ("No servers allowed on loopback interfaces");
