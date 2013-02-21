#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: teste.pl
#
#        USAGE: ./teste.pl  
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Felipe da Veiga Leprevost (Leprevost, F.V.), leprevost@cpan.org
# ORGANIZATION: Fiocruz - PR
#      VERSION: 1.0
#      CREATED: 02/07/2013 11:41:43 AM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use v5.14.2;

use lib 'lib/AI/NeuralNet/';
use Hopfield;
use Data::Printer;

my $hop = AI::NeuralNet::Hopfield->new(row => 4, col => 4);

my @pattern1 = qw(true true false false);
my @pattern2 = qw(true false false false);
my @result;

$hop->train(@pattern1);

my @result = $hop->evaluate(@pattern2); 

p @result;


