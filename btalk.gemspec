# frozen_string_literal: true

require_relative "lib/btalk/version"

Gem::Specification.new do |spec|
  spec.name          = "btalk"
  spec.version       = Btalk::VERSION
  spec.authors       = ["it1ro"]
  spec.email         = ["code.for.func@gmail.com"]

  spec.summary       = "PlantUML-like DSL for BPMN 2.0 diagrams"
  spec.description   = "Write business processes in plain text, and generate standard BPMN 2.0 XML files for Camunda, bpmn.io, and other tools."
  spec.homepage      = "https://github.com/it1ro/btalk"
  spec.license       = "AGPL-3.0-or-later"

  spec.required_ruby_version = ">= 3.2.0"

  spec.metadata["source_code_uri"] = "https://github.com/it1ro/btalk"
  spec.metadata["changelog_uri"]   = "https://github.com/it1ro/btalk/blob/main/CHANGELOG.md"

  spec.files         = Dir["lib/**/*", "exe/**/*", "LICENSE", "README.md", "CHANGELOG.md"]
  spec.bindir        = "exe"
  spec.executables   = ["btalk"]
  spec.require_paths = ["lib"]

  spec.add_dependency "builder", "~> 3.3"
  spec.add_dependency "thor", "~> 1.0"
end
