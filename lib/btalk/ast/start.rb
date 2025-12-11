module Btalk
  module AST
    Start = Struct.new(:label) do
      def type = :start
    end
  end
end
