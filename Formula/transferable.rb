class Transferable < Formula
  desc "Upload files and create deliveries on Transferable from the terminal"
  homepage "https://transferable.io"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/transferable-io/cli/releases/download/v0.2.0/transferable-darwin-arm64.tar.gz"
      sha256 "1eb4145b27b35125328f8045441aa40dc516002a6627de1ca7f1ee015e9f0cc5"
    end
    on_intel do
      url "https://github.com/transferable-io/cli/releases/download/v0.2.0/transferable-darwin-x64.tar.gz"
      sha256 "ed98a77e111767be606e48fa2dcd965488e297534414c7cf3a1b0bc64bedfa1d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/transferable-io/cli/releases/download/v0.2.0/transferable-linux-arm64.tar.gz"
      sha256 "4ee94934ad41b9ccd0485980fc644dfcc1d846079394fac1662db591ef110dc3"
    end
    on_intel do
      url "https://github.com/transferable-io/cli/releases/download/v0.2.0/transferable-linux-x64.tar.gz"
      sha256 "a2881830e80fffb67acaf533e1a83e1dd00e5495160b625107aa7ef71a306b66"
    end
  end

  def install
    bin.install "transferable"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/transferable --version")
  end
end
