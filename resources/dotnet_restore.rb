resource_name :dotnet_restore

property :instance_name, kind_of: String, name_property: true
property :packages_path, kind_of: String, required: false 
property :nuget_config_file, kind_of: String, required: false
property :source, kind_of: String, required: false
property :disable_parallel, kind_of: [TrueClass, FalseClass], default: false
property :no_cache, kind_of: [TrueClass, FalseClass], default: false
property :verbosity, kind_of: String, required: false, default: 'Information'

# Useful properties from the `execute` resource
property :cwd, kind_of: String
property :environment, kind_of: Hash, default: {}
property :user, kind_of: [String, Integer]
property :sensitive, kind_of: [TrueClass, FalseClass], default: false

default_action :restore

action :restore do

    disable_parallel = new_resource.disable_parallel ? '--disable-parallel' : ''
    source = !new_resource.source.nil? ? "--source #{new_resource.source}" : ''
    no_cache = new_resource.disable_parallel ? '--no-cache' : ''
    packages = !new_resource.packages_path.nil? ? "--packages #{new_resource.packages_path}" : ''
    configfile = !new_resource.nuget_config_file.nil? ? "--configfile #{new_resource.nuget_config_file}" : ''

    execute 'dotnet-restore' do
        cwd new_resource.cwd
        environment new_resource.environment
        user new_resource.user
        sensitive new_resource.sensitive
        command "dotnet restore --verbosity #{new_resource.verbosity} #{source} #{packages} #{configfile} #{no_cache} #{disable_parallel}"
    end
end