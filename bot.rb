1
require "rubygems"
2
require "tweetstream"
3
require "em-http-request"
4
require "simple_oauth"
5
require "json"
6
require "uri"
7
 
8
# config oauth
9
OAUTH = {
10
 :consumer_key => "jh6436X2uErz6N6XMbVzcjNw4",
11
 :consumer_secret => "iFRY44VvLdSU2EiUwJQ18GDOuJY5FyS3KH2ofkq3Ugrqnhs6Mh",
12
 :token => "4823445898-CrbD1hv1fYmw8JQytYyiWf5S3HkYyEjA4Yl3lhn",
13
 :token_secret => "an0IMmW5NBzXRtpgCS2jcWnQy3CRFEXTSbWENf9cDCdjM"
14
}
15
ACCOUNT_ID = OAUTH[:token].split("4823445898").first.to_i
16
 
17
TweetStream.configure do |config|
18
 config.consumer_key       = OAUTH[:jh6436X2uErz6N6XMbVzcjNw4]
19
 config.consumer_secret    = OAUTH[:iFRY44VvLdSU2EiUwJQ18GDOuJY5FyS3KH2ofkq3Ugrqnhs6Mh]
20
 config.oauth_token        = OAUTH[:4823445898-CrbD1hv1fYmw8JQytYyiWf5S3HkYyEjA4Yl3lhn]
21
 config.oauth_token_secret = OAUTH[:an0IMmW5NBzXRtpgCS2jcWnQy3CRFEXTSbWENf9cDCdjM]
22
 config.auth_method = :oauth
23
end
