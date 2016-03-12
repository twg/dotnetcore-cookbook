resource_name :dotnet_run

property :instance_name, String, name_property: true
property :path, String, required: false, default: '.' 
property :configuration, String, required: false, default: 'Debug'
property :args, Array, required: false, default: []

#TODO process control system/daemon options

# Useful properties from the `execute` resource
property :cwd, kind_of: String
property :environment, kind_of: Hash, default: {}
property :user, kind_of: [String, Integer]
property :sensitive, kind_of: [TrueClass, FalseClass], default: false

default_action :run

action :run do

    execute 'dotnet-run' do
        cwd new_resource.cwd
        environment new_resource.environment
        user new_resource.user
        sensitive new_resource.sensitive
        command "dotnet run -c #{new_resource.configuration} -p #{new_resource.path} #{new_resource.args.join(" ")}"
    end
end