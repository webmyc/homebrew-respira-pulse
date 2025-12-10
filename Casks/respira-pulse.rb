cask "respira-pulse" do
  version "1.2.4"

  if Hardware::CPU.arm?
    sha256 "6f1af19e3d1bf10dd61e81ef7f2255797f42abf43ffa4de9dd5f1f2ce2e8d41f"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.4/Respira-Pulse-arm64.dmg"
  else
    sha256 "51800e2f04d23e7d4a5d841023b24679f8ea7cbcf5c9790a6b0295606c1cf680"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.4/Respira-Pulse-x64.dmg"
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
