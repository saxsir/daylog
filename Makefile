BUNDLE := $(shell which bundler)

config.yml:
	cp config.sample.yml config.yml

setup: config.yml

install:
	$(BUNDLE) install --path vendor/bundle

.PHONY: test
test:
	$(BUNDLE) exec ruby test/daylog_test.rb
