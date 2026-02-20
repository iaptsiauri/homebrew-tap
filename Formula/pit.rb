class Pit < Formula
  desc "Run multiple coding agents in parallel with git worktree isolation"
  homepage "https://github.com/iaptsiauri/pit"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iaptsiauri/pit/releases/download/v0.4.0/pit-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "394d1d7a9c9488a6d038172b3893197f6359c801b7cd015e174981bef1c90e4e"
    end

    on_intel do
      url "https://github.com/iaptsiauri/pit/releases/download/v0.4.0/pit-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "b1d0cd7b0f8994acc38dfbf57aab60e46d82cdf81a3a0ae0c948315e77ea64a3"
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
