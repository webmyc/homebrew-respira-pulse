cask "respira-pulse" do
  version "1.1.4"

  if Hardware::CPU.arm?
    sha256 "PLACEHOLDER_ARM_SHA256"
    url "https://github.com/webmyc/respira-pulse-vercel/releases/download/v1.1.4/Respira-Pulse-arm64.dmg"
  else
    sha256 "PLACEHOLDER_INTEL_SHA256"
    url "https://github.com/webmyc/respira-pulse-vercel/releases/download/v1.1.4/Respira-Pulse-x64.dmg"
  end

  name "Respira Pulse"
  desc "Menu bar app for monitoring Vercel deployments"
  homepage "https://respirapulse.dev"

  app "Respira Pulse.app"

  zap trash: [
    "~/Library/Application Support/cafe.respira.pulse",
    "~/Library/Preferences/cafe.respira.pulse.plist",
    "~/Library/Caches/cafe.respira.pulse",
  ]
end
