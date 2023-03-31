-- order matters it will scan street then city
CREATE INDEX multiaddr ON addresses(street, city);