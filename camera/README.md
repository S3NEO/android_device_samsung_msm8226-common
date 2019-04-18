# vendor_qcom_camera

NOTE CHECKOUT AT 9503f77d4b29a20ffc80b8726ee7fd45a9935772 then use the parm_buffer and capability from b9a9b63f78999ea72aafecb5ad5f72b6b6f8f47a

Tooks used for decompiling / reverse engineering:
- Ghidra
- IDA PRO (free edition)

QCOM Camera HAL for Samsung qcom powered devices

This repo holds the working version of a Qcom HAL for samsung devices (msm8226 supported currently) (this is for development purposes and how the overall Qcom camera system works)
Its primary for the S3Neo but should theoretically work for the msm8226 and msm8974 family.

For msm8974 make sure your check the sizes of my edited structs and see if they match, only if this ever gets attention :(

Current state:
- sets up every parameters from server
- full m_pCapability (querycap) functionality
- parm_buffer_t matches samsung size (parm_type_t filles with int array to match samsung size)
- camera_open is modified to match samsung standarts
- initdefaultparameters() is modified as samsung doesnt use the parameters from server but hardcode them inside the HALs private Qcamera::Parameters class (i know why)
- start_preview initializes correctly and displays on both fron and back with no issues
- photos and video can be taken on back camera, front camera still crashes (were using the wrong stream type and encoding isnt really "perfect"


To-Do list:
- edit the QcameraHWI functions, they have some magic in them
- decompile the structs mm-camera-intf is using DONE!
- fix the server calls to kernel (our buffer is too large) DONE!
- get the full kernel IOCTL list the server is using including the I2C write arrays

Next Milestone:
- create mm-camera-intf which works with stock HAL so we can read the actual IOCTL's passing through it. DONE ^^
- modify the libmmcamera_interface so we can take pictures and videos....
