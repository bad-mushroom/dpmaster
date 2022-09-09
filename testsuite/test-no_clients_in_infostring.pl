#!/usr/bin/perl -w

use strict;
use testlib;


my $serverRef = Server_New ();
Server_SetGameProperty ($serverRef, "clients", undef);
my $clientRef = Client_New ();
exit Test_Run ("No \"clients\" key in the server infostring");
