process (rst, clk) begin -- Changed sensitivity list
  if rst = '1' then
    count <= 0; -- Reset has highest priority
  elsif rising_edge(clk) then
    if enable = '1' then
      count <= count + 1;
    end if;
  end if;
end process;