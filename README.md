grimoire Cookbook
==========================
Installs/Configures tools from *Grimoire (e.g. [MetricsGrimoire](https://github.com/MetricsGrimoire/) or [VizGrimoire](https://github.com/VizGrimoire/)) .

Supported tools:
* [Mailing List Stats](https://github.com/MetricsGrimoire/MailingListStats)

If you want to try out Mailing List Stats you can use the example [Vagrant setup for MetricsGrimoire toolset](https://github.com/andygrunwald/Vagrant-MetricsGrimoire).

Requirements
------------

* MySQL / SQLite (depends on your needs)

#### Cookbooks
- `None`

Attributes
----------
#### grimoire::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>[:mlstats][:repository]</tt></td>
    <td>String</td>
    <td>Git-Repository / Source of Mailing List Stats</td>
    <td><tt>https://github.com/MetricsGrimoire/MailingListStats.git</tt></td>
  </tr>
  <tr>
    <td><tt>[:mlstats][:version]</tt></td>
    <td>String</td>
    <td>Branch / Tag which will be installed</td>
    <td><tt>master</tt></td>
  </tr>
  <tr>
    <td><tt>[:mlstats][:destination]</tt></td>
    <td>String</td>
    <td>Path where :repository will be cloned</td>
    <td><tt>/tmp/MetricsGrimoire/mlstats</tt></td>
  </tr>
  <tr>
    <td><tt>[:mlstats][:owner]</tt></td>
    <td>String</td>
    <td>Owner of :destination</td>
    <td><tt>root</tt></td>
  </tr>
  <tr>
    <td><tt>[:mlstats][:group]</tt></td>
    <td>String</td>
    <td>Group of :destination</td>
    <td><tt>root</tt></td>
  </tr>
</table>

Usage
-----
#### grimoire::default

The default recipe is empty.
Please include the recipe of the application you want to install.

### grimoire::mlstats

Just include `grimoire::mlstats` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[grimoire::mlstats]"
  ]
}
```

License
------------
This code is released under the terms of the [Apache License in version 2.0](http://www.apache.org/licenses/LICENSE-2.0).
