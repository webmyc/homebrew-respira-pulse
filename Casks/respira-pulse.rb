cask "respira-pulse" do
  version "1.1.13"

  if Hardware::CPU.arm?
    sha256 "9b5a485e46462a54217716810af2b0f13acbf03fb8ff02409107d40d3aac014e"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.13/Respira-Pulse-arm64.dmg"
  else
    sha256 "85d7d929fcb4df4184b84e9efd689e70ddfa1934084822fac26c198162fdbd61"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.13/Respira-Pulse-x64.dmg"
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
