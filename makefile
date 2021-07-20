TARGETS := $(shell find ./lua -name "*.lua")

$(TARGETS): template.lua
	@echo "generating the schemes"
	python ./python/colors.py

.PHONY: json_data
json_data: ./python/get_styles.py
	python ./python/get_styles.py

.PHONY: contrast_tables
contrast_tables:
	python ./python/wcag_calculator.py

all: json_data contrast_tables
