cask "ba-click" do
  version "1.0.0"

  on_arm do
    sha256 "7b35ac22567bfce8b9b6d566507b14ca6fc8c888d7e94667f9a32c9251cffc08"

    url "https://github.com/HarryHello/ba-click-mac/releases/download/v#{version}/BA-Click-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "dbe5e21be8899213f583f4c5b41b02ba3cc8b5804891d7236bd4247feb00112a"

    url "https://github.com/HarryHello/ba-click-mac/releases/download/v#{version}/BA-Click-#{version}-x64.dmg"
  end

  name "BA Click"
  desc "Blue Archive style click effect and cursor trail"
  homepage "https://github.com/HarryHello/ba-click-mac"

  livecheck do
    url "https://github.com/HarryHello/ba-click-mac/releases/latest"
    regex(/BA-Click[._-]v?(\d+(?:\.\d+)+)[._-]arm64\.dmg/i)
  end

  depends_on :macos

  app "BA Click.app"

  zap trash: [
    "~/.ba-click-mac-settings.json",
    "~/.ba-click-mac.lock",
  ]
end
