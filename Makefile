LINT_VERSION=v1.61.0

test:
	@echo "Running tests..."
	@go test ./... -v

lint-install:
	@echo "Installing golangci-lint..."
	@curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh \
		| sh -s -- -b $(shell go env GOPATH)/bin $(LINT_VERSION)

lint:
	@echo "Running golangci-lint..."
	@golangci-lint run --config golangci.yaml --timeout 30m