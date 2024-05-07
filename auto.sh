#!/bin/bash

for (( i=0; i <= 9; i++ ))
do
    mkdir ex0$i && touch ex0$i/day02_ex0$i.sql
done

mkdir ex10 && touch day02_ex10.sql
