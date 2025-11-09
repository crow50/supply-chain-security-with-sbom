FROM ghcr.io/crow50/ernest-portfolio:main-099ab24

RUN gem install rexml -v 3.4.2

RUN ruby -e 'puts Gem::Specification.select{|s| s.name=="rexml"}.map{|s| "#{s.name} #{s.version} @ #{s.full_gem_path}"}'

RUN bundle exec ruby -e 'require "rexml/document"; spec = Gem.loaded_specs["rexml"]; puts "runtime rexml #{spec.version}"'