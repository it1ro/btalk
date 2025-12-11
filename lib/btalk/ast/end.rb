module Btalk
  module AST
    End = Struct.new(:label) do
      def type = :end
    end
  end
end
