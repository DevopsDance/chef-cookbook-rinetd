class Chef
  class Resource
    class RinetdConf < Chef::Resource::LWRPBase
      provides :rinetd_conf
      resource_name :rinetd_conf
      actions(:create, :delete)
      default_action(:create)

      attribute(:bind_address, kind_of: String, name_property: true)
      attribute(:bind_port, kind_of: Integer, required: true)
      attribute(:connect_address, kind_of: String, required: true)
      attribute(:connect_port, kind_of: Integer, required: true)
    end
  end
end
