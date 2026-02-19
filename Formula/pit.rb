class Pit < Formula
  desc "Run multiple coding agents in parallel with git worktree isolation"
  homepage "https://github.com/iaptsiauri/pit"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iaptsiauri/pit/releases/download/v0.2.1/pit-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "a8ec276260123a97aa12bae89c844b649a6f266dbfc38992d927979eeacda7ed"
    end

    on_intel do
      url "https://github.com/iaptsiauri/pit/releases/download/v0.2.1/pit-0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "a0450d50339f8875a3960d01fd90c53fb654089307a31af86c80baeb55cd1620"
    end
  end

  depends_on "tmux"

  def install
    bin.install "pit"
  end

  test do
    assert_match "pit", shell_output("#{bin}/pit --version")
  end
end
