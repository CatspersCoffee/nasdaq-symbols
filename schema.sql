CREATE TYPE nasdaq.exchange AS ENUM
    ('NYSE MKT', 'NYSE', 'NYSE ARCA', 'NASDAQ', 'IEXG', 'BATS');
	
CREATE TYPE nasdaq.financial_status AS ENUM
    ('Deficient', 'Delinquent', 'Bankrupt', 'Normal', 'Deficient and Bankrupt', 'Deficient and Delinquent', 'Delinquent and Bankrupt', 'Deficient, Delinquent, and Bankrupt');
	
CREATE TYPE nasdaq.market_category AS ENUM
    ('Global Select', 'Global', 'Capital');

CREATE TABLE nasdaq.symbol
(
    act_symbol text COLLATE pg_catalog."default" NOT NULL,
    security_name text COLLATE pg_catalog."default" NOT NULL,
    listing_exchange nasdaq.exchange NOT NULL,
    market_category nasdaq.market_category,
    is_etf boolean,
    round_lot_size integer NOT NULL,
    is_test_issue boolean NOT NULL,
    financial_status nasdaq.financial_status,
    cqs_symbol text COLLATE pg_catalog."default",
    nasdaq_symbol text COLLATE pg_catalog."default" NOT NULL,
    is_next_shares boolean NOT NULL,
    CONSTRAINT symbol_pkey PRIMARY KEY (act_symbol)
);
