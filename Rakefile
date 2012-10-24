task :default => :test

desc "Run ./bin/rps.rb "
task :ejecutar do
  sh "ruby -Ilib bin/rps.rb"
end

desc "Run ./test/tc_rps.rb "
task :test do
  sh "ruby -Ilib test/tc_rps.rb"

end

desc "Run a specific test, provide a test name or a /regexp/"
task :t, :test_name do |t,args|
 test_name = args[:test_name] || 'test_play'
sh "ruby -w -Ilib test/tc_rps.rb --name #{test_name}"
end

desc "Run Rspec"
task :rspec do
sh "rspec -Ilib test/rps_spec.rb"
end
