parse: node_modules
	node_modules/.bin/bailey ./ ./build --node

start: parse
	forever start build/index.js

restart: parse
	forever restart build/index.js

stop:
	forever stop build/index.js

node_modules:
	npm install

.PHONY: parse start stop
