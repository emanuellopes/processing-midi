class knobs_efeitos
{
  knobs_efeitos()
  {
    /* if (tecla==102) knobs_movimento_X(valor_tecla);
     if (tecla==103) knobs_movimento_Y(valor_tecla);
     if (tecla==104) knobs_movimento_Z(valor_tecla);
     if (tecla==105) knobs_cor(valor_tecla);
     if (tecla==106) tamanho_objecto(valor_tecla);
     if (tecla==107) scale_obj(valor_tecla);*/
  }
  
  ///////////////////Movimento do objecto///////////////////
 
  
  //////////////////////////////////////
    int knobs_movimento_Y(int valor_tecla)
  {
      return pos_y = valor_tecla;
  }
  ////////////////////////
    int knobs_movimento_Z(int valor_tecla)
  {
      return pos_z = valor_tecla;
  }
  ///////knobs mudar cor/////////////////////////////////
  int knobs_cor(int valor_tecla)
  {
      return cor = color(int(map(valor_tecla, 0, 127, 0, 359)), 89, 91);
  }
  
  //////////Knobs tamanho dos objectos////////////////////
  int tamanho_objecto(int valor_tecla)
  {
      return tamanho_objecto = valor_tecla;
  }
  
  ///////////////////Knob Scale////////////////////////
  float scale_obj(int valor_tecla)
  {
    return  scale_objecto = map(valor_tecla, 0, 127, 0.1, 1.1);  
  }
}


