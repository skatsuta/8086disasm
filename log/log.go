package log

import (
	"fmt"
	"os"

	"github.com/k0kubun/pp"
)

// Logger is the interface that logs debug an error messages.
type Logger interface {
	Dbg(format string, arg ...interface{})
	Err(format string, arg ...interface{})
}

type logger struct{}

// NewLogger returns a new logger.
func NewLogger() Logger {
	return logger{}
}

// Dbg logs a formatted message as a debug information.
func (l logger) Dbg(format string, arg ...interface{}) {
	_, _ = pp.Fprintf(os.Stderr, "[dbg] "+format, arg...)
}

// Err logs a formatted message as an error information.
func (l logger) Err(format string, arg ...interface{}) {
	_, _ = fmt.Fprintf(os.Stderr, "[err]"+format, arg...)
}
