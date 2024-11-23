outdir-base := justfile_directory()
template-dir := clean(outdir-base / "rendered")
helmfile-outdir-tmpl := "{{ .OutputDir }}/{{ .Release.Namespace }}/{{ .Release.Name }}"

@render:
    helmfile template  . --output-dir "{{ template-dir }}" --output-dir-template "{{ helmfile-outdir-tmpl }}"
