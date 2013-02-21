#
#===============================================================================
#
#         FILE: 01-class.t
#
#  DESCRIPTION: 
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Felipe da Veiga Leprevost (Leprevost, F.V.), leprevost@cpan.org
# ORGANIZATION: Fiocruz - PR
#      VERSION: 1.0
#      CREATED: 02/21/2013 07:30:32 AM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use v5.14.2;

use Test::More tests => 3;                      # last test to print

use AI::NeuralNet::Hopfield;

my $scalar = AI::NeuralNet::Hopfield->new(row => 2, col => 2);

isa_ok( $scalar, 'AI::NeuralNet::Hopfield' );

can_ok( $scalar, 'train' );
can_ok( $scalar, 'evaluate' );

done_testing();

