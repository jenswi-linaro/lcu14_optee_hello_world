Superseded
----------

This project has been superseded by https://github.com/linaro-swg/hello_world

Presentation
------------

This example has been presented at the Linaro Connect USA 2014.
The slides are available [here](http://www.slideshare.net/linaroorg/lcu14103-how-to-create-and-run-trusted-applications-on-optee).

Build Instructions
------------------

1. Create your OP-TEE workspace

        mkdir -p <optee-workspace>
        cd <optee-workspace>

2. Setup the OP-TEE software stack in your newly created `<optee-workspace>` by following: https://github.com/OP-TEE/optee_os#5-repo-manifests

3. Clone this repository into `<optee-workspace>`

        git clone https://github.com/jenswi-linaro/lcu14_optee_hello_world.git optee_hello_world
        cd optee_hello_world

4. Define the toolchains and environment variables:

	If normal world user space is 64-bit:<BR>
	`export HOST_CROSS_COMPILE=$PWD/../toolchains/aarch64/bin/aarch64-linux-gnu-`

	If normal world user space is 32-bit:<BR>
	`export HOST_CROSS_COMPILE=$PWD/../toolchains/aarch32/bin/arm-linux-gnueabihf-`

        export TA_CROSS_COMPILE=$PWD/../toolchains/aarch32/bin/arm-linux-gnueabihf-
        export TEEC_EXPORT=$PWD/../optee_client/out/export
        export TA_DEV_KIT_DIR=$PWD/../optee_os/out/arm/export-ta_arm32

5. Build it!

        make

