class Transferable < Formula
  desc "Upload files and create deliveries on Transferable from the terminal"
  homepage "https://transferable.io"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/transferable-io/cli/releases/download/v0.1.2/transferable-darwin-arm64.tar.gz"
      sha256 "1d5a71b0b308f434eb27efe886cc4f3df60523225aa671bb3aaacfe0697a578d"
    end
    on_intel do
      url "https://github.com/transferable-io/cli/releases/download/v0.1.2/transferable-darwin-x64.tar.gz"
      sha256 "e9f953e1166d727415412af606f8820e60a885c7270b7bf51b6f5d0d48cb1872"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/transferable-io/cli/releases/download/v0.1.2/transferable-linux-arm64.tar.gz"
      sha256 "5131121147ebb432127af4fcd100da4be419b08d355d9f2c921c6ea58ec093d8"
    end
    on_intel do
      url "https://github.com/transferable-io/cli/releases/download/v0.1.2/transferable-linux-x64.tar.gz"
      sha256 "23f4bc2530782ff4917588b1de7ee2924ca8f60ddfce5e610336566df4dd2660"
    end
  end

  def install
    bin.install "transferable"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/transferable --version")
  end
end
