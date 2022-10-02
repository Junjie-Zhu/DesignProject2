int num = 6;
LineSec[] sections;

void setup() {
    size(1000, 600);
    colorMode(HSB, 360, 100, 100, 100);

    initiateBgd();
    initiateSection();
}

void initiateSection() {
    stroke(0, 0, 100);
    strokeWeight(3);
    sections = new LineSec[num];
    for (int i=0; i<sections.length; i++) {
        int o=i%3;
        int[] c={-i % 4 * 20 + 260, 30 + 10 * i, 30 + 10 * i, 100 - 8 * i};
        int a=int(random(100, 900));

        sections[i] = new LineSec(c, o, a);
    }
}


void initiateBgd() {
    background(0);
    fill(0, 5, 5);
    strokeWeight(5);
    stroke(0, 10, 10);

    beginShape();
    vertex(0, height);
    vertex(width/2, 0);
    vertex(width, height);
    vertex(width-150, height);
    vertex(width/2, 200);
    vertex(150, height);
    endShape();
}

void draw() {

}

void keyPressed() {
    if (key == 'r') {
        for (int i=0; i<sections.length; i++) {
            sections[i].display();
        }
    }
    if (key == 'c') {
        initiateBgd();
        strokeWeight(3);
        stroke(0, 0, 100);
    }
    if (key == 's') {
        saveFrame("frame-####.png");
    }
}
