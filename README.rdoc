modules-cookbook
================

= DESCRIPTION:

Chef cookbook to manage CPU Governor on linux with cpufreq.

= REQUIREMENTS:

Linux 2.6+
tested on Ubuntu.

= ATTRIBUTES:

node['cpu']['governor']

= USAGE:

in a recipe:

   node.set["node"]["cpu"]["governor"] = "performance"
   include_recipe "cpu"
