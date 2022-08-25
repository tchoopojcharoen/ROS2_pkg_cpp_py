#!/usr/bin/bash

replace_pkg_name () {
    if [[ package_name != "" && $2 != "" ]]; then
    sed -i "s/package_name/$2/" $1
    fi
}

path=$(pwd)
cp -r ROS2_pkg_cpp_py/package_name ~/$1/src
cd ~
cd $1/src/
ls


mv package_name $2

mv $2/package_name $2/$2
mv $2/include/package_name $2/include/$2

replace_pkg_name $2/package.xml $2
replace_pkg_name $2/CMakeLists.txt $2
replace_pkg_name $2/src/cpp_node.cpp $2
replace_pkg_name $2/scripts/dummy_script.py $2
replace_pkg_name $2/$2/dummy_module.py $2

cd ~
cd $1
colcon build --packages-select $2
source install/setup.bash
echo $path
cd $path

