cask "respira-pulse" do
  version "0.1.0-dev.55"

  if Hardware::CPU.arm?
    sha256 "a8b061b96bc1592cb27dcdd9950b18acbcdc2e1f7f3091e5f525f303f09fd746"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v0.1.0-dev.55/Respira-Pulse-arm64.dmg"
  else
    sha256 "bc7a506b79f1a4f0033603caaf90bcb6d921937ef962581864c06a44c240c2bf"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v0.1.0-dev.55/Respira-Pulse-x64.dmg"
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
