// Nombre: María Camila Serrato Restrepo
// Código: 202410329
// Título: E02 – Repetición/Teselado

void setup() {
  size(640, 640);
  background(245, 247, 220);
}

int tamMódulo= 107;

void draw() {
  
  for (int x = 0; x <= width; x += tamMódulo) {
  for (int y = 0; y <= height; y += tamMódulo) {

      noStroke();

      // Triángulo --> completa la esquina inferior derecha del módulo
      
      fill(233, 235, 158);
      triangle(x + tamMódulo, y + tamMódulo, x + tamMódulo, y, x, y + tamMódulo);

      stroke(0);
 
      // Arco horizontal --> dentro del módulo
     
      fill(233, 217, 133);
      arc(x + tamMódulo / 2, y + tamMódulo / 2, tamMódulo, tamMódulo / 2, PI, TWO_PI);
     
     // Arco vertical --> dentro del módulo
      
      fill(240, 226, 163);
      arc(x + tamMódulo / 2, y + tamMódulo, tamMódulo / 2, tamMódulo, PI, TWO_PI);
      
      // Círculo entre módulos
      
      fill(226, 237, 139);
      ellipse(x + 2, y + tamMódulo / 2, tamMódulo / 2, tamMódulo / 2);
     
     
    }
  }
}
