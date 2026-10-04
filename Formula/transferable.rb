class Transferable < Formula
  desc "Upload files and create deliveries on Transferable from the terminal"
  homepage "https://transferable.io"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/transferable-io/cli/releases/download/v0.1.1/transferable-darwin-arm64.tar.gz"
      sha256 "d0d3e34fea8b442f19c2de075ff8cc5cf2b41c1b02be35e1420a273b7d53dd28"
    end
    on_intel do
      url "https://github.com/transferable-io/cli/releases/download/v0.1.1/transferable-darwin-x64.tar.gz"
      sha256 "70701c5b9424c85743fdc63288dce3b57a791d67ed895c34a84ef41994827101"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/transferable-io/cli/releases/download/v0.1.1/transferable-linux-arm64.tar.gz"
      sha256 "789461858f90aa7eb500a2a80b8d1fe770885ff1d6cc1e96141041764d8b06bb"
    end
    on_intel do
      url "https://github.com/transferable-io/cli/releases/download/v0.1.1/transferable-linux-x64.tar.gz"
      sha256 "b7c1e288b72a06871d9fa39e9597d6cba89c3c5b4934d93708c9a20f87ccd9ad"
    end
  end

  def install
    bin.install "transferable"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/transferable --version")
  end
end
