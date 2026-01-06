class Gwa < Formula
  desc "Git Worktree Assistant - manage git worktrees efficiently"
  homepage "https://github.com/ethan-k/gwa"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ethan-k/gwa/releases/download/v#{version}/gwa-macos-arm64.tar.gz"
      sha256 "c6c7e09093105877f094c138247ee3d4f9ed40afecd635c2726c80eae5762b6a"
    end
    on_intel do
      url "https://github.com/ethan-k/gwa/releases/download/v#{version}/gwa-macos-x64.tar.gz"
      sha256 "ff87bb5d5248e4c5aeb0dbf9ae123fc1069b4f8f4c5f1209b4255a2dc589d1e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ethan-k/gwa/releases/download/v#{version}/gwa-linux-arm64.tar.gz"
      sha256 "4d854d08c86cbe54cea2d94c2af18cc614f397d3cc3495fca8b469c724ccaada"
    end
    on_intel do
      url "https://github.com/ethan-k/gwa/releases/download/v#{version}/gwa-linux-x64.tar.gz"
      sha256 "ad062baae240417e6bdf1fdd8a7b2d04942f0fef855a3dba19f9122ab6c4d17f"
    end
  end

  def install
    bin.install "gwa"
  end

  test do
    system "#{bin}/gwa", "--version"
  end
end
