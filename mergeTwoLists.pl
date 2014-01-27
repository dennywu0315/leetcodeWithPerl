#!/usr/bin/env perl

use Data::Dumper;

#    Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.

my @arr1 = (1,3,5,9,14,25,36);
my @arr2 = (2,4,6,10,12,15);

my @result;
mergeTwoLists(\@arr1,\@arr2);

print Dumper @result;

sub mergeTwoLists(){
    my ($a1,$a2) = @_;
    my @a1 = @$a1;
    my @a2 = @$a2;
    my $tmp;
    if (defined @a1 && defined @a2){
        if (@a1[0] >= @a2[0]){
            $tmp = shift @a2;
            push @result, $tmp;
        }else{
            $tmp = shift @a1;
            push @result, $tmp;
        }
    }elsif((!defined @a1)&& defined @a2){
        $tmp = shift @a2; 
        push @result, $tmp;
    }elsif((!defined @a2)&& defined @a1){
        $tmp = shift @a1;
        push @result, $tmp;
    }else{
        return;
    }
    mergeTwoLists(\@a1,\@a2);
}


