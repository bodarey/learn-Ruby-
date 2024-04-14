class Foo
  def initialize(options)
    @h = options
    make_methods
  end

  def make_methods
    @h.each do |key, _value|
      key = key.class == 'Symbol' ? key : key.to_sym

      def method_missing(key)
        @h[key] || @h[key.to_s]
      end
    end
  end
end
x = { test2: :delta, test1: :beta }
f = Foo.new x
puts f.test1
