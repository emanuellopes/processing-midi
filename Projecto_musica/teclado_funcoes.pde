class teclado_funcoes
{
 
  teclado_funcoes(int tecla)
  {
    bolas = new bolas_rasto[20];
    
     if (tecla==48 || tecla==49 || tecla==50 || tecla==51 || tecla==52 || tecla==53) 
    {
      new bolas_aleatorias();
    }
    
   else if (tecla==54 || tecla==55 || tecla==56 || tecla==57 || tecla==58 || tecla==59) 
    {
      for (int i=0; i<10; i++)
      { 
        bolas[i] =  new bolas_rasto();
        bolas[i].desenhar();
      }
    }
 else   if ( tecla==60 || tecla==61 || tecla==62 || tecla==63 || tecla==64 || tecla==65) 
    {
      grav =  new gravidade();
    }
    
else  if (tecla==66 || tecla==67 || tecla==68 || tecla==69 || tecla==70 || tecla==71 || tecla==72) 
    {
     // grav =  new gravidade();
    }
    
  }
}

