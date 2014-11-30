## Source => http://www.maxburstein.com/blog/introduction-to-graph-theory-finding-shortest-path/

require 'priority_queue'
 
class Graph
  def initialize()
      @vertices = {}
  end

  def add_vertex(name, edges)
      @vertices[name] = edges
  end

  
  def shortest_path(start, finish)
    maxint = (2**(0.size * 8-2) -1)
    distances = {}
    previous = {}
    nodes = PriorityQueue.new

    #initialize distances and nodes
    @vertices.each do | vertex, value |
      if vertex == start
        distances[vertex] = 0
        nodes[vertex] = 0
      else
        distances[vertex] = maxint
        nodes[vertex] = maxint
      end
      previous[vertex] = nil
    end

    puts ""
    puts "---- Initialize ----"
    puts ""
    puts "Distances"
    puts distances
    puts ""
    # {"A"=>0, "B"=>4611686018427387903, "C"=>4611686018427387903, 
    #  "D"=>4611686018427387903, "E"=>4611686018427387903, 
    #  "F"=>4611686018427387903, "G"=>4611686018427387903, 
    #  "H"=>4611686018427387903}
    puts "Nodes"
    puts nodes.inspect
    # [["A", 0], ["B", 4611686018427387903], ["C", 4611686018427387903], 
    # ["D", 4611686018427387903], ["E", 4611686018427387903], 
    # ["F", 4611686018427387903], ["G", 4611686018427387903], 
    # ["H", 4611686018427387903]]
    puts ""
    puts "-------------------"
    puts ""
    puts "---- While Nodes Loop -----"

    while nodes
      vertex = nodes.delete_min_return_key
      puts "Vertex:   " + "#{vertex}"
      puts "Dist Src: " + "#{distances[vertex]}"

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
      
      puts ""
      puts "Neighbors: " + "#{@vertices[vertex]}"
      puts ""
      @vertices[vertex].each do | neighbor, value |
        # Add current Vertex Distance and Neighbor's Distance  
        alt = distances[vertex] + @vertices[vertex][neighbor]
        # Relax if alt < neighbor's distance from origianl source
        if alt < distances[neighbor]
          # Update Distances: This neighbor's distance from source 
          distances[neighbor] = alt
          # Update Previous: This neighbor's parent to current vertex
          previous[neighbor] = vertex
          # Update Nodes: This neighbor's distance from source 
          nodes[neighbor] = alt
        end
        puts "For: " + "#{neighbor}"
        puts "Vertex + Current Dist: " + "#{alt}"
        puts "Distances"
        puts distances
        puts "Nodes"
        puts nodes.inspect
        puts "Previous"
        puts previous
        puts ""
      end
      puts "--------------------------"
      puts ""
    end
    return distances.inspect
  end
  
  def to_s
      return @vertices.inspect
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