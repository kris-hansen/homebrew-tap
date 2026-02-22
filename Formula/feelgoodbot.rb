class Feelgoodbot < Formula
  desc "Malware detection for macOS - know when you've been compromised"
  homepage "https://feelgoodbot.com"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kris-hansen/feelgoodbot/releases/download/v0.1.0/feelgoodbot_0.1.0_darwin_arm64.tar.gz"
      sha256 "735841220539d6c747de9e6fe746db68048a9cb3bdcd99cc73a7d9cc7fcc31c2"
    end
    on_intel do
      url "https://github.com/kris-hansen/feelgoodbot/releases/download/v0.1.0/feelgoodbot_0.1.0_darwin_amd64.tar.gz"
      sha256 "1ca76804d168e8ac9d463f776c88af14734b62b8fc934c3837339987dd3dd78a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kris-hansen/feelgoodbot/releases/download/v0.1.0/feelgoodbot_0.1.0_linux_arm64.tar.gz"
      sha256 "09dacc83833f6f9e08570cb3cad42cb7df4d254f77dbba55ff6bef72f9d2ad6b"
    end
    on_intel do
      url "https://github.com/kris-hansen/feelgoodbot/releases/download/v0.1.0/feelgoodbot_0.1.0_linux_amd64.tar.gz"
      sha256 "05f07b467127f751d190d54739b1aa7f31634f3898e90ea5a7fecfade0d889fe"
    end
  end

  def install
    bin.install "feelgoodbot"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/feelgoodbot version")
  end
end
