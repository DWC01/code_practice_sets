require 'priority_queue'
 
class Graph
  attr_reader :vertices

  def initialize
      vertices = {}
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
    @maxint     = nil #infinity
    @distances  = {}
    @previous   = {}
    @nodes      = PriorityQueue.new
  end

  def set_initial_values
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

  def shortest_path(start, finish)
    set_initial_values(start, finish)

    while nodes
      vertex = nodes.delete_min_return_key
      # Return Path
      if vertex == finish
        path = []
        while previous[vertex]
          path.push vertex
          vertex = previous[vertex]
        end
        return path
      end
      
      if vertex == nil or distances[vertex] == maxint
        break            
      end
      
      vertices[vertex].each do | neighbor, value |
        # Add current Vertex Distance and nearest Neighbor's Distance  
        alt = distances[vertex] + vertices[vertex][neighbor]
        # Relax if alt < neighbor's distance from origianl source
        if alt < distances[neighbor]
          # Update Distances: This neighbor's distance from source 
          distances[neighbor] = alt
          # Update Previous: This neighbor's parent to current vertex
          previous[neighbor] = vertex
          # Update Nodes: This neighbor's distance from source 
          nodes[neighbor] = alt
        end
      end
    end
    return distances.inspect
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
puts graph.shortest_path('A', 'H')