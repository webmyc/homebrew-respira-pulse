cask "respira-pulse" do
  version "1.1.19"

  if Hardware::CPU.arm?
    sha256 "6790785fabf8f4620d939bf1f7f3169a8151d01aea55792010303282c88b7f0e"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.19/Respira-Pulse-arm64.dmg"
  else
    sha256 "1c418cd69faeb07c3812d95473a532ecaa3bc07f8a6aae6df60210c6010f78c6"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.19/Respira-Pulse-x64.dmg"
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
