class Transferable < Formula
  desc "Upload files and create deliveries on Transferable from the terminal"
  homepage "https://transferable.io"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/transferable-io/cli/releases/download/v0.2.1/transferable-darwin-arm64.tar.gz"
      sha256 "9ab6fbdf7a6ae4a4919d1e7b650775692fe78ee1e0a2ebf85060612203133177"
    end
    on_intel do
      url "https://github.com/transferable-io/cli/releases/download/v0.2.1/transferable-darwin-x64.tar.gz"
      sha256 "5c2c8896680121a6ace1d1cd3f45c4d1efb2143479108b4ac71d0b39c2f52d11"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/transferable-io/cli/releases/download/v0.2.1/transferable-linux-arm64.tar.gz"
      sha256 "9443e78abbc22688a63b70e675085e9f89cc45cf7129d0035701217365a7ab4f"
    end
    on_intel do
      url "https://github.com/transferable-io/cli/releases/download/v0.2.1/transferable-linux-x64.tar.gz"
      sha256 "4d3c4eaae7a41cab240c0a3f8207488fd0890a746ac89465caba3efbd1ceb4c1"
    end
  end

  def install
    bin.install "transferable"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/transferable --version")
  end
end
