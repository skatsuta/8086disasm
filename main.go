package main

import (
	"bufio"
	"flag"
	"io"
	"os"

	"github.com/skatsuta/gdisasm/disasm"
	"github.com/skatsuta/gdisasm/log"
)

const bsize = 2

// logger is a logging object.
var logger log.Logger

func init() {
	logger = log.NewLogger()
}

func main() {
	flag.Parse()

	file := flag.Args()[0]

	fp, err := os.Open(file)
	if err != nil {
		logger.Err("os.Open(%v) failed: %v", file, err)
	}

	r := bufio.NewReader(fp)
	w := bufio.NewWriter(os.Stdout)

	d := disasm.New(r, w)

	for {
		s, err := d.Parse()
		if err == io.EOF {
			break
		}

		if s == "" {
			continue
		}

		if _, e := w.WriteString(s + "\n"); e != nil {
			logger.Err("Writer#WriteByte(%v) failed: %v", s, e)
			return
		}

		// write out per line
		if e := w.Flush(); e != nil {
			logger.Err("Writer#Flush() failed: %v", e)
			return
		}
	}

	if e := w.Flush(); e != nil {
		logger.Err("Writer#Flush() failed: %v", e)
	}
}
