process (clk) begin
  if rising_edge(clk) then
    if rst = '1' then
      count <= 0;
    else
      if enable = '1' then
        count <= count + 1;
      end if;
    end if;
  end if;
end process;