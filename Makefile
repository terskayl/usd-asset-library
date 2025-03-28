.PHONY: all login install migrate run

all: login migrate run

login:
	mysql -u root -p

migrate:
	python asset_library/manage.py makemigrations
	python asset_library/manage.py migrate

run:
	python asset_library/manage.py runserver

# env-up:
# 	pyenv activate usd-asset-library; \

# env-down:
# 	pyenv deactivate usd-asset-library; \