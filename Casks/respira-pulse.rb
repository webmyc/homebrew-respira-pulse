cask "respira-pulse" do
  version "1.2.5"

  if Hardware::CPU.arm?
    sha256 "3610c0a3f0ff1b94057840cdcb3076828bcafcf8c29dd83d82714b826775cbcf"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.5/Respira-Pulse-arm64.dmg"
  else
    sha256 "e7bb41cb1158c83694189f475d5d183e6d7f3f63a8efd61b6cf06550e19ed56d"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.5/Respira-Pulse-x64.dmg"
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
