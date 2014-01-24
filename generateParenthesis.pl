#!/usr/bin/perl

use Data::Dumper;

#   Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.
#   For example, given n = 3, a solution set is:
#   "((()))", "(()())", "(())()", "()(())", "()()()"

my ($par) = @ARGV;
my @result;
generateParenthesis($par);

print Dumper @result;

sub generateParenthesis(){
    my ($n) = @_;
    dfs(0,2*$n,0,0,''); 
}

sub dfs(){
    my ($currDep,$maxDep,$currLef,$totalLef,$str) = @_;
    if ($totalLef * 2 > $maxDep){
        return;
    }
    if ($currDep == $maxDep){
        push @result ,$str;
        return;
    } 
    foreach ('(',')'){
        if ($_ eq '('){
            dfs($currDep + 1,$maxDep,$currLef + 1,$totalLef + 1,$str.$_); 
        }else{
            dfs($currDep + 1,$maxDep,$currLef - 1,$totalLef,$str.$_) if $currLef;
        }
    }
}
