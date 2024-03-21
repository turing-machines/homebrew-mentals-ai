class MentalsAi < Formula
  desc "Custom AI Agents built in Rust"
  homepage "https://turingpi.com"
  if Hardware::CPU.intel?
    url "https://github.com/turing-machines/mentals-ai/releases/download/#{version}/mentals-ai-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "8c2b83d3841b27c2983a9aa79633488931c413c3c2375d7be98df2708da37ac4"
  elsif Hardware::CPU.arm?
    url "https://github.com/turing-machines/mentals-ai/releases/download/#{version}/mentals-ai-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "17b0f7fe05f1824fac3df843e9bee8bc38adfb6f7611847e00dc7bbf5bb1587a"
  end
  license "MIT"

  def install
    bin.install "mentals-ai"
  end
end