class LocalGitops < Formula
  desc "Local GitOps environment with Kind, ArgoCD, and Gitea"
  homepage "https://github.com/joaopires/useful-stuff"
  url "https://github.com/joaopires/useful-stuff/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "13fb277c79ba69158a20f6e351cd07ae009d17662783c417ccf9f45acfcb2ab7"
  license "MIT"

  depends_on "kind"
  depends_on "helm"
  depends_on "kubectl"

  def install
    # The 'kubernetes' directory contains the Makefile and other necessary files.
    # We install it into the libexec directory to keep it hidden but accessible.
    libexec.install Dir["kubernetes/*"]

    # Create a wrapper script named 'local-gitops' in the bin directory.
    # This script will execute 'make' inside the libexec directory.
    (bin/"local-gitops").write <<~EOS
      #!/bin/bash
      # Forward all arguments to make in the installation directory
      exec make -C #{libexec} "$@"
    EOS
  end

  test do
    # Simple test to verify the command is available and help output works
    assert_match "Usage: make [target]", shell_output("#{bin}/local-gitops help")
  end
end
