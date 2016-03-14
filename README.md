# dotnetcore-cookbook

A Chef cookbook for managing .NET Core (http://dotnet.github.io/) installation and applications on all supported platforms. Simply include `recipe[dotnetcore]` in your runlist before utilizing the resource providers such as `dotnet_restore` and `dotnet_run`. This cookbook is in it's early stages and will try to keep up with the pace of .NET Core development.

## Supported Platforms

- Ubuntu 14.04 (trusty)
- Windows

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
    <td><tt>See <a href="/acornies/dotnetcore-cookbook/blob/dev/attributes/default.rb" target="_blank">default.rb</a></tt></td>
  </tr>
  <tr>
    <td><tt>['dotnetcore']['apt_package_source']</tt></td>
    <td>String</td>
    <td>The apt-get package source repository server</td>
    <td><tt>See <a href="/acornies/dotnetcore-cookbook/blob/dev/attributes/default.rb" target="_blank">default.rb</a></tt></td>
  </tr>
  <tr>
    <td><tt>['dotnetcore']['apt_package_source_key']</tt></td>
    <td>String</td>
    <td>The source URL for the apt keyserver gpg key.</td>
    <td><tt>See <a href="/acornies/dotnetcore-cookbook/blob/dev/attributes/default.rb" target="_blank">default.rb</a></tt></td>
  </tr>
   <tr>
    <td><tt>['dotnetcore']['windows_source_url']</tt></td>
    <td>String</td>
    <td>An absolute URL for the .NET Core Windows MSI installer</td>
    <td><tt>See <a href="/acornies/dotnetcore-cookbook/blob/dev/attributes/default.rb" target="_blank">default.rb</a></tt></td>
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

## License and Authors

Author:: Andrew Cornies (acornies@gmail.com)
