class Movil {
  int fila, columna;
  float x, y;
  float vx, vy;
  int r;

  Movil(int f, int c) {
    fila = f;
    columna = c;

    int anchoCelda = width / columnas;
    int altoCelda = height / filas;

    x = c * anchoCelda + anchoCelda / 2;
    y = f * altoCelda + altoCelda / 2;

    vx = 3;
    vy = 3;

    r = 20;
  }

  void mover() {
    x += vx;
    y += vy;

    int anchoCelda = width / columnas;
    int altoCelda = height / filas;

    float izq = columna * anchoCelda;
    float der = izq + anchoCelda;

    float arriba = fila * altoCelda;
    float abajo = arriba + altoCelda;

    if (x - r/2 < izq || x + r/2 > der) {
      vx *= -1;
    }

    if (y - r/2 < arriba || y + r/2 > abajo) {
      vy *= -1;
    }
  }

  void mostrar() {
    ellipse(x, y, r, r);
  }
}
