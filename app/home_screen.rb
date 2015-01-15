class HomeScreen < PM::TableScreen
  searchable
  longpressable

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

  def cell_tapped(args)
    puts "#{args[:name]} tapped!"
  end

  def cell_long_pressed(args)
    puts "#{args[:name]} Long Pressed!!!"
  end

  private

  def test_cells
    (1..30).to_a.inject([]){|result, num|
      result + [cell_hash("aaa#{num}"), cell_hash("bbb#{num}")]}
  end

  def cell_hash(cell_title)
    {
        title: cell_title,
        action: :cell_tapped,
        long_press_action: :cell_long_pressed,
        arguments: {name: cell_title}
    }
  end

end