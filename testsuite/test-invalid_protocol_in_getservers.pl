#!/usr/bin/perl -w

use strict;
use testlib;


my $fail = 0;
my $serverRef = Server_New ();
my $clientRef = Client_New ();

Server_SetGameProperty ($serverRef, "protocol", 0);
Client_SetGameProperty ($clientRef, "protocol", undef);
$fail |= Test_Run ("Getservers request without a protocol number");

Server_SetGameProperty ($serverRef, "protocol", 4);
Client_SetGameProperty ($clientRef, "protocol", "4TheFun");
$fail |= Test_Run ("Getservers request with an invalid protocol number");

exit $fail;
