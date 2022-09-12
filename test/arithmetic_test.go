package arithmetic

import (
	oper "myapp/pkg/arithmetic"
	"testing"
)

func TestPlus(t *testing.T) {
	ari := oper.Numbers{X: 5, Y: 6}
	expect := 11
	if got := ari.Plus(); got != expect {
		t.Errorf("Plus() = %d, origin value = %d", got, expect)
	}
}
