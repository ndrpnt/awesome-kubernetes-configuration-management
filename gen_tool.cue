package awesome

import (
	"text/template"
	"tool/file"
)

command: gen: {
	read: file.Read & {
		filename: "README.md.tpl"
		contents: string
	}
	rendered: {
		filename: "README.md"
		contents: template.Execute(read.contents, data)
	}
	write: file.Create & {
		filename: rendered.filename
		contents: rendered.contents
	}
}
