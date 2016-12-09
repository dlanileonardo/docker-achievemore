# `adocker` is alias to `azk docker`
all:
	# latest
	adocker build -t dlanileonardo/docker-achievemore           .

--no-cache:
	# latest
	adocker build --rm --no-cache -t dlanileonardo/docker-achievemore           .