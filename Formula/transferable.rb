class Transferable < Formula
  desc "Upload files and create deliveries on Transferable from the terminal"
  homepage "https://transferable.io"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/transferable-io/cli/releases/download/v0.1.0/transferable-darwin-arm64.tar.gz"
      sha256 "e0235e62c909d19dd1c4c9c3122b13027e4f6056986fad4cf215a7e3a4c77aff"
    end
    on_intel do
      url "https://github.com/transferable-io/cli/releases/download/v0.1.0/transferable-darwin-x64.tar.gz"
      sha256 "45b2e5ea1a1f50613dfef8e1b44e6cc31994d25e26ba735e9bcec0984cda9f60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/transferable-io/cli/releases/download/v0.1.0/transferable-linux-arm64.tar.gz"
      sha256 "53c7951558fa21b1d22f1259f2ed87a65e9fa3634d8958c8407e65cffb3ce371"
    end
    on_intel do
      url "https://github.com/transferable-io/cli/releases/download/v0.1.0/transferable-linux-x64.tar.gz"
      sha256 "89025415f9762fde5f796c7ab1c0d0cb7937ec4686038a8de45f22def2960f04"
    end
  end

  def install
    bin.install "transferable"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/transferable --version")
  end
end
