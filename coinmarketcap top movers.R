library(coinmarketcapr)
setup("eb11a286-329c-40dd-91bb-138d3286489a")
market_today <- get_crypto_listings(currency = "USD", latest = TRUE)
top_movers <- subset(market_today, USD_percent_change_7d > 20)
top_movers_df <- data.frame(top_movers$name, top_movers$symbol, top_movers$cmc_rank, top_movers$USD_price, top_movers$USD_percent_change_24h, top_movers$USD_percent_change_7d)
colnames(top_movers_df) <- c("Crypto_Name", "Symbol", "Rank", "Price", "%Chg - 24 Hour", "%Chg - 7 Day")
View(top_movers_df)



