#!/usr/bin/env perl

#   Given a string, find the length of the longest substring without repeating characters. For example, the longest substring without repeating letters for "abcabcbb" is "abc", which the length is 3. For "bbbbb" the longest substring is "b", with the length of 1.

use Data::Dumper;

my ($par) = @ARGV;

my $result = lengthOfLongestSubstring($par);
print Dumper $result;

sub lengthOfLongestSubstring(){
    my ($str) = @_;
    my @str = split //, $str;
    my $tmpLen;
    my $len = $#str;     
    for (my $i=0 ; $i<=$len ; $i++){
        my $tmpStr;
        foreach (@str){
            last if ($tmpStr =~ $_);
            $tmpStr .= $_ ;
            my @tmpLenArr = split //,$tmpStr;
            $tmpLen    = $#tmpLenArr if ($#tmpLenArr >= $tmpLen );
        }
        shift @str;
    }

    return $tmpLen+1;
}
