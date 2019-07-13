module InstanceCounter

  class << self
    def included(base)
      base.extend ClassMethods
      base.send :include, InstanceMethods
    end
  end

  module ClassMethods

    def instances
      @count
    end

  end

  module InstanceMethods

    attr_accessor :count

    @count = 0

    protected

    def register_instance
      @count += 1
    end

  end

end

