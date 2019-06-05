namespace :assets do
  task :precompile do
    sh "middleman build"
  end
end


# In case of errors when the subtree needs a force push try
#   git pull page master
# Or force push the subtree (other changes may be lost)
#   git push page `git subtree split --prefix build`:master
task :publish do
  raise 'Please commit all changes before publishing' unless system 'git diff --exit-code'
  raise 'Please commit all changes before publishing' unless system 'git diff --cached --exit-code'

  system 'middleman build'

  system 'git add build'
  message = "Build #{Time.now}"
  system "git commit -m '#{message}'"
  system 'git subtree push --prefix build page master'
  system 'git push'
end
