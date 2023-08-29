package Application;

import java.util.LinkedList;
import java.util.List;

class Main {
    public static void main(String[] args) {
            
        List<byte[]> list = new LinkedList<>();
        int index = 1;
            
        while (true) {
            byte[] b = new byte[10 * 1024 * 1024]; // 10MB byte object
            list.add(b);
            Runtime rt = Runtime.getRuntime();
            System.out.printf("[%3s] Available heap memory: %s%n", index++, rt.freeMemory());
            try {
                Thread.sleep(500);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

}
