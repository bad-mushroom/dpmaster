#!/usr/bin/perl -w

use strict;
use testlib;


my $fail = 0;
my $serverRef = Server_New ();
my $clientRef = Client_New ();

for my $protocol (-1 .. 1) {
	Server_SetGameProperty ($serverRef, "protocol", $protocol);
	Client_SetGameProperty ($clientRef, "protocol", $protocol);
	$fail |= Test_Run ("Server using " . $protocol . " as its protocol number");
}

exit $fail;
