package examplepkg

import (
	"testing"
)

func TestExample(t *testing.T) {
	if Example() != 1 {
		t.Errorf("example was incorrect")
	}
}
