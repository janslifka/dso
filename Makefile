docs.install:
	wget -O bin/widoco.jar https://github.com/dgarijo/Widoco/releases/download/v1.4.11/widoco-1.4.11-jar-with-dependencies.jar

docs.generate:
	java -jar bin/widoco.jar -rewriteAll -getOntologyMetadata -oops -ontFile dso.owl -outFolder docs

docs.serve:
	cd docs && python3 -m http.server


open.evaluation:
	open docs/OOPSevaluation/oopsEval.html
