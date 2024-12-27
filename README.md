# PRGS-SLAM

PRGS-SLAM: Progressively Refined 3D Gaussian Splatting for for Monocular, Stereo, and RGB-D SLAM
### ✨[Homepage](https://prgs-slam.github.io/)✨

## 📣 News
### 📢  Current Status:
- 🛠️ Open-sourced executable files available for running our algorithm without compilation.
- ✅ **[2024.12.26]** Open-sourced executable files available for running our algorithm without compilation. Enjoying it 😊😊😊 .

## 1 Usage Instructions

We provide two ways to run our algorithm:

- **Method 1: Use Docker for one-click environment setup (Recommended)**
- **Method 2: Manually configure the environment (Follow our guide step by step)**

## 2.1 Docker (Strongly Recommended)




## 2.2 Prerequisites
```
sudo apt install libeigen3-dev libboost-all-dev libjsoncpp-dev libopengl-dev mesa-utils libglfw3-dev libglm-dev python3-pip python3-dev libjpeg-dev libpng-dev libtiff-dev curl zip libavcodec-dev libavformat-dev libswscale-dev libswresample-dev libssl-dev libflann-dev libusb-1.0-0-dev liblz4-dev libgtest-dev libopenni-dev libgdal-dev libosmesa6-dev libx11-dev qt5-qmake qtbase5-dev freeglut3-dev libpcap-dev 
```

<table>
    <thead>
        <tr>
            <th>Dependencies</th>
            <th colspan=3>Tested with</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>OS</td>
            <td>Ubuntu 20.04 LTS</td>
            <td>Ubuntu 22.04 LTS</td>
        </tr>
        <tr>
            <td>gcc</td>
            <td>10.5.0</td>
            <td>11.4.0</td>
        </tr>
        <tr>
            <td>cmake</td>
            <td>3.27.5</td>
            <td>3.22.1</td>
        </tr>
        <tr>
            <td><a href="https://developer.nvidia.com/cuda-toolkit-archive">CUDA</a> </td>
            <td>11.8</td>
            <td>11.8</td>
        </tr>
        <tr>
            <td><a href="https://developer.nvidia.com/rdp/cudnn-archive">cuDNN</a> </td>
            <td>8.9.3</td>
            <td>8.7.0</td>
        </tr>
        <tr>
            <td><a href="https://opencv.org/releases">OpenCV</a> built with opencv_contrib and CUDA</td>
            <td>4.7.0</td>
            <td>4.8.0</td>
        </tr>
        <tr>
            <td><a href="https://pytorch.org/get-started/locally">LibTorch</a> </td>
            <td colspan=2>cxx11-abi-shared-with-deps-2.0.1+cu118</td>
        </tr>
        <tr>
            <td><a href="https://pypi.org/project/torch-scatter/#description">TorchScatter</a>  </td>
            <td>2.1.2</td>
            <td>2.1.2</td>
        </tr>
        <tr>
            <td><a href="https://github.com/PointCloudLibrary/pcl">PCL</a>
            </td>
            <td>1.14.1</td>
            <td>1.14.1</td>
        </tr>
        <tr>
            <td colspan=4>(optional) <a href="https://github.com/IntelRealSense/librealsense">Intel® RealSense™ SDK 2.0</a> </td>
        </tr>
    </tbody>
</table>

### Using LibTorch
If you do not have the LibTorch installed in the system search paths for CMake, you need to add additional options to `build.sh` help CMake find LibTorch. See `build.sh` for details. Otherwise, you can also add one line before `find_package(Torch REQUIRED)` of `CMakeLists.txt`:

[Option 1] Conda. If you are using Conda to manage your python packages and have installed compatible Pytorch, you could set the 
```
# [For Jatson Orin] To install Pytorch in Jatson developer kit, you can run the below commands
# export TORCH_INSTALL=https://developer.download.nvidia.cn/compute/redist/jp/v511/pytorch/torch-2.0.0+nv23.05-cp38-cp38-linux_aarch64.whl
# pip install --no-cache $TORCH_INSTALL

set(Torch_DIR /the_path_to_conda/python3.x/site-packages/torch/share/cmake/Torch)
```

