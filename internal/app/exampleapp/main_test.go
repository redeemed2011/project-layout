package general

import (
	"testing"
)

func TestGeneralStuff(t *testing.T) {
	if !Stuff() {
		t.Errorf("GeneralStuff was incorrect")
	}
}
