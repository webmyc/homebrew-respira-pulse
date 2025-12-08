cask "respira-pulse" do
  version "1.1.18"

  if Hardware::CPU.arm?
    sha256 "47257ee690e77324c7ee1b86563e1768e74ee016bf9a90bcae244619df5b00bd"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.18/Respira-Pulse-arm64.dmg"
  else
    sha256 "e92395814871c84764954323d7d5d496e053245ac585c55292ddffd8b25a86f4"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.18/Respira-Pulse-x64.dmg"
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
