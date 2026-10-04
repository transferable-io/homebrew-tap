class Transferable < Formula
  desc "Upload files and create deliveries on Transferable from the terminal"
  homepage "https://transferable.io"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://github.com/transferable-io/cli/releases/download/v0.2.2/transferable-darwin-arm64.tar.gz"
      sha256 "1d6aaf9e42c35fefbcf9b69599cbd5837e8ee7545b83b4ed2b2aabc643be4278"
    end
    on_intel do
      url "https://github.com/transferable-io/cli/releases/download/v0.2.2/transferable-darwin-x64.tar.gz"
      sha256 "0eb30f9bf1c8404c303f32c1994a2066c0323f0e0bfdd6c1975c286384411fbe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/transferable-io/cli/releases/download/v0.2.2/transferable-linux-arm64.tar.gz"
      sha256 "6f0b563f43cca65ce6bf76c837287cbc3ac3fba6fa70c22eb35a9b534164e2c0"
    end
    on_intel do
      url "https://github.com/transferable-io/cli/releases/download/v0.2.2/transferable-linux-x64.tar.gz"
      sha256 "456e2ea966e7eb006c0aab35aacd470e271ed0b007e6324e200d85aec011c036"
    end
  end

  def install
    bin.install "transferable"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/transferable --version")
  end
end
