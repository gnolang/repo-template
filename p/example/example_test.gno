package example

import "testing"

func TestAdd(t *testing.T) {
	tests := []struct {
		name string
		a, b int
		want int
	}{
		{"zeros", 0, 0, 0},
		{"positive", 2, 3, 5},
		{"negative", -2, -3, -5},
		{"mixed", -2, 5, 3},
	}
	for _, tt := range tests {
		if got := Add(tt.a, tt.b); got != tt.want {
			t.Errorf("%s: Add(%d, %d) = %d, want %d", tt.name, tt.a, tt.b, got, tt.want)
		}
	}
}
