cask "respira-pulse" do
  version "1.1.9"

  if Hardware::CPU.arm?
    sha256 "3a5092a4ea9e91f8a17541c2053f65c299733282636c014c549dbc785d823ad1"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.9/Respira-Pulse-arm64.dmg"
  else
    sha256 "26985891e9e214e735d2a0f52177546892ce8b8d6b7ca70e6a99025141c5ec18"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.9/Respira-Pulse-x64.dmg"
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
