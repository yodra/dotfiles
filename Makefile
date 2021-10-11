.DEFAULT_GOAL := check

install:
	@echo "Installing the dotfiles"
	@.scripts/install

reload:
	@.scripts/reload

checkpoint:
	@echo "Saving the dotfiles"
	@.scripts/checkpoint

check:
	@echo "✅"

docs:
	@doctoc README.md
	@echo "📚 Documentation ready!"

reinstall:
	@echo "Reinstalling the dotfiles"
	@rm -rf ~/.zim ~/.zimrc ~/.zlogin ~/.zshenv ~/.zshrc ~/.zlogin
	@make install