# Tests unitaires
DOSSIER_TESTS = ./tests
TARGET_TESTS = $(DOSSIER_TESTS)/testUnitaires.sh
LISTE_TESTS = $(DOSSIER_TESTS)/testUnitaireExo1.sh $(DOSSIER_TESTS)/testUnitaireExo2.sh $(DOSSIER_TESTS)/testUnitaireExo3.sh
$(info Liste des tests : $(LISTE_TESTS))

tests: $(TARGET_TESTS)
	@$(TARGET_TESTS)

test-exo1: $(DOSSIER_TESTS)/testUnitaireExo1.sh
	$(DOSSIER_TESTS)/testUnitaireExo1.sh

test-exo2: $(DOSSIER_TESTS)/testUnitaireExo2.sh
	$(DOSSIER_TESTS)/testUnitaireExo2.sh

test-exo3: $(DOSSIER_TESTS)/testUnitaireExo3.sh
	$(DOSSIER_TESTS)/testUnitaireExo3.sh

test-bonus:
	@echo "Aucun test pour les bonus"
