cask "respira-pulse" do
  version "1.2.6"

  if Hardware::CPU.arm?
    sha256 "51208dacf8a278e775ac2bb68adba66f90df6d090e7513c15aaeb9c8d1ceac04"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.6/Respira-Pulse-arm64.dmg"
  else
    sha256 "8ae51ff00f6d6de62e8e3e99b714395d1905c548c7bcc3236d0c710c4496da81"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.6/Respira-Pulse-x64.dmg"
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
