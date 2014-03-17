import promidi.*;
gravidade grav;
bolas_rasto[]  bolas;
MidiIO midiIO;

int tamanho_objecto = 10;
color cor;
float scale_objecto=100;
boolean desmontar=false;
/////////KNOBS do teclado MIDI/////////////////////////////////////////////
//////////Eixos X,Y,Z moviveis através dos knobs do teclado MIDI
int pos_x=width/2;    //Knob 1
int pos_z=0;        //Knob 2
int pos_y=height/2;  //Knob 3 

boolean linhas=false;
boolean linhas_rapidas= false;

float cubo = 1;
float cubo2 = 0.5;

int cubos = 0;
/////////////////////////
///////////Mudar a cor /////////////////////

void setup() {
  colorMode(HSB, 360, 100, 100);
  size(1280, 720, P3D);
  smooth();
  background(0);
  frameRate(30);
  cor = color(int(random(359)));
  grav =  new gravidade();
  //////////////Midi funcoes/////////////
  midiIO = MidiIO.getInstance(this);

  // print a list of all devices
  midiIO.printDevices();

  // plug all methods to handle midievents
  midiIO.plug(this, "noteOn", 0, 0);
  midiIO.plug(this, "controllerIn", 0, 0);
  /////////////////////////////////////////
}
//////////////////////////Funçoes de deteção de tecla///////////////////

void noteOn(Note note) { 
  int vel = note.getVelocity(); //pressão da tecla
  int tecla = note.getPitch();  
  if(vel==0) linhas=false;
    //0 até 24
  /// new teclado_funcoes(pit);
  if (tecla==48 || tecla==49 || tecla==50 || tecla==51 || tecla==52 || tecla==53) 
  {
    linhas=true;
    grav =  new gravidade();
  }
}

//Função para detectar os Knobs do teclado
void controllerIn(Controller controller) {
  int num = controller.getNumber(); //nr do Knob
  int val = controller.getValue();  //valor do Knob vai do 1 até 127
  if (num==1) pos_x = val;
  if (num==2) pos_y = val;
  if (num==12) pos_z = val;
  if (num==16) cor = color(map(val, 0, 127, 0, 359), 89, 91);
  if (num==17) tamanho_objecto = val;
  if (num==18) scale_objecto = val;
}
/////////////////////knobs////////////////////////////

////////////////////////////////////////////////////////////////
void draw() {
  background(0);
  if (linhas==true)
  {
    rotateX(pos_x);
    rotateY(pos_y);
    rotateZ(pos_z);
    scale(scale_objecto);
    grav.linhas_movimento();
    grav.desenhar_linhas();
  }
   cubo();
}

void cubo()
{
  fill(cor);
  strokeWeight(2);
  stroke(255);
  pushMatrix();
  translate(width/2, height/2, 0);
  rotateX(pos_x);
  rotateY(pos_y);
  rotateZ(pos_z);
  scale(scale_objecto);
  beginShape(QUADS);
  vertex(-cubo, cubo, cubo);
  vertex( cubo, cubo, cubo);
  vertex( cubo, -cubo, cubo);
  vertex(-cubo, -cubo, cubo);
  fill(cor -80);
  vertex( cubo, cubo, cubo);
  vertex( cubo, cubo, -cubo);
  vertex( cubo, -cubo, -cubo);
  vertex( cubo, -cubo, cubo);
  fill(cor -75);
  vertex( cubo, cubo, -cubo);
  vertex(-cubo, cubo, -cubo);
  vertex(-cubo, -cubo, -cubo);
  vertex( cubo, -cubo, -cubo);
  fill(cor -10);
  vertex(-cubo, cubo, -cubo);
  vertex(-cubo, cubo, cubo);
  vertex(-cubo, -cubo, cubo);
  vertex(-cubo, -cubo, -cubo);

  fill(cor -100);
  vertex(-cubo, cubo, -cubo);
  vertex( cubo, cubo, -cubo);
  vertex( cubo, cubo, cubo);
  vertex(-cubo, cubo, cubo);

  fill(cor -50);
  vertex(-cubo, -cubo, -cubo);
  vertex( cubo, -cubo, -cubo);
  vertex( cubo, -cubo, cubo);
  vertex(-cubo, -cubo, cubo);
  endShape();
  popMatrix();
}














