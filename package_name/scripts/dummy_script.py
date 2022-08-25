#!/usr/bin/python3

from package_name.dummy_module import dummy_function, dummy_var
import rclpy
from rclpy.node import Node


class DummyNode(Node):
    def __init__(self):
        super().__init__('dummy_node')

def main(args=None):
    rclpy.init(args=args)
    node = DummyNode()
    rclpy.spin(node)
    node.destroy_node()
    rclpy.shutdown()

if __name__=='__main__':
    main()
