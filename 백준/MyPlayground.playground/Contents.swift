import UIKit








public class TreeNode<T> {
  public var value: T // 노드 안의 값

  public weak var parent: TreeNode? // 이 노드의 부모
  public var children = [TreeNode<T>]() // 이 노드의 자식들

  public init(value: T) {
    self.value = value
  }

  public func addChild(_ node: TreeNode<T>) { // 자식노드 추가
    children.append(node) // 자식 배열에 append
    node.parent = self // 그 노드의 부모는 나다 !!!
  }
}
