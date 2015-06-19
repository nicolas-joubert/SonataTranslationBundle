cs:
	./vendor/bin/php-cs-fixer fix --verbose

cs_dry_run:
	./vendor/bin/php-cs-fixer fix --verbose --dry-run

csslint_run:
	csslint Resources/public/css/ --ignore=adjoining-classes,important,overqualified-elements

test:
	phpunit
	cd Resources/doc && sphinx-build -W -b html -d _build/doctrees . _build/html

ai:
	lessc Resources/public/less/sonata-translation.less > Resources/public/css/sonata-translation.css
