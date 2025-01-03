# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /prgs-slam-betav3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /prgs-slam-betav3/build

# Include any dependencies generated for this target.
include CMakeFiles/scannet_rgbd.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/scannet_rgbd.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/scannet_rgbd.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/scannet_rgbd.dir/flags.make

CMakeFiles/scannet_rgbd.dir/examples/scannet_rgbd.cpp.o: CMakeFiles/scannet_rgbd.dir/flags.make
CMakeFiles/scannet_rgbd.dir/examples/scannet_rgbd.cpp.o: ../examples/scannet_rgbd.cpp
CMakeFiles/scannet_rgbd.dir/examples/scannet_rgbd.cpp.o: CMakeFiles/scannet_rgbd.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/prgs-slam-betav3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/scannet_rgbd.dir/examples/scannet_rgbd.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/scannet_rgbd.dir/examples/scannet_rgbd.cpp.o -MF CMakeFiles/scannet_rgbd.dir/examples/scannet_rgbd.cpp.o.d -o CMakeFiles/scannet_rgbd.dir/examples/scannet_rgbd.cpp.o -c /prgs-slam-betav3/examples/scannet_rgbd.cpp

CMakeFiles/scannet_rgbd.dir/examples/scannet_rgbd.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/scannet_rgbd.dir/examples/scannet_rgbd.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /prgs-slam-betav3/examples/scannet_rgbd.cpp > CMakeFiles/scannet_rgbd.dir/examples/scannet_rgbd.cpp.i

CMakeFiles/scannet_rgbd.dir/examples/scannet_rgbd.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/scannet_rgbd.dir/examples/scannet_rgbd.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /prgs-slam-betav3/examples/scannet_rgbd.cpp -o CMakeFiles/scannet_rgbd.dir/examples/scannet_rgbd.cpp.s

# Object files for target scannet_rgbd
scannet_rgbd_OBJECTS = \
"CMakeFiles/scannet_rgbd.dir/examples/scannet_rgbd.cpp.o"

# External object files for target scannet_rgbd
scannet_rgbd_EXTERNAL_OBJECTS =

