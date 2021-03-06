TAG=1.0.1

.PHONY: dist

dist:
	GOOS=linux GOARCH=amd64 go build -o pagerduty-cli_$(TAG)_linux_amd64
	GOOS=darwin GOARCH=amd64 go build -o pagerduty-cli_$(TAG)_darwin_amd64
	GOOS=linux GOARCH=386 go build -o pagerduty-cli_$(TAG)_linux_i386
	GOOS=darwin GOARCH=386 go build -o pagerduty-cli_$(TAG)_darwin_i386
