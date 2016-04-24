#!/usr/bin/env perl
use Mojo::Webqq;
my $qq = 158524055;    #修改为你自己的实际QQ号码
my $client = Mojo::Webqq->new(qq=>$qq);
$client->login();
$client->load("ShowMsg");
$client->load("IRCShell"); #加载IRCShell插件
$client->run();
