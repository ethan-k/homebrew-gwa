class Gwa < Formula
  desc "Git Worktree Assistant - manage git worktrees efficiently"
  homepage "https://github.com/ethan-k/gwa"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethan-k/gwa/releases/download/v#{version}/gwa-macos-arm64.tar.gz"
      sha256 "c38f0bda3b96a51d167ace224ee0e18fd66059b9ad3b4893a136de7ffff30b94"
    end
    on_intel do
      url "https://github.com/ethan-k/gwa/releases/download/v#{version}/gwa-macos-x64.tar.gz"
      sha256 "a365324d1168ef4907c0f2747cb0674294b12c7fbe19776f15de9d4f6f0b82e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ethan-k/gwa/releases/download/v#{version}/gwa-linux-arm64.tar.gz"
      sha256 "2641272290ab182e13ed121bc1315ce556d127070f0e2ae3a6aeb00d0070efcd"
    end
    on_intel do
      url "https://github.com/ethan-k/gwa/releases/download/v#{version}/gwa-linux-x64.tar.gz"
      sha256 "f89b8dbfb5162dc1e1429ad57cf9aca299a88b0219ae887c5016abddc2f94423"
    end
  end

  def install
    bin.install "gwa"
  end

  test do
    system "#{bin}/gwa", "--version"
  end
end
