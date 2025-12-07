cask "respira-pulse" do
  version "0.1.0-dev.37"

  if Hardware::CPU.arm?
    sha256 "e49b14754d36d821825a9dcda752e7590972125d131563939855529a22ea3a8d"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v0.1.0-dev.37/Respira-Pulse-arm64.dmg"
  else
    sha256 "81f197df53d7e1fc3e564bf5ff10eec5a9b0a867806951dac5641b4e83b1aa8c"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v0.1.0-dev.37/Respira-Pulse-x64.dmg"
  end

  name "Respira Pulse"
  desc "Menu bar app for monitoring Vercel deployments"
  homepage "https://www.respirapulse.dev"

  app "Respira Pulse.app"

  zap trash: [
    "~/Library/Application Support/cafe.respira.pulse",
    "~/Library/Preferences/cafe.respira.pulse.plist",
    "~/Library/Caches/cafe.respira.pulse",
  ]
end
