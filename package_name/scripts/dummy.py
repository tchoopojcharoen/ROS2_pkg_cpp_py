#!/usr/bin/python3
import rclpy
from rclpy.node import Node


class Dummy(Node):
    def __init__(self):
        super().__init__('node_name')

    

def main(args=None):
    rclpy.init(args=args)
    controller = Dummy()
    rclpy.spin(controller)
    controller.destroy_node()
    rclpy.shutdown()

if __name__=='__main__':
    main()
