import sys
import time
import os
from subprocess import Popen
from watchdog.events import FileSystemEventHandler
from watchdog.observers import Observer

class Handler(FileSystemEventHandler):
    sync_path="./"
    dir_name="./"
    pdf_name="main.pdf"
    @staticmethod
    def on_any_event(event):
        if event.src_path == Handler.sync_path and event.event_type == "modified":
            #print("event detected, type: {}, path: {}".format(event.event_type, event.src_path))
            with open(Handler.sync_path, "r") as f:
                line = f.readline()
                fname, row, col = line.split(",")
                Popen(["zathura", "--synctex-forward={ROW}:{COL}:{TEX}".format(ROW=row, COL=col, TEX=fname), pdf_name], cwd=dir_name)


if __name__ == "__main__":
    path = sys.argv[1]
    pdf_path = sys.argv[2]
    dir_name = os.path.dirname(path)
    head, pdf_name = os.path.split(pdf_path)
    Handler.sync_path = path
    Handler.dir_name = dir_name
    Handler.pdf_name = pdf_name
    event_handler = Handler()
    observer = Observer()
    observer.schedule(event_handler, dir_name)
    observer.start() 
    try:
        while True:
            # Set the thread sleep time
            time.sleep(1)
    except KeyboardInterrupt:
        observer.stop()
    observer.join()