class MentalsAi < Formula
  desc "Custom AI Agents built in Rust"
  homepage "https://turingpi.com"
  if Hardware::CPU.intel?
    url "https://github.com/turing-machines/mentals-ai/releases/download/#{version}/mentals-ai-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "calculated-checksum-for-x86_64"
  elsif Hardware::CPU.arm?
    url "https://github.com/turing-machines/mentals-ai/releases/download/#{version}/mentals-ai-#{version}-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "calculated-checksum-for-aarch64"
  end
  license "MIT"

  def install
    bin.install "mentals-ai"
  end
end
