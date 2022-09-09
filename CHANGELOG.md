
# Dpmaster, an open master server


## Version history



### Version 2.3-dev:
  - The date in the log header was incorrect when it was enabled from the start
  - Several little fixes and enhancements to the test suite, by Simon McVittie

### Version 2.2:
  - Flood protection against abusive clients, by Timothee Besset
  - New system for managing game properties (see GAME PROPERTIES in manual.txt)
  - Support for RtCW and WoET, using the game properties
  - Shutdown heartbeats and unknown heartbeats are now ignored
  - The chroot jail was preventing daemonization (fixed thanks to LordHavoc)
  - The game type was incorrect when printing the server list in the log
  - Less debug output when creating a getserversResponse in verbose mode

### Version 2.1:
  - A gametype value can now be any string, not just a number

### Version 2.0:
  - Gametype filter support in the server list queries (see techinfo.txt)
  - New option "--game-policy" to filter games (see GAME POLICY in manual.txt)
  - IPv6 support, including 2 new messages types (see techinfo.txt)
  - Logging support (see LOGGING in manual.txt)
  - Only the last packet of a getservers response gets an EOT mark now
  - The default number of servers is now 4096
  - Improved listening interface option (see LISTENING INTERFACES in manual.txt)
  - Long format for all command line options (see SYNTAX & OPTIONS in
    readme.txt)
  - The server lists are now sent in a semi-random order, for fairness
  - The new hash function supports up to 16-bit hashes
  - The default hash size has been increased to 10 bits
  - 0 is no longer an invalid hash size
  - New option "--allow-loopback", for debugging purposes only!
  - New option "--hash-ports", for debugging purposes only!
  - Various updates and improvements in the documentation
  - No warning is printed anymore if a server changes its game name
  - No longer tolerates several mapping declarations for the same address
  - A lot of minor changes and fixes in the code
  - The test suite now requires the Socket6 Perl module to run

### Version 1.7:
  - There's now a maximum number of servers per IP address (default: 32)
  - New option to set the maximum number of servers per IP address (-N)
  - The maximum number of servers recorded by default is now 1024
  - The default hash size has been increased from 6 bits to 8 bits
  - A few Perl scripts have been added to provide basic automated testing
  - A rare bug where a server was occasionally skipped was fixed
  - The compilation with MS Visual Studio 2005 is fixed
  - Protocol numbers less than or equal to 0 are now handled correctly
  - Servers can no longer keep their slots without sending infoResponses
  - Games having a name starting with a number are now handled correctly
  - A few minor memory leaks were removed in the address mapping init code
  - Additional checks of the command line options and the messages syntax
  - The requirement of a "clients" value in infoResponses is now enforced
  - The "infoResponse" description in techinfo.txt has been corrected
  - The "heartbeat" description in techinfo.txt has been corrected
  - The time is now printed to the console each time a packet is received
  - Made it clear in the doc that any game can be supported out of the box

### Version 1.6:
  - Several getserversResponse may now be sent for a single getservers
  - A getserversResponse packet can no longer exceed 1400 bytes
  - The maximum number of servers recorded by default has doubled (now 256)
  - The default hash size has been increased from 5 bits to 6 bits
  - Several updates and corrections in the documentation

### Version 1.5.1:
  - Compilation on FreeBSD was fixed
  - A couple of minor changes in "COMPILING DPMASTER" (in techinfo.txt)

### Version 1.5:
  - Address mapping added (see ADDRESS MAPPING in manual.txt)
  - Servers on a loopback address are accepted again if they have a mapping
  - A valid "infoReponse" is now rejected if its challenge has timed out
  - The size of the challenge sent with "getinfo" has been made random
  - A timed-out server is now removed as soon as a new server needs a slot
  - Several little changes in the printings to make them more informative
  - A technical documentation was added
  - Compiling dpmaster with MSVC works again

### Version 1.4:
  - Dpmaster now quits if it can't chroot, switch privileges or daemonize
  - Packets coming from a loopback address are now rejected with a warning
  - Listen address option added (-l)
  - Modified Makefile to please BSD make

### Version 1.3.1:
  - SECURITY WARNING: 2 exploitable buffer overflows were fixed
  - Verbose option parsing fixed
  - Paranoid buffer overflow checkings added, in case of future code changes

### Version 1.3:
  - Ability to support any game which uses DP master protocol (ex: QFusion)

### Version 1.2.1:
  - A major bug was fixed (a NULL pointer dereference introduced in v1.2)

### Version 1.2:
  - A major bug was fixed (an infinite loop in HandleGetServers)

### Version 1.1:
  - A lot of optimizations and tweakings
  - Verbose option added (-v)
  - Hash size option added (-H)
  - Daemonization option added on UNIXes (-D)
  - Chrooting and privileges dropping when running as root added on UNIXes
  - MinGW cross-compilation support added

### Version 1.01:
  - A major bug was fixed. Most of the servers weren't sent to the clients

### Version 1.0 :
  - First publicly available version
