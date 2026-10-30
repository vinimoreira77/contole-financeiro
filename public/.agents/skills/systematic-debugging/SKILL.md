---
name: systematic-debugging
description: Habilidade para realizar um processo metódico e rigoroso de caça a bugs.
---

# Systematic Debugging Protocol

Quando ativada pelo usuário ou quando confrontado com um bug complexo, o agente deve abandonar tentativas baseadas em tentativa-e-erro e seguir estritamente este protocolo:

1. **Reprodução e Isolamento**: 
   - Qual é a linha de código exata que está falhando?
   - Quais são os inputs que levam ao erro? 
   - Isole o componente ou função.
2. **Levantamento de Hipóteses**:
   - Liste de 2 a 3 hipóteses do porquê esse erro está acontecendo (ex: "A variável X está vindo indefinida do backend", "O loop está estourando o limite do array").
3. **Validação Rigorosa**:
   - Analise o estado e o fluxo de dados para cada hipótese.
   - Adicione logs ou inspecione o código para provar ou refutar cada hipótese **antes** de propor uma correção.
4. **Correção pela Causa Raiz**:
   - Nunca proponha "band-aids" (remendos). Conserte a causa raiz arquitetural ou lógica.
   - Certifique-se de que a correção não introduza novos bugs (regressões).
