class Gwa < Formula
  desc "Git Worktree Assistant - manage git worktrees efficiently"
  homepage "https://github.com/ethan-k/gwa"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethan-k/gwa/releases/download/v#{version}/gwa-macos-aarch64.tar.gz"
      sha256 "PLACEHOLDER_MACOS_ARM64"
    end
    on_intel do
      url "https://github.com/ethan-k/gwa/releases/download/v#{version}/gwa-macos-x86_64.tar.gz"
      sha256 "PLACEHOLDER_MACOS_X86_64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ethan-k/gwa/releases/download/v#{version}/gwa-linux-aarch64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64"
    end
    on_intel do
      url "https://github.com/ethan-k/gwa/releases/download/v#{version}/gwa-linux-x86_64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_X86_64"
    end
  end

  def install
    bin.install "gwa"
  end

  test do
    system "#{bin}/gwa", "--version"
  end
end
