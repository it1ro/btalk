module Btalk
  module AST
    Task = Struct.new(:name) do
      def type = :task
    end
  end
end