[Option 2] You cloud download the libtorch, e.g., [cu118](https://download.pytorch.org/libtorch/cu118) and then extract them to the folder `./the_path_to_where_you_extracted_LibTorch`. 
```
set(Torch_DIR /the_path_to_where_you_extracted_LibTorch/libtorch/share/cmake/Torch)
```

### Using OpenCV with opencv_contrib and CUDA
Take version 4.7.0 for example, look into [OpenCV realeases](https://github.com/opencv/opencv/releases) and [opencv_contrib](https://github.com/opencv/opencv_contrib/tags), you will find [OpenCV 4.7.0](https://github.com/opencv/opencv/archive/refs/tags/4.7.0.tar.gz) and the corresponding [opencv_contrib 4.7.0](https://github.com/opencv/opencv_contrib/archive/refs/tags/4.7.0.tar.gz), download them to the same directory (for example, `~/opencv`) and extract them. Then open a terminal and run:
```
cd ~/opencv
cd opencv-4.7.0/
mkdir build
cd build

# The build options we used in our tests:
cmake -DCMAKE_BUILD_TYPE=RELEASE -DWITH_CUDA=ON -DWITH_CUDNN=ON -DOPENCV_DNN_CUDA=ON -DWITH_NVCUVID=ON -DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda-11.8 -DOPENCV_EXTRA_MODULES_PATH="../../opencv_contrib-4.7.0/modules" -DBUILD_TIFF=ON -DBUILD_ZLIB=ON -DBUILD_JASPER=ON -DBUILD_CCALIB=ON -DBUILD_JPEG=ON -DWITH_FFMPEG=ON ..

# Take a moment to check the cmake output, see if there are any packages needed by OpenCV but not installed on your device

make -j8
# NOTE: We found that compilation of OpenCV may stuck at 99%, this may be caused by the final linking process. We just waited it for a while until it completed and exited without errors.
```
To install OpenCV into the system path:
```
sudo make install
```
If you prefer installing OpenCV to a custom path by adding `-DCMAKE_INSTALL_PREFIX=/your_preferred_path` option to the `cmake` command, remember to help PRGS-SLAM find OpenCV by adding additional cmake options. See `build.sh` for details. Otherwise, you can also add the following line to `CMakeLists.txt`, `ORB-SLAM3/CMakeLists.txt` and `ORB-SLAM3/Thirdparty/DBoW2/CMakeLists.txt`, just like what we did for LibTorch.
```
set(OpenCV_DIR /your_preferred_path/lib/cmake/opencv4)
```

### Using TorchScatter 
TorchScatter is a library for performing scatter operations efficiently on sparse tensors. For detailed instructions on downloading, extracting, and building TorchScatter, visit the official page <a href="https://pypi.org/project/torch-scatter/#description">TorchScatter</a>.

#### Install
Compile and install `torch_scatter`. Make sure to specify the correct path to your LibTorch installation, which is typically located in the /libtorch/share/cmake/Torch directory.
```
#install
torch_scatter-2.1.2 
mkdir build 
cd build 
# Add -DCMAKE_PREFIX_PATH=<Torch dir> 
cmake -DCMAKE_PREFIX_PATH=/libtorch/share/cmake/Torch \
    -DWITH_CUDA=ON  \
    ..  
make  
make install 
```
### PCL 
The Point Cloud Library (PCL) is an open-source library for processing 2D/3D images and point clouds.

#### Installing VTK
VTK is a visualization library that PCL relies on for rendering 3D point clouds. Follow the steps below to <a href="https://github.com/Kitware/VTK/archive/refs/tags/v9.3.0.zip">download</a>, extract, and build VTK (version 9.3.0).
```
# Navigate to the extracted VTK source folder
cd /vtk/VTK-9.3.0 

# Create a build directory and navigate to it
mkdir build && cd build 

# Configure the build process using CMake
cmake -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    -DVTK_RENDERING_BACKEND=OpenGL2 \
    -DVTK_USE_X=OFF \
    -DVTK_USE_COCOA=OFF \
    -DVTK_USE_OPENGL2=ON \
    -DBUILD_SHARED_LIBS=ON \
    -DVTK_USE_SYSTEM_GLFW=ON \
    -DBUILD_EXAMPLES=OFF \
    -DVTK_OPENGL_HAS_OSMESA=ON \
    -DVTK_USE_OSMESA=OFF \
    .. 

# Compile the VTK source code with 64 parallel jobs
make -j64 

# Install the compiled VTK library
make install
```
The configuration flags used here optimize the build for your system. The -DVTK_USE_X=OFF flag disables X11, which may not be necessary for modern systems. Similarly, -DVTK_USE_COCOA=OFF disables macOS-specific components.

#### Installing PCL
Once VTK is installed, you can proceed to  <a href="https://github.com/PointCloudLibrary/pcl/archive/refs/tags/pcl-1.14.1.tar.gz">download</a>, compile, and install PCL (version 1.14.1).
In this repository, we are disabling the visualization components of PCL to reduce build time and avoid unnecessary dependencies.
```
# Navigate to the extracted PCL directory
cd pcl-pcl-1.14.1 

# Create a build directory and navigate to it
mkdir build 
cd build 

# Configure the build process using CMake
cmake -DCMAKE_BUILD_TYPE=Release \
    -DWITH_PCL_VISUALIZATION=OFF \
    -DBUILD_visualization=OFF \
    -DBUILD_tools=OFF \
    .. 

# Compile the PCL source code with 64 parallel jobs
make -j64 

# Install the compiled PCL library
make install
```

## 3 Installation of PRGS-SLAM
```
git clone https://github.com/prgs-slam/PRGS-SLAM.git
cd PRGS-SLAM/
chmod +x ./build.sh
./build.sh
```

## 4 PRGS-SLAM Examples on Some Benchmark Datasets

The benchmark datasets mentioned in our paper: [Replica (NICE-SLAM Version)](https://github.com/cvg/nice-slam), [TUM RGB-D](https://cvg.cit.tum.de/data/datasets/rgbd-dataset/download), [EuRoC](https://projects.asl.ethz.ch/datasets/doku.php?id=kmavvisualinertialdatasets).

### Download the dataset (optional)
```
cd scripts
chmod +x ./*.sh
./download_replica.sh
./download_tum.sh
./download_euroc.sh
```
### Run
1. For testing, you could use the below commands to run the system after specifying the `PATH_TO_tum` and `PATH_TO_SAVE_RESULTS`. Currently, the viewer is developping, we would disable the viewer by adding `no_viewer` during the evaluation.
```
../bin/tum_rgbd \
    ../ORB-SLAM3/Vocabulary/ORBvoc.txt \
    ../cfg/ORB_SLAM3/RGB-D/TUM/tum_freiburg1_desk.yaml \
    ../cfg/gaussian_mapper/RGB-D/TUM/tum_rgbd.yaml \
    PATH_TO_tum/rgbd_dataset_freiburg1_desk \
    ../cfg/ORB_SLAM3/RGB-D/TUM/associations/tum_freiburg1_desk.txt \
    PATH_TO_SAVE_RESULTS \
    no_viewer \
    undistorted_image
```

2. We also provide scripts to conduct experiments on all benchmark datasets mentioned in our paper. We ran each sequence five times to lower the effect of the nondeterministic nature of the system. You need to change the dataset root lines in scripts/*.sh then run:
```
cd scripts
chmod +x ./*.sh
./replica_mono.sh
./replica_rgbd.sh
./tum_mono.sh
./tum_rgbd.sh
./euroc_stereo.sh
# etc.
```

### Evaluation 





<!--
**prgs-slam/PRGS-SLAM** is a ✨ _special_ ✨ repository because its `README.md` (this file) appears on your GitHub profile.

Here are some ideas to get you started:

- 🔭 I’m currently working on ...
- 🌱 I’m currently learning ...
- 👯 I’m looking to collaborate on ...
- 🤔 I’m looking for help with ...
- 💬 Ask me about ...
- 📫 How to reach me: ...
- 😄 Pronouns: ...
- ⚡ Fun fact: ...
-->
