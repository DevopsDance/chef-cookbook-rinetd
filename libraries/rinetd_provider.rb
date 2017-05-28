
class Chef
  class Provider
    class Rinetd < Chef::Provider::LWRPBase # ~FC057
      def config
        parameters = run_context.resource_collection.select do |resource|
          resource.is_a? Chef::Resource::Rinetd
        end

        include_recipe 'devopsdance-rinetd' # ~FC007

        template '/etc/rinetd.conf' do
          source 'rinetd.conf.erb'
          cookbook 'devopsdance-rinetd'
          owner 'root'
          group 'root'
          mode '0640'
          variables parameters: parameters
          action :create
          notifies :restart, 'service[rinetd]', :delayed
        end
      end

      action :enable do
        config
      end

      action :disable do
      end
    end
  end
end
