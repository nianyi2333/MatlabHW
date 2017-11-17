% see this work in eqtogal.m in this fold
clc; clear; close all;
ra = 266.405; dec = -28.936; %输入银心的赤经赤纬作为尝试
[l,b] = eqtogal_2(ra,dec);
display([l,b])