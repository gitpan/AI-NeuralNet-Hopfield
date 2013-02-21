#
#===============================================================================
#
#         FILE: 03-diff_sets.t
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Felipe da Veiga Leprevost (Leprevost, F.V.), leprevost@cpan.org
# ORGANIZATION: Fiocruz - PR
#      VERSION: 1.0
#      CREATED: 02/21/2013 08:21:08 AM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use v5.14.2;

use Test::More tests => 4;                      # last test to print

use AI::NeuralNet::Hopfield;

my $hop = AI::NeuralNet::Hopfield->new(row => 4, col => 4);

my @pattern1 = qw(true true false false);
my @pattern2 = qw(true false false false);

$hop->train(@pattern1);

my @result = $hop->evaluate(@pattern2); 

ok( $result[0] eq 'true', 'different trainign sets' );
ok( $result[1] eq 'true', 'different trainign sets' );
ok( $result[2] eq 'false', 'different trainign sets' );
ok( $result[3] eq 'false', 'different trainign sets' );

done_testing();

