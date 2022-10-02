class LineSec {
    color cStroke;
    int origLight;
    int anchor;

    LineSec(int[] c, int o, int a) {
        cStroke = color(c[0], c[1], c[2], c[3]);
        origLight = o;
        anchor = a;
    }

    void display() {
        fill(cStroke);
        float tmp, rect_tmp;
        float delta_tmp=random(100, 200);
        // float delta_rect_tmp=random(-100, 100);
        float delta_rect_tmp=0;

        beginShape();
        vertex(anchor, height);
        switch (origLight) {
            case 0: // originate from left
                tmp = random(50, height-300);
                rect_tmp = anchor * (height - tmp) / (height - tmp - delta_tmp) + delta_rect_tmp;
                vertex(0, tmp + delta_tmp);
                vertex(0, tmp);
                vertex(rect_tmp, height);
                break;
            case 1: // originate from top
                tmp=random(50, width-50);
                vertex(tmp, 0);
                vertex(tmp + delta_tmp, 0);
                vertex(anchor + delta_tmp, height);
                break;
            case 2: // originate from right
                tmp = random(50, height-300);
                rect_tmp = width - (width - anchor) * (height - tmp - delta_tmp) / (height - tmp) + delta_rect_tmp;
                vertex(width, tmp);
                vertex(width, tmp + delta_tmp);
                vertex(rect_tmp, height);
        }

        endShape();
    }
}
