build:
	python3 -m coffeehouse_dltc --train-model spam_ham

background_build:
	screen -dm bash -c 'python3 -m coffeehouse_dltc --train-model spam_ham'

test:
	python3 -m coffeehouse_dltc --test-model spam_ham_build

clean:
	@for f in $(shell ls spam_ham/); do \
		echo "Processing $${f}" && sort -u "spam_ham/$${f}" > "spam_ham/$${f}.clean" && rm "spam_ham/$${f}" && mv "spam_ham/$${f}.clean" "spam_ham/$${f}"; \
	done