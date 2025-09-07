{ ... } @ inputs: {
  programs.nixvim.diagnostic.settings = {
    virtual_text = {
      spacing = 1;
    };
    signs = false;
    float = {
      scope = "c";
      header = "";
      source = false;
      format = func ''
        function(d)
          return d.message .. '  ' 
        end
      '';
      suffix = func ''
        function(d) 
          return tostring(d.code)
        end
      '';
      border = "solid";
    };
  };
}

