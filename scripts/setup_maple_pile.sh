git submodule update --init --recursive

# The pinned MaplePile commit already contains the migrated dependency
# settings, so maple_pile_dependices_settings.patch must not be applied.

echo "Generating sources for MaplePile"

cd MaplePile

sh gen_sources.sh

cd ../