class Gwa < Formula
  desc "Git Worktree Assistant - manage git worktrees efficiently"
  homepage "https://github.com/ethan-k/gwa"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethan-k/gwa/releases/download/v#{version}/gwa-macos-arm64.tar.gz"
      sha256 "1379c6ed546ed269fedc5ec06211c4701cb24574f23b12f6ff108b7dfe861f6a"
    end
    on_intel do
      url "https://github.com/ethan-k/gwa/releases/download/v#{version}/gwa-macos-x64.tar.gz"
      sha256 "262c6af050a25ac6bf2e3fb4bad95bbed23a36a32e5cb1e9327cc61b20bc6ab0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ethan-k/gwa/releases/download/v#{version}/gwa-linux-arm64.tar.gz"
      sha256 "2e8656485ea09356937e6f402ed08e7366e7bb1a6622e48911a2d3bc35f2d037"
    end
    on_intel do
      url "https://github.com/ethan-k/gwa/releases/download/v#{version}/gwa-linux-x64.tar.gz"
      sha256 "bf67f72875dcb7367b231f9dced0c36d12413859198b7388aaf005566e89bdd8"
    end
  end

  def install
    bin.install "gwa"
  end

  test do
    system "#{bin}/gwa", "--version"
  end
end
