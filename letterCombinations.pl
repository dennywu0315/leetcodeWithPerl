#!/usr/bin/perl

use strict;
use Data::Dumper;

#   Given a digit string, return all possible letter combinations that the number could represent.
#   A mapping of digit to letters (just like on the telephone buttons) is given below.

#   Input:Digit string "23"
#   Output: ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"].
#   Note:
#   Although the above answer is in lexicographical order, your answer could be in any order you want.

my @par = @ARGV;
my @result ;

letterCombinations(@par);

print Dumper @result;

sub letterCombinations(){
    my @strs = @_;
    my @map  = (' ',' ','abc','def','ghi','jkl','mno','pqrs','tuv','wxyz');
    my (@tmpArr,$res);
    foreach (@strs){
        push @tmpArr , @map[$_];
    }
    dfs(0,$#tmpArr,\@tmpArr,$res);
}

sub dfs(){
    my ($dep,$maxDep,$tmpStr,$result) = @_; 
    my @tmpStr = @$tmpStr;
    if ($dep > $maxDep){
        push @result , $result;
        return;
    }
    my @currArr = split //,@tmpStr[$dep];
    my $len     = $#currArr;
    for (my $i=0;$i<=$len;$i++){
        dfs($dep+1,$maxDep,\@tmpStr,$result.@currArr[$i]);
    }
    
}
