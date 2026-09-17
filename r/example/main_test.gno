package example

import "testing"

func TestRender(t *testing.T) {
	if got := Render(""); got != "Hello, Gno!" {
		t.Errorf("Render(\"\") = %q, want %q", got, "Hello, Gno!")
	}
}
