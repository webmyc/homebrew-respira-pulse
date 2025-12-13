cask "respira-pulse" do
  version "1.2.7"

  if Hardware::CPU.arm?
    sha256 "25e34ba38af99fc2daaac0bc644dd7c31e005d192f15b7276fe1297ad075f9f3"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.7/Respira-Pulse-arm64.dmg"
  else
    sha256 "9e515d1a64cda434ed50e7de7e9022c103110d342022105f50a5b97457271685"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.7/Respira-Pulse-x64.dmg"
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
