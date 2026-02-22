class Feelgoodbot < Formula
  desc "Malware detection for macOS - know when you've been compromised"
  homepage "https://feelgoodbot.com"
  url "https://github.com/kris-hansen/feelgoodbot/archive/refs/heads/main.tar.gz"
  version "0.1.0"
  license "MIT"
  head "https://github.com/kris-hansen/feelgoodbot.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
      -X main.commit=homebrew
      -X main.buildDate=#{time.iso8601}
    ]
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/feelgoodbot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/feelgoodbot version")
  end
end
