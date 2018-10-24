package main

import (
	"testing"
)

func TestMain(m *testing.M) {
	// call flag.Parse() here if TestMain uses flags
	// flag.Parse()
	// os.Exit(m.Run())
}

func TestDoStuff(t *testing.T) {
	total := doStuff()
	expected := 1
	if total != expected {
		t.Errorf("doStuff was incorrect, got: %d, want: %d.", total, expected)
	}
}
