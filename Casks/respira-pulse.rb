cask "respira-pulse" do
  version "1.1.7"

  if Hardware::CPU.arm?
    sha256 "ea8bc552a1cad8f23bdbb0835ecdd03fa413b2452a0e7dba9facbf50f2081481"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.7/Respira-Pulse-arm64.dmg"
  else
    sha256 "57eab6abda6f2d1d276c7f69642be9fc7a03ab48e35fa4e6e017da7c904d81db"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.7/Respira-Pulse-x64.dmg"
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
