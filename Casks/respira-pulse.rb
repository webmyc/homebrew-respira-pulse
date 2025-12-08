cask "respira-pulse" do
  version "0.1.0-dev.56"

  if Hardware::CPU.arm?
    sha256 "7e3de5f7e233435300d86ac9dec38a970e4d5924e3538f7080e46d613ea7b92f"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v0.1.0-dev.56/Respira-Pulse-arm64.dmg"
  else
    sha256 "88f6ba8f4eeff6d10ff2aa3599c262e23d3ce8650a25fc165643fba354f0aa3b"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v0.1.0-dev.56/Respira-Pulse-x64.dmg"
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
