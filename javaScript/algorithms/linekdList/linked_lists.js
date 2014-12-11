// Linked Lists Defined //
/*
 - A linked list is a collection of objects called nodes. 

 - Each node is linked to a successor node in the list using an 
   object reference. The reference to another node is called a link.
*/

  function Node(element){
    this.element = element;
    this.next = null;
  }

  function Llist(){
    this.head         = new Node("head");
    this.find         = find;
    this.findPrevious = findPrevious;
    this.insert       = insert;
    this.remove       = remove;
    this.display      = display;
    this.reverse      = reverse;
  }

  function find(item) {
  var current = this.head;
  while (current.element != item) {
        current = current.next;
     }
  return current; 
 }

  function insert(newElement, item){
   var newNode = new Node(newElement)
   var current = this.find(item); 

   newNode.next = current.next;
   current.next = newNode;  
  }

  function findPrevious(item){
    var current = this.head;
    while((current.next!==null) && (current.next.element != item)){
      current = current.next
    }
    return current;
  }

  function remove(item){
    var previous = this.findPrevious(item);
    if(previous.next !== null){
      previous.next = previous.next.next;
    }
    return previous;
  }

  function display(){
    var current = this.head;
    while(!(current.next==null)){
      console.log(current.next);
      current = current.next;
    }
  }

  function reverse(){
    var current  = this.head;
    var previous = null;
    // Iterate through each node in list
    while(current.next!==null){
      // Save the next node in tmp var
    var  next = current.next;
      // Reverse the pointer
      current.next = previous;
      // Set Up Next Iteration
      previous = current;
      current  = next;
    }
  }

  var linked_list = new Llist();
  linked_list.insert("1", "head");
  linked_list.insert("2", "1");
  linked_list.insert("3", "2");
  linked_list.insert("4", "3");
  linked_list.insert("5", "4");

  //console.log(linked_list.findPrevious(3));

  // linked_list.display();
  // console.log("Remove 4");
  // linked_list.remove("4");
  // linked_list.display();

  console.log("Reverse");
  linked_list.reverse();
  linked_list.display();





