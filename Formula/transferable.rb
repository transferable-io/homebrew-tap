class Transferable < Formula
  desc "Upload files and create deliveries on Transferable from the terminal"
  homepage "https://transferable.io"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/transferable-io/cli/releases/download/v0.1.3/transferable-darwin-arm64.tar.gz"
      sha256 "89012a7797bc1301036f786ee4704753841dabe24fb87fa538589d70dea094a4"
    end
    on_intel do
      url "https://github.com/transferable-io/cli/releases/download/v0.1.3/transferable-darwin-x64.tar.gz"
      sha256 "13d9cec258d0e915a0cbc33502993c3abee6fd9a0e7481059ce1ecc867047950"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/transferable-io/cli/releases/download/v0.1.3/transferable-linux-arm64.tar.gz"
      sha256 "79285b1d4d67f62281eea89683167b0117224f095ae58a1df4b30ff3ac8a50fe"
    end
    on_intel do
      url "https://github.com/transferable-io/cli/releases/download/v0.1.3/transferable-linux-x64.tar.gz"
      sha256 "6acd138a84fc533a0c13e42a6474326e99c4685474fec6d83f6e85a9869a9bb2"
    end
  end

  def install
    bin.install "transferable"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/transferable --version")
  end
end
