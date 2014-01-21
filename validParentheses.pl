#!/usr/bin/perl

use Data::Dumper;

#   Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
#   The brackets must close in the correct order, "()" and "()[]{}" are all valid but "(]" and "([)]" are not.

my ($par) = @ARGV;

my $result = isValid($par);

print Dumper $result;

sub isValid(){
    my ($str) = @_;
    my @str = split //,$str;
    return 'Not Valid' unless ($#str%2);
    my $map = {
        '(' => ')',
        '{' => '}',
        '[' => ']',
    };
    for (my $i=0;$i<=$#str;$i+=2){
         return 'Not Valid' unless ($map->{@str[$i]} eq @str[$i+1]) ;
    }
    return 'Valid';
}
