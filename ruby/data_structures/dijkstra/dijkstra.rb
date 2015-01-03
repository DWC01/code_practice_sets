## Resource => http://www.maxburstein.com/blog/introduction-to-graph-theory-finding-shortest-path/

require 'priority_queue'
 
class Graph
  attr_reader :vertices

  def initialize
    @vertices = {}
  end

  def add_vertex(name, edges)
    vertices[name] = edges
  end
  
  def to_s
    return vertices.inspect
  end
end

class Dijkstra
  attr_reader :vertices, :maxint, :distances, :previous, :nodes

  def initialize(graph)
    @graph      = graph
    @vertices   = graph.vertices
    @maxint     = (2**(0.size * 8-2) -1) #infinity
    @distances  = {}
    @previous   = {}
    @nodes      = PriorityQueue.new
  end

  def shortest_path(start, finish)
    set_initial_values(start, finish)
    bfs_through_nodes(start, finish)
  end

  def set_initial_values(start, finish)
    vertices.each do | vertex, value |
      if vertex == start
        distances[vertex] = 0
        nodes[vertex] = 0
      else
        distances[vertex] = maxint
        nodes[vertex] = maxint
      end
      previous[vertex] = nil
    end
  end

  def bfs_through_nodes(start, finish)
    while nodes
      vertex = nodes.delete_min_return_key

      return shortest_path_vertices(vertex) if vertex == finish
      break if vertex == nil || distances[vertex] == maxint
      
      find_shortest_path_and_relax_nodes(vertex)
    end
    return distances.inspect
  end

  def shortest_path_vertices(vertex)
    path = []
    while previous[vertex]
      path.push vertex
      vertex = previous[vertex]
    end
    path
  end

  def find_shortest_path_and_relax_nodes(vertex)
    vertices[vertex].each do | neighbor, value |
      alt = distances[vertex] + vertices[vertex][neighbor]
      if alt < distances[neighbor]
        distances[neighbor] = alt
        previous[neighbor] = vertex
        nodes[neighbor] = alt
      end
    end
  end

end
 
graph = Graph.new
graph.add_vertex('A', {'B' => 7, 'C' => 8})
graph.add_vertex('B', {'A' => 7, 'F' => 2})
graph.add_vertex('C', {'A' => 8, 'F' => 6, 'G' => 4})
graph.add_vertex('D', {'F' => 8})
graph.add_vertex('E', {'H' => 1})
graph.add_vertex('F', {'B' => 2, 'C' => 6, 'D' => 8, 'G' => 9, 'H' => 3})
graph.add_vertex('G', {'C' => 4, 'F' => 9})
graph.add_vertex('H', {'E' => 1, 'F' => 3})

dijkstra = Dijkstra.new(graph)
puts dijkstra.shortest_path("A","H")