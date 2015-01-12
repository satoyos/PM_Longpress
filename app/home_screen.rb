class HomeScreen < PM::TableScreen
  def on_load
    set_attributes self.view, {
      background_color: hex_color('#FFFFFF')
    }
  end

  def table_data
    [{
         cells: test_cells
     }]
  end

  private

  def test_cells
    (1..20).to_a.map{|num|
      {
          title: "aaa#{num}"
      }
    }
  end
end