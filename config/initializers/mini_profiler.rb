# config/initializers/mini_profiler.rb
if Rails.env.development?
  require "rack-mini-profiler"
  Rack::MiniProfilerRails.initialize!(Rails.application)

  Rack::MiniProfiler.config.enabled = true
  Rack::MiniProfiler.config.show_trivial = true
  Rack::MiniProfiler.config.auto_inject = true

  # これも安定化に効くことがある（なければ無視でOK）
  Rack::MiniProfiler.config.start_hidden = false
end
