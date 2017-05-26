class Chef
  class Resource
    class Rinetd < Chef::Resource
      provides :rinetd

      def initialize(name, run_context = nil)
        super
        @resource_name = :rinetd
        @allowed_actions = [
          :enable,
          :disable,
        ]
        @action = :enable
        @name = name
        @bind_address = nil
        @bind_port = nil
        @connect_address = nil
        @connect_port = nil
      end

      def name(arg = nil)
        set_or_return(:name, arg, kind_of: String)
      end

      def bind_address(arg = nil)
        set_or_return(:bind_address, arg, kind_of: String)
      end

      def bind_port(arg = nil)
        set_or_return(:bind_port, arg, kind_of: Integer)
      end

      def connect_address(arg = nil)
        set_or_return(:connect_address, arg, kind_of: String)
      end

      def connect_port(arg = nil)
        set_or_return(:connect_port, arg, kind_of: Integer)
      end
    end
  end
end
