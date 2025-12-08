cask "respira-pulse" do
  version "1.1.17"

  if Hardware::CPU.arm?
    sha256 "74fa8baf6d4284cbf9aeb9f319f5fa85fef972668866749c15babd47ef4daec0"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.17/Respira-Pulse-arm64.dmg"
  else
    sha256 "fd1a24287cfd40896bfe73adaa3d5427f4cf087cc2b6a3302b81c9787c7b6b20"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.17/Respira-Pulse-x64.dmg"
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
