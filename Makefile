build:
	docker image build -f $(PWD)/Dockerfile -t inewsland/scraper-server:latest .
