require 'terminal-notifier' if Pomo::OS.mac?

module Pomo
  class Notifier
    class NotificationCenterNotifier
      def notify(message, opts = {})
        title = 'Pomo'

        TerminalNotifier.notify message, :title => title, :subtitle => opts[:header], :sender => 'com.apple.Terminal'
        system("say '#{message}'")
      end
    end

  end
end
