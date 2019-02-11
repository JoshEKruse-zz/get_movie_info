{-# LANGUAGE OverloadedStrings #-}

import Network.HTTP

api_key = "b03af69c"

getInfo :: String -> IO String
getInfo title = simpleHTTP req >>= getResponseBody 
    where req = getRequest url
          url = "http://www.omdbapi.com/?apikey=" ++ api_key ++ "&t=" ++ title

replaceSpaces :: String -> String
replaceSpaces ""         = ""
replaceSpaces ( ' ':xs ) = '+': newLine xs
replaceSpaces ( x:xs )   = x: newLine xs
