## Docker ##
docker_build_image:
	docker build -t matthiasluedtke/pdfsandwich:latest -t matthiasluedtke/pdfsandwich:`cat VERSION` .

docker_push_images_all: docker_push_image_latest docker_push_image_version

docker_push_image_latest:
	docker push matthiasluedtke/pdfsandwich:latest

docker_push_image_version:
	docker push matthiasluedtke/pdfsandwich:`cat VERSION`

## Debug ##
supported_languages:
	docker run matthiasluedtke/pdfsandwich:latest tesseract --list-langs
	docker run matthiasluedtke/pdfsandwich:latest pdfsandwich -list_langs

print_versions:
	docker run matthiasluedtke/pdfsandwich:latest convert -version
	docker run matthiasluedtke/pdfsandwich:latest unpaper -version
	docker run matthiasluedtke/pdfsandwich:latest tesseract -v
	docker run matthiasluedtke/pdfsandwich:latest gs -v
