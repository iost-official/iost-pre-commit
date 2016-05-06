pre-commit-golang
=================

golang hooks for http://pre-commit.com/

### Using these hooks

Add this to your `.pre-commit-config.yaml`

    -   repo: https://github.com/gabriel/pre-commit-golang
        sha: HEAD
        hooks:
        -   id: go-fmt
        -   id: go-metalinter
            args:
            - --exclude=corefoundation.go
            - --deadline=60s
            - --vendor
            - --cyclo-over=20
            - --dupl-threshold=100


### Available hooks

- `go-fmt` - Runs `gofmt`, requires golang
- `go-vet` - Runs `go vet`, requires golang
- `go-lint` - Runs `golint`, requires https://github.com/golang/lint
- `go-metalinter` - Runs `gometalinter`, requires https://github.com/alecthomas/gometalinter

### Metalinter

- Runs on all files by default not just changed files (since the metalinter only operates on folders)
- Use args to override default options
