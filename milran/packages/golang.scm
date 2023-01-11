(define-module (milran packages golang)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module (guix gexp)
  #:use-module (guix build-system go)
  #:use-module (gnu packages golang))

(define-public go-bitbucket-org-creachadair-shell
  (package
    (name "go-bitbucket-org-creachadair-shell")
    (version "0.0.7")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://bitbucket.org/creachadair/shell")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "03vl9xsk14k84jcf3br91d5hy81y9g0d7jqk181sfndspn6v7l7j"))))
    (build-system go-build-system)
    (arguments
     `(#:import-path "bitbucket.org/creachadair/shell"))
    (propagated-inputs `(("go-github-com-google-go-cmp-cmp" ,go-github-com-google-go-cmp-cmp)))
    (home-page "https://bitbucket.org/creachadair/shell")
    (synopsis "Command-line splitting similar to the POSIX shell")
    (description
     "Package shell supports splitting and joining of shell command strings.")
    (license license:bsd-3)))

