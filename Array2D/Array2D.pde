Movil[][] grilla;

int filas = 2;
int columnas = 3;

void setup() {
  size(800, 600);

  grilla = new Movil[filas][columnas];

  for (int f = 0; f < filas; f++) {
    for (int c = 0; c < columnas; c++) {
      grilla[f][c] = new Movil(f, c);
    }
  }
}

void draw() {
  background(255);

  int anchoCelda = width / columnas;
  int altoCelda = height / filas;


  for (int f = 0; f < filas; f++) {
    for (int c = 0; c < columnas; c++) {
      rect(c * anchoCelda, f * altoCelda, anchoCelda, altoCelda);
    }
  }


  for (int f = 0; f < filas; f++) {
    for (int c = 0; c < columnas; c++) {
      grilla[f][c].mover();
      grilla[f][c].mostrar();
    }
  }
}
