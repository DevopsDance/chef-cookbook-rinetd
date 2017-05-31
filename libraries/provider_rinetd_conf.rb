class Chef
  class Provider
    class RinetdConf < Chef::Provider
      provides :rinetd_conf

      def load_current_resource
        true
      end

      def params
        Chef.run_context.resource_collection.select do |item|
          item.is_a?(Chef::Resource::RinetdConf) && item.action.include?(:create)
        end
      end

      def lookup_service
        begin
          rinetd_service = Chef.run_context.resource_collection.find(service: 'rinetd')
        rescue
          raise 'Have you included devopsdance-rinetd::default?'
        end
        rinetd_service
      end

      def action_execute
        conf = Chef::Resource::Template.new('/etc/rinetd.conf', run_context)
        conf.cookbook 'devopsdance-rinetd'
        conf.source 'rinetd.conf.erb'
        conf.variables params: params
        conf.run_action :create

        return unless conf.updated_by_last_action?

        new_resource.updated_by_last_action(true) # ~FC085
        new_resource.notifies(:restart, lookup_service, :delayed)
      end

      def action_create
        action_execute
      end

      def action_delete
        action_execute
      end
    end
  end
end
