#!/bin/bash

# Step 1: Download & unzip
curl -o apphub-linux-amd64.tar.gz https://assets.coreservice.io/public/package/60/app-market-gaga-pro/1.0.4/app-market-gaga-pro-1_0_4.tar.gz && tar -zxf apphub-linux-amd64.tar.gz && rm -f apphub-linux-amd64.tar.gz && cd ./apphub-linux-amd64

# Step 2: Remove existing service and install new service
./apphub service remove && ./apphub service install

# Step 3: Start service
./apphub service start

# Step 4: Check app status
./apphub status

# Check gaganode status is 'RUNNING'

# Step 5: Pause for 15 seconds
echo "Pausing for 30 seconds..."
sleep 30

# Step 6: Set token
./apps/gaganode/gaganode config set --token=znkivdrssydfxcwcea3383c455384139

# Step 7: Restart app
./apphub restart


wget 'https://staticassets.meson.network/public/meson_cdn/v3.1.20/meson_cdn-linux-amd64.tar.gz' && tar -zxf meson_cdn-linux-amd64.tar.gz && rm -f meson_cdn-linux-amd64.tar.gz && cd ./meson_cdn-linux-amd64 &&  ./service install meson_cdn



 ./meson_cdn config set --token=obgchcxaheumtnfymjqqslui --https_port=445 --cache.size=30


 ./service start meson_cdn
