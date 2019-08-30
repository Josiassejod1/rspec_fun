require './spec/support/shared_example_helper.rb'

class SausageLink
  def length
    3
  end
end

RSpec.describe Array do
  subject { [1, 2, 3] }

  include_examples 'a Ruby object with length method'
end

RSpec.describe String do
  subject { 'abc' }

  include_examples 'a Ruby object with length method'
end

RSpec.describe String do
  subject { {a: 1, b: 2, c: 3} }

  include_examples 'a Ruby object with length method'
end



RSpec.describe SausageLink do
  subject {described_class.new}

  include_examples 'a Ruby object with length method'
end