../bin/scannet_rgbd: CMakeFiles/scannet_rgbd.dir/examples/scannet_rgbd.cpp.o
../bin/scannet_rgbd: CMakeFiles/scannet_rgbd.dir/build.make
../bin/scannet_rgbd: ../lib/libgaussian_viewer.so
../bin/scannet_rgbd: ../lib/libgaussian_mapper.so
../bin/scannet_rgbd: /libtorch/lib/libc10.so
../bin/scannet_rgbd: /libtorch/lib/libkineto.a
../bin/scannet_rgbd: /usr/lib/x86_64-linux-gnu/libcuda.so
../bin/scannet_rgbd: /usr/local/cuda/lib64/libnvrtc.so
../bin/scannet_rgbd: /usr/local/cuda/lib64/libnvToolsExt.so
../bin/scannet_rgbd: /usr/local/cuda/lib64/libcudart.so
../bin/scannet_rgbd: /libtorch/lib/libc10_cuda.so
../bin/scannet_rgbd: ../ORB-SLAM3/lib/libORB_SLAM3.so
../bin/scannet_rgbd: ../lib/libsimple_knn.so
../bin/scannet_rgbd: ../lib/libcuda_rasterizer.so
../bin/scannet_rgbd: /usr/local/lib/libpcl_segmentation.so
../bin/scannet_rgbd: /usr/local/lib/libpcl_surface.so
../bin/scannet_rgbd: /usr/local/lib/libpcl_keypoints.so
../bin/scannet_rgbd: /usr/local/lib/libpcl_tracking.so
../bin/scannet_rgbd: /usr/local/lib/libpcl_recognition.so
../bin/scannet_rgbd: /usr/local/lib/libpcl_ml.so
../bin/scannet_rgbd: /usr/local/lib/libpcl_registration.so
../bin/scannet_rgbd: /usr/local/lib/libpcl_features.so
../bin/scannet_rgbd: /usr/local/lib/libpcl_filters.so
../bin/scannet_rgbd: /usr/local/lib/libpcl_sample_consensus.so
../bin/scannet_rgbd: /usr/local/lib/libpcl_search.so
../bin/scannet_rgbd: /usr/local/lib/libpcl_kdtree.so
../bin/scannet_rgbd: /usr/local/lib/libpcl_stereo.so
../bin/scannet_rgbd: /usr/local/lib/libpcl_io.so
../bin/scannet_rgbd: /usr/local/lib/libpcl_octree.so
../bin/scannet_rgbd: /usr/local/lib/libpcl_common.so
../bin/scannet_rgbd: /usr/lib/gcc/x86_64-linux-gnu/11/libgomp.so
../bin/scannet_rgbd: /usr/lib/x86_64-linux-gnu/libpthread.a
../bin/scannet_rgbd: /usr/lib/x86_64-linux-gnu/libpcap.so
../bin/scannet_rgbd: /usr/lib/x86_64-linux-gnu/libpng.so
../bin/scannet_rgbd: /usr/lib/x86_64-linux-gnu/libz.so
../bin/scannet_rgbd: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.74.0
../bin/scannet_rgbd: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so.1.74.0
../bin/scannet_rgbd: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.74.0
../bin/scannet_rgbd: /usr/lib/x86_64-linux-gnu/libboost_serialization.so.1.74.0
../bin/scannet_rgbd: /usr/lib/libOpenNI.so
../bin/scannet_rgbd: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
../bin/scannet_rgbd: /usr/local/lib/libvtkChartsCore-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkInteractionImage-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkViewsContext2D-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkViewsCore-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkInteractionWidgets-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkRenderingAnnotation-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkRenderingContextOpenGL2-9.3.so.9.3
../bin/scannet_rgbd: /usr/lib/x86_64-linux-gnu/libflann_cpp.so
../bin/scannet_rgbd: /usr/lib/x86_64-linux-gnu/libqhull_r.so.8.0.2
../bin/scannet_rgbd: /usr/local/lib/libtorchscatter.so
../bin/scannet_rgbd: /libtorch/lib/libtorch.so
../bin/scannet_rgbd: /libtorch/lib/libc10_cuda.so
../bin/scannet_rgbd: /libtorch/lib/libc10.so
../bin/scannet_rgbd: /usr/local/cuda/lib64/libcufft.so
../bin/scannet_rgbd: /usr/local/cuda/lib64/libcurand.so
../bin/scannet_rgbd: /usr/local/cuda/lib64/libcublas.so
../bin/scannet_rgbd: /usr/local/cuda/lib64/libcublasLt.so
../bin/scannet_rgbd: /libtorch/lib/libc10.so
../bin/scannet_rgbd: /libtorch/lib/libkineto.a
../bin/scannet_rgbd: /usr/lib/x86_64-linux-gnu/libcuda.so
../bin/scannet_rgbd: /usr/local/cuda/lib64/libnvrtc.so
../bin/scannet_rgbd: /usr/local/cuda/lib64/libnvToolsExt.so
../bin/scannet_rgbd: /usr/local/cuda/lib64/libcudart.so
../bin/scannet_rgbd: /libtorch/lib/libc10_cuda.so
../bin/scannet_rgbd: ../lib/libimgui.so
../bin/scannet_rgbd: /usr/local/lib/libopencv_gapi.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_stitching.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_alphamat.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_aruco.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_bgsegm.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_bioinspired.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_ccalib.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_cudabgsegm.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_cudafeatures2d.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_cudaobjdetect.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_cudastereo.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_dnn_objdetect.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_dnn_superres.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_dpm.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_face.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_fuzzy.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_hdf.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_hfs.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_img_hash.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_intensity_transform.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_line_descriptor.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_mcc.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_quality.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_rapid.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_reg.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_rgbd.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_saliency.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_stereo.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_structured_light.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_phase_unwrapping.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_superres.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_cudacodec.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_surface_matching.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_tracking.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_highgui.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_datasets.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_plot.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_text.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_videostab.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_videoio.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_cudaoptflow.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_cudalegacy.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_cudawarping.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_optflow.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_viz.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libvtkInteractionStyle-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkFiltersExtraction-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkIOPLY-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkRenderingLOD-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkFiltersModeling-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkRenderingOpenGL2-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkRenderingHyperTreeGrid-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkRenderingUI-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkglew-9.3.so.9.3
../bin/scannet_rgbd: /usr/lib/x86_64-linux-gnu/libOSMesa.so
../bin/scannet_rgbd: /usr/local/lib/libvtkIOGeometry-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkImagingSources-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkIOImage-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkImagingCore-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkRenderingContext2D-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkRenderingFreeType-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkfreetype-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkIOLegacy-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkRenderingCore-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkCommonColor-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkFiltersSources-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkFiltersGeneral-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkCommonComputationalGeometry-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkFiltersGeometry-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkFiltersCore-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkIOCore-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkCommonExecutionModel-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkCommonDataModel-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkCommonTransforms-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkCommonMisc-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkCommonMath-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkCommonCore-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkkissfft-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtksys-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libvtkzlib-9.3.so.9.3
../bin/scannet_rgbd: /usr/local/lib/libopencv_wechat_qrcode.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_xfeatures2d.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_ml.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_shape.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_ximgproc.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_video.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_xobjdetect.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_imgcodecs.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_objdetect.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_calib3d.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_dnn.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_features2d.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_flann.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_xphoto.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_photo.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_cudaimgproc.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_cudafilters.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_imgproc.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_cudaarithm.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_core.so.4.8.0
../bin/scannet_rgbd: /usr/local/lib/libopencv_cudev.so.4.8.0
../bin/scannet_rgbd: /usr/lib/x86_64-linux-gnu/libjsoncpp.so.1.9.5
../bin/scannet_rgbd: /usr/lib/x86_64-linux-gnu/libglfw.so.3.3
../bin/scannet_rgbd: /usr/lib/x86_64-linux-gnu/libGLX.so
../bin/scannet_rgbd: /usr/lib/x86_64-linux-gnu/libOpenGL.so
../bin/scannet_rgbd: CMakeFiles/scannet_rgbd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/prgs-slam-betav3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/scannet_rgbd"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/scannet_rgbd.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/scannet_rgbd.dir/build: ../bin/scannet_rgbd
.PHONY : CMakeFiles/scannet_rgbd.dir/build

CMakeFiles/scannet_rgbd.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/scannet_rgbd.dir/cmake_clean.cmake
.PHONY : CMakeFiles/scannet_rgbd.dir/clean

CMakeFiles/scannet_rgbd.dir/depend:
	cd /prgs-slam-betav3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /prgs-slam-betav3 /prgs-slam-betav3 /prgs-slam-betav3/build /prgs-slam-betav3/build /prgs-slam-betav3/build/CMakeFiles/scannet_rgbd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/scannet_rgbd.dir/depend

