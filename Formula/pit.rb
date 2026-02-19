class Pit < Formula
  desc "Run multiple coding agents in parallel with git worktree isolation"
  homepage "https://github.com/iaptsiauri/pit"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iaptsiauri/pit/releases/download/v0.3.0/pit-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "8338f284dd5b80efaa91064d87bc9fbf0fb79996020184eab1b5c48a3a67afc6"
    end

    on_intel do
      url "https://github.com/iaptsiauri/pit/releases/download/v0.3.0/pit-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "02244456a0122b8dbf60b3ceae2dad8d69243dc30fb3d9df1281d4adfbac0952"
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
