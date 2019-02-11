{-# LANGUAGE OverloadedStrings #-}

import Network.HTTP

api_key = "b03af69c"

getMovieInfo :: String -> IO String
getMovieInfo title = simpleHTTP req >>= getResponseBody 
    where req = getRequest url
          url = "http://www.omdbapi.com/?apikey=" ++ api_key ++ "&t=" ++ title
