GestorDeInteraccion g;
ArrayList<Caminante> cs;

void setup () {
  size (600, 600);
  g = new GestorDeInteraccion();
  cs = new ArrayList<Caminante>(13);

  background(255);
}

void draw () {
  g.actualizar();


    if(g.derecha && g.arriba){
       cs.add(new Caminante(0, random(height), 1, random(-1,1),color(250,0,0),random (50,90)));
    }
    if(g.izquierda && g.arriba){
     cs.add(new Caminante(0, random(height), 1, random(-1,1),color(250,0,0),random (110,150)));
    }
    
    
        if(g.derecha && g.abajo){
       cs.add(new Caminante(0, random(height), 1, random(-1,1),color(250,0,0),random (50,90)));
    }
    if(g.izquierda && g.abajo){
     cs.add(new Caminante(0, random(height), 1, random(-1,1),color(0),random (110,150)));
    }

  for (Caminante c : cs) {
    c.dibujar();
  }
}
