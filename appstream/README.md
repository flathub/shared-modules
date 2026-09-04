appstream-compose.json is meant to build appstreamcli as a build-time
dependency to run appstream compose from the manifest.

It previously was in the 25.08 runtime, but was removed in 26.08.

The currently the only known use case is to build bundled audio
plugins where the plugin metainfo need to be composed.

com.chowdsp.BYOD
net.sonobus.SonoBus
org.guitarix.Guitarix
org.stochas.Stochas
org.surge_synth_team.surge-xt
