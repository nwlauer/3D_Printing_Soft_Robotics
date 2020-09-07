//Robotic Worm By Nicholas Lauer 8-26-2020
//Last Updated 8-26-2020
// This Program controls solenoid sequencing for a soft robotic worm.
// Documentation can be found at github.com/nwlauer/3D_Printing_Soft_Robotics
//Defining Pins. Sone is the for the first solenid valve connected to the head of the robot

int Sone = 2; // Solenoid One
int Stwo = 3; // Solenoid Two
int Sthree = 4; // Solenoid Three
int Sfour = 5; // Solenoid Four
int Sfive = 6; // Solenoid Five
int Ssix = 7; // Solenoid Six
int Pump = 12; // Pump Pin
int Segd = 90; // Segment Delay: The time delay in between each segment activation
int Sqd = 500; // Sequence Delay: The time delay between each full sequence

void setup() {
  // initialize outputs
  pinMode(Sone, OUTPUT);
  pinMode(Pump, OUTPUT);
  pinMode(Stwo, OUTPUT);
  pinMode(Sthree, OUTPUT);
  pinMode(Sfour, OUTPUT);
  pinMode(Sfive, OUTPUT);
  pinMode(Ssix, OUTPUT);
}

// the loop function runs over and over again forever
void loop() {
  digitalWrite(Pump, HIGH);    // Turn Pump On
  digitalWrite(Ssix,LOW);      // Turn solenoid six off
  digitalWrite(Sone, HIGH);    // Turn solenid one on
  delay(Segd);                 // Wait for segment delay
  digitalWrite(Sone, LOW);    // Turn solenoid one off
  digitalWrite(Stwo, HIGH);    // Turn solenoid two on
  delay(Segd);
  digitalWrite(Stwo,LOW);
  digitalWrite(Sthree,HIGH);
  delay(Segd);
  digitalWrite(Sthree,LOW);
  digitalWrite(Sfour,HIGH);
  delay(Segd);
  digitalWrite(Sfour,LOW);
  digitalWrite(Sfive,HIGH);
  delay(Segd);
  digitalWrite(Sfive,LOW);
  digitalWrite(Ssix,HIGH);
  delay(Sqd);                 //Delay for Sequence Delay
}
