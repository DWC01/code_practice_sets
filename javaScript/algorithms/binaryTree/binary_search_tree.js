// BinaryTree

var Node = function Node(data, left, right){
  this.data  = data;
  this.left  = left;
  this.right = right;
}

Node.prototype = {
  show: function(){
    return this.data;
  }
}

var BinaryTree = function BinaryTree(){
  this.root = null;
}

BinaryTree.prototype = {
    insert: function(data){
     var node = new Node(data, null, null)
     var root = this.root;
     if(root==null){
       root = node;
       console.log(root);
     }
     else{
      var current = root;
      var parent;
        while(true) {
          parent = current;
          if (data < current.data) {
          console.log(data);
            current = current.left
            if(current = null){
              parent.left = node;
              break;
            }
          }
          else{
            current = current.right
            if(current == null){
              parent.right = node;
              break
            }
          } 
        }
      }
    },
    inOrder: function(node){
      if(node !== null){
        binaryTree.inOrder(node.left);
        console.log(node.show() + " ");
        binaryTree.inOrder(node.right);
      }
    },
    postOrder: function(node){
      if(node !== null){
        binaryTree.inOrder(node.left);
        binaryTree.inOrder(node.right);
        console.log(node.show() + " ");
      }
    },
    preOrder: function(node){
      if(node !== null){
        console.log(node.show() + " ");
        binaryTree.inOrder(node.left);
        binaryTree.inOrder(node.right);
      }
    }
}

var binaryTree = new BinaryTree();
binaryTree = binaryTree.insert(23);
console.log(binaryTree.root);
// binaryTree.insert(45);
// binaryTree.insert(16);
// binaryTree.insert(37);
// binaryTree.insert(3);
// binaryTree.insert(99);
// binaryTree.insert(22);


// console.log("Inorder traversal: ");
// binaryTree.inOrder(binaryTree.root);