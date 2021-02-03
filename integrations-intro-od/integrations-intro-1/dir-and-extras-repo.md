The various Datadog Agent integrations fall into one of three categories: "core", "extras", or "marketplace". [Core integrations](https://github.com/DataDog/integrations-core) are generally developed and maintained by Datadog directly. [Extras integrations](https://github.com/DataDog/integrations-extras) are developed and maintained by the community (this includes you). Marketplace integrations are developed and maintained by marketplace partners. The marketplace integrations repo is private, which is why you don't see a link to it here. The development process is similar to the one for "extras", but to release on the marketplace, you will need to [become a marketplace partner](https://docs.datadoghq.com/developers/marketplace/).

This training will focus on developing an integration for the "extras" repo. Start by cloning a copy of [the extras](https://github.com/DataDog/integrations-extras).

By default, that tooling expects you to be working in the `$HOME/dd/` directory—this is optional and can be adjusted via configuration later, but this lab follows that convention:
```
mkdir $HOME/dd && cd $HOME/dd
git clone https://github.com/DataDog/integrations-extras.git
```{{execute}}
