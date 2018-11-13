namespace :assets do
  task :precompile do
    sh "middleman build"
  end
end

task :publish do
  raise 'Please commit all changes before publishing' unless system 'git diff --exit-code'
  raise 'Please commit all changes before publishing' unless system 'git diff --cached --exit-code'

  system 'middleman build'

  system 'git add build'
  message = "Build #{Time.now}"
  system "git commit -m '#{message}'"
  # system 'git pull page master'
  system 'git subtree push --prefix build page master'
  system 'git push'
end
