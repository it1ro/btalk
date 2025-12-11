require "spec_helper"
require "btalk/ast"

RSpec.describe "AST nodes" do
  it "creates a Start node" do
    node = Btalk::AST::Start.new("Begin")
    expect(node.label).to eq("Begin")
    expect(node.type).to eq(:start)
  end

  it "creates a Task node" do
    node = Btalk::AST::Task.new("Do work")
    expect(node.name).to eq("Do work")
    expect(node.type).to eq(:task)
  end

  it "creates an End node" do
    node = Btalk::AST::End.new("Finish")
    expect(node.label).to eq("Finish")
    expect(node.type).to eq(:end)
  end
end
