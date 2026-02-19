class Pit < Formula
  desc "Run multiple coding agents in parallel with git worktree isolation"
  homepage "https://github.com/iaptsiauri/pit"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/iaptsiauri/pit/releases/download/v0.2.0/pit-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "b8b56d546915d44d426c49f70c485b1d582aed6bdbb0eec97b3552f3cf256065"
    end

    on_intel do
      url "https://github.com/iaptsiauri/pit/releases/download/v0.2.0/pit-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "bd5bd15a28ab3c1ed4808711f1c4bfebbfa87a9e814bbd688a736912d6974e9c"
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
