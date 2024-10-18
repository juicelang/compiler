{ mkShell, writeShellScriptBin, bun }:
let
  juice-bootstrap = writeShellScriptBin "juice-bootstrap" ''
    		${bun}/bin/bun ../bootstrap/src/index.ts $@
    	'';
in
mkShell {
  packages = [
    bun
    juice-bootstrap
  ];
}
