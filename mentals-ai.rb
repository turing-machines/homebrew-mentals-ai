class MentalsAi < Formula
  desc "The place where AI agents live, they are essentially small intelligent beings - mentals..."
  homepage "https://turingpi.com"
  if Hardware::CPU.intel?
    url "https://github.com/turing-machines/mentals-ai/releases/download/#{version}/mentals-ai-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "generated-checksum-intel"
  elsif Hardware::CPU.arm?
    url "https://github.com/turing-machines/mentals-ai/releases/download/#{version}/mentals-ai-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "generated-checksum-arm"
  end
  license "MIT"

  def install
    bin.install "mentals-ai"
  end
end