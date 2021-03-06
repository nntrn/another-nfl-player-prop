library(jsonlite)
library(shiny)
library(RCurl)
library(stringr)
library(reshape)
library(htmlwidgets)
library(rpivotTable)
library(dplyr)

options(stringsAsFactors = FALSE)
Sys.setenv(TZ = "America/Chicago")
options(width = 160)

base <- "https://raw.githubusercontent.com/nntrn/player-props/master/nfl-player-prop/data/"

boxscore <- read.csv(text=getURL(paste0(base,"boxscore.csv")))
calendar <- read.csv(text=getURL(paste0(base,"calendar.csv")))
player_games <- read.csv(text=getURL(paste0(base,"player_games.csv")))
season_games <- read.csv(text=getURL(paste0(base,"season_games.csv")))