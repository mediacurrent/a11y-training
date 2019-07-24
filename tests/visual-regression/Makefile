BACKSTOP_BASE := ./
BACKSTOP_BINARY := backstop
ifdef DOCKER
	BACKSTOP_BINARY := docker run --rm -v $(PWD):/src backstopjs/backstopjs
endif
# ------------------------------------------------------------------------------

# NOTES:
# This Makefile assumes you've gone through the README steps in tests/backstop
# This Makefile is also only for running references and tests against the same environment
# Use the setup in tests/backstop to compare different environments, or local changes

prod-reference:
	@cd $(BACKSTOP_BASE) && $(BACKSTOP_BINARY) reference --configPath=backstop.js --pathFile=paths --env=prod

prod-test:
	@cd $(BACKSTOP_BASE) && $(BACKSTOP_BINARY) test --configPath=backstop.js --pathFile=paths --env=prod

prod-report:
	@cd $(BACKSTOP_BASE) && $(BACKSTOP_BINARY) openReport --configPath=backstop.js --env=prod

prod-approve:
	@cd $(BACKSTOP_BASE) && $(BACKSTOP_BINARY) approve --configPath=backstop.js --env=prod

staging-reference:
	@cd $(BACKSTOP_BASE) && $(BACKSTOP_BINARY) reference --configPath=backstop.js --pathFile=paths --env=staging

staging-test:
	@cd $(BACKSTOP_BASE) && $(BACKSTOP_BINARY) test --configPath=backstop.js --pathFile=paths --env=staging

staging-report:
	@cd $(BACKSTOP_BASE) && $(BACKSTOP_BINARY) openReport --configPath=backstop.js --env=staging

staging-approve:
	@cd $(BACKSTOP_BASE) && $(BACKSTOP_BINARY) approve --configPath=backstop.js --env=staging

dev-reference:
	@cd $(BACKSTOP_BASE) && $(BACKSTOP_BINARY) reference --configPath=backstop.js --pathFile=paths --env=dev

dev-test:
	@cd $(BACKSTOP_BASE) && $(BACKSTOP_BINARY) test --configPath=backstop.js --pathFile=paths --env=dev

dev-report:
	@cd $(BACKSTOP_BASE) && $(BACKSTOP_BINARY) openReport --configPath=backstop.js --env=dev

dev-approve:
	@cd $(BACKSTOP_BASE) && $(BACKSTOP_BINARY) approve --configPath=backstop.js --env=dev

ci-reference:
	@cd $(BACKSTOP_BASE) && $(BACKSTOP_BINARY) reference --configPath=backstop.js --pathFile=paths --env=ci

ci-test:
	@cd $(BACKSTOP_BASE) && $(BACKSTOP_BINARY) test --configPath=backstop.js --pathFile=paths --env=ci

ci-report:
	@cd $(BACKSTOP_BASE) && $(BACKSTOP_BINARY) openReport --configPath=backstop.js --env=ci

ci-approve:
	@cd $(BACKSTOP_BASE) && $(BACKSTOP_BINARY) approve --configPath=backstop.js --env=ci

local-reference:
	@cd $(BACKSTOP_BASE) && $(BACKSTOP_BINARY) reference --configPath=backstop.js --pathFile=paths --env=local

local-test:
	@cd $(BACKSTOP_BASE) && $(BACKSTOP_BINARY) test --configPath=backstop.js --pathFile=paths --env=local

local-report:
	@cd $(BACKSTOP_BASE) && $(BACKSTOP_BINARY) openReport --configPath=backstop.js --env=local

local-approve:
	@cd $(BACKSTOP_BASE) && $(BACKSTOP_BINARY) approve --configPath=backstop.js --env=local
