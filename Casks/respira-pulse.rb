cask "respira-pulse" do
  version "1.2.1"

  if Hardware::CPU.arm?
    sha256 "ae725de59a930b454f6424933a261a1debeb923e6df11e5ecf536cf4c8090395"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.1/Respira-Pulse-arm64.dmg"
  else
    sha256 "40548388a3b211696734db5b840d3225ba1e32b146d6cb921f74c4122228aa30"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.1/Respira-Pulse-x64.dmg"
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
