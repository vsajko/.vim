#!/usr/bin/perl -CSD

# I     1    STDIN is assumed to be in UTF-8
# O     2    STDOUT will be in UTF-8
# E     4    STDERR will be in UTF-8
# S     7    I + O + E
# i     8    UTF-8 is the default PerlIO layer for input streams
# o    16    UTF-8 is the default PerlIO layer for output streams
# D    24    i + o
# A    32    the @ARGV elements are expected to be strings encoded in UTF-8
# L    64    normally the "IOEioA" are unconditional,
# the L makes them conditional on the locale environment
# variables (the LC_ALL, LC_TYPE, and LANG, in the order
#   of decreasing precedence) -- if the variables indicate
# UTF-8, then the selected "IOEioA" are in effect
#

use strict;
use warnings;
use utf8;
use Data::Dumper;
use DBI();

use XML::LibXML;
use Digest::MD5 qw(md5 md5_hex md5_base64);

use FindBin qw($RealBin $RealScript);
use lib "$RealBin/../lib/";
use CIO;
