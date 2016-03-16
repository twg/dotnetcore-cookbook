<a href="https://codeclimate.com/github/acornies/dotnetcore-cookbook"><img src="https://codeclimate.com/github/acornies/dotnetcore-cookbook/badges/gpa.svg" /></a>
# dotnetcore-cookbook

A Chef cookbook for managing .NET Core (http://dotnet.github.io/) installation and applications on all supported platforms. Simply include `recipe[dotnetcore]` in your runlist to utilize the `dotnet` resource provider. This cookbook is in it's early stages and will try to keep up with the pace of .NET Core development.

## Supported Platforms

- Ubuntu 14.04 (trusty)
- Windows Server 2012 R2

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['dotnetcore']['version']</tt></td>
    <td>String</td>
    <td>The apt-get package version for Debian/Ubuntu.</td>
    <td><tt>See <a href="attributes/default.rb" target="_blank">default.rb</a></tt></td>
  </tr>
  <tr>
    <td><tt>['dotnetcore']['apt_package_source']</tt></td>
    <td>String</td>
    <td>The apt-get package source repository server</td>
    <td><tt>See <a href="attributes/default.rb" target="_blank">default.rb</a></tt></td>
  </tr>
  <tr>
    <td><tt>['dotnetcore']['apt_package_source_key']</tt></td>
    <td>String</td>
    <td>The source URL for the apt keyserver gpg key.</td>
    <td><tt>See <a href="attributes/default.rb" target="_blank">default.rb</a></tt></td>
  </tr>
   <tr>
    <td><tt>['dotnetcore']['windows_source_url']</tt></td>
    <td>String</td>
    <td>An absolute URL for the .NET Core Windows MSI installer</td>
    <td><tt>See <a href="attributes/default.rb" target="_blank">default.rb</a></tt></td>
  </tr>
</table>

## Usage

### dotnetcore::default

Include `dotnetcore` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[dotnetcore::default]"
  ]
}
```

## Resource/Provider

###dotnet
Used for restoring package dependancies, compilation, and running your application.
```ruby
dotnet 'test' do
  action :run
  nuget_config_file "#{app_dir}/NuGet.Config"
  path app_dir
  user 'root'
  cwd app_dir
end
```
By default, the dotnet resource will restore nuget packages from the `nuget_config_file` parameter. If no parameter is given, the current directory is used from `cwd`. This can be overidden by adding `restore false` as an additional parameter.

Additionaly, `dotnet restore` can be run on it's own by using `action :restore` as a parameter with the dotnet resource.
```ruby
dotnet 'test' do
  action :restore
  nuget_config_file "#{app_dir}/NuGet.Config"
  user 'root'
  cwd app_dir
end
```

## License and Authors

Author:: Andrew Cornies (acornies@gmail.com)
