module Btalk
  module AST
    Conditional = Struct.new(:condition, :then_branch, :elsif_branches, :else_branch) do
      def initialize(condition, then_branch = [], elsif_branches = [], else_branch = nil)
        super(condition, then_branch, elsif_branches || [], else_branch)
      end

      def type = :conditional
    end
  end
end
