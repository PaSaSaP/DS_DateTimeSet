void serialEvent() {
  if (Serial.available()) {
    char g = Serial.read();
    if (g != 'G') {
      Serial.flush();
      return;
    }
    byte godzina = Serial.parseInt();
    byte minuta = Serial.parseInt();
    byte sekunda = Serial.parseInt();
    byte dzienTygodnia = Serial.parseInt();
    byte dzien = Serial.parseInt();
    byte miesiac = Serial.parseInt();
    byte rok = Serial.parseInt();
    Serial.flush();
    ustawCzas(sekunda, minuta, godzina, dzienTygodnia, dzien, miesiac, rok);
  }
}

