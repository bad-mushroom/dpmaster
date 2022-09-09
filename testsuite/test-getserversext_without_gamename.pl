#!/usr/bin/perl -w

use strict;
use testlib;

my $fail = 0;

my $clientRef = Client_New ();
Client_SetProperty ($clientRef, "alwaysUseExtendedQuery", 1);

Client_SetGameProperty ($clientRef, "gamename", undef);
$fail |= Test_Run ("Client using an extended query without a game name");

Client_SetProperty ($clientRef, "queryFilters", "");
Client_SetGameProperty ($clientRef, "protocol", undef);
$fail |= Test_Run ("Client using an empty extended query");

exit $fail;
