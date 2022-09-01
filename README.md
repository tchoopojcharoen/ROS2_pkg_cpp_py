# ROS2_pkg_cpp_py

## Rationale behind this repository
  In ROS2, the standard options for building packages (--build-type) are "ament_python" and "ament_cmake".\
  \
  With ament_python, you can create Python modules and scripts and set up the build by configuring "setup.py". However, if you want this package to work with C++ code, you will need to add "CMakeLists.txt" add set it up properly.\
  \
  With ament_cmake, you can create C++ header files and source codes and set up the build by configuring the auto-generated "CMakeLists.txt". However, if you want this package to work with Python code, you will need to add more codes to the "CMakeLists.txt". This looks a bit cumbersome. But we just do it for you, so you don't have to !!

## Repository's Description & Instruction
This is a ROS2 package template that can build both C++ and Python.


Step 1 : Download the repository to your machine
```
git clone https://github.com/tchoopojcharoen/ROS2_pkg_cpp_py.git
```
Step 2 : Run the following command to generate package.
```
. ROS2_pkg_cpp_py/install_pkg.bash {YOUR_WORKSPACE} {PACKAGE_NAME}

```

Note:
We highly suggest you cloning this repo to somewhere outside of your workspace. For now, remember where you clone this file because you have to change to the directory before running [Step 2]
