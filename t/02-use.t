#
#===============================================================================
#
#         FILE: 02-use.t
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Felipe da Veiga Leprevost (Leprevost, F.V.), leprevost@cpan.org
# ORGANIZATION: Fiocruz - PR
#      VERSION: 1.0
#      CREATED: 02/21/2013 08:12:34 AM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use v5.14.2;

use Test::More tests => 4;                      # last test to print

use AI::NeuralNet::Hopfield;

my $hop = AI::NeuralNet::Hopfield->new(row => 4, col => 4);

my @pattern1 = qw(true true false false);

$hop->train(@pattern1);

my @result = $hop->evaluate(@pattern1); 

ok( $result[0] eq 'true', 'same as trainign set' );
ok( $result[1] eq 'true', 'same as trainign set' );
ok( $result[2] eq 'false', 'same as trainign set' );
ok( $result[3] eq 'false', 'same as trainign set' );

done_testing();
