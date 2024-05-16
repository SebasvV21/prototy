class GestorDeInteraccion {
  Dir_y_Vel mouse;
  boolean seMoviaEnElFrameAnterior;

  boolean arriba;
  boolean abajo;
  boolean derecha;
  boolean izquierda;

  GestorDeInteraccion() {
    mouse = new Dir_y_Vel();
  }

  void actualizar() {
    mouse.calcularTodo(mouseX, mouseY);

    boolean seMueveElmouseEnEsteFrame = false;
    float sensibilidad = 1;
    if (mouse.velocidad()>sensibilidad && mouse.velocidad()<100) {
      seMueveElmouseEnEsteFrame = true;
    }
    arriba = false;
    abajo = false;
    derecha = false;
    izquierda = false;

    if (seMueveElmouseEnEsteFrame &&
      !seMoviaEnElFrameAnterior) {
      arriba = mouse.direccionY()<-sensibilidad?true:false;
      abajo = mouse.direccionY()>sensibilidad?true:false;
      derecha = mouse.direccionX()>sensibilidad?true:false;
      izquierda = mouse.direccionX()<-sensibilidad?true:false;
    }

    seMoviaEnElFrameAnterior = seMueveElmouseEnEsteFrame;
  }
}
