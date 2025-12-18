.PHONY: namespace postgres kratos hydra keto oathkeeper all

SCRIPT_DIR=$(shell cd scripts/setup && pwd)
SETUP_SCRIPT=$(SCRIPT_DIR)/setup-ory.sh

namespace:
	bash $(SETUP_SCRIPT) create_namespace

postgres:
	bash $(SETUP_SCRIPT) deploy_postgres

kratos:
	bash $(SETUP_SCRIPT) deploy_kratos

hydra:
	bash $(SETUP_SCRIPT) deploy_hydra

keto:
	bash $(SETUP_SCRIPT) deploy_keto

oathkeeper:
	bash $(SETUP_SCRIPT) deploy_oathkeeper

all: namespace postgres kratos hydra keto oathkeeper