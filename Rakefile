require 'open3'

namespace :assets do
  task :precompile do
    sh "middleman build"
  end
end


task :publish do
  raise 'Please commit all changes before publishing' unless system 'git diff --exit-code'
  raise 'Please commit all changes before publishing' unless system 'git diff --cached --exit-code'

  commit_message = "Build #{Time.now}"

  Open3.capture3('bundle exec middleman build')

  Open3.capture3('git add .', chdir: 'build')
  Open3.capture3('git', 'commit', '-m', commit_message, chdir: 'build')
  Open3.capture3('git push', chdir: 'build')

  Open3.capture3('git add build')
  Open3.capture3('git', 'commit', '-m', commit_message)
  Open3.capture3('git push')

  puts 'New version published'
end
