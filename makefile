all:
	rm app.js
	npm run build
	uglifyjs -o app_min.js app.js	

run:
	npm start

install-babel:
	npm install --save-dev babel-loader babel-core
	npm install babel-preset-env --save-dev
	npm install --save-dev babel-plugin-transform-react-jsx
	touch .babelrc

install-webpack:
	npm install --save-dev webpack-cli
	npm install --save-dev webpack@4.15.0
	touch webpack.config.js

install-nwjs: #1
	sudo npm install -g nwjs
	sudo nw install 0.31.4-sdk
	sudo npm install -g node-pre-gyp
	sudo npm install -g nw-gyp
	sudo npm install nw-builder --save-dev

	#npm install uglify-js -g
	#https://www.npmjs.com/package/nw-builder-webpack-plugin

install-grpc: #2
	sudo npm install grpc --build-from-source --runtime=node-webkit --target=0.31.4 --target_arch=x64 --save

install-grpc-tool:
	sudo npm install -g --unsafe-perm  grpc-tools
	npm install --save google-protobuf
	#sudo npm install --save --unsafe-perm protobuf 
	#sudo npm install protobuf --build-from-source --target_arch=x64 --save

protoc:
	grpc_tools_node_protoc --js_out=import_style=commonjs,binary:. --grpc_out=. --plugin=protoc-gen-grpc=`which grpc_tools_node_protoc_plugin` grpc.proto
