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
	write: file.Create & {
		filename: "README.md"
		contents: template.Execute(read.contents, data)
	}
}
