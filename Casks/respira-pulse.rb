cask "respira-pulse" do
  version "0.1.0-dev.60"

  if Hardware::CPU.arm?
    sha256 "324fe7f94d9879dfcd0b86059173fc12810167d2af36c8e7748ce0dd4f71ae07"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v0.1.0-dev.60/Respira-Pulse-arm64.dmg"
  else
    sha256 "83ab71312767891089b35e625dd167f6c26292879c0c37ff6c31c35402bd0844"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v0.1.0-dev.60/Respira-Pulse-x64.dmg"
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
