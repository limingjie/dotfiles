#!/usr/bin/env zsh
for i in {1..1000}
do
    date +'%I⦂%M %p' | sed 's/0/𝟘/g; s/1/𝟙/g; s/2/𝟚/g; s/3/𝟛/g; s/4/𝟜/g; s/5/𝟝/g; s/6/𝟞/g; s/7/𝟟/g; s/8/⧖/g; s/9/𝟡/g; s/AM/𝔸𝕄/gi; s/PM/ℙ𝕄/gi' > /dev/null
done
