package example

// This function is called when the realm is deployed.
func init() {
	// ...
}

// This function is called when the realm is rendered through gnoweb.
func Render(path string) string {
	return "Hello, Gno!"
}
