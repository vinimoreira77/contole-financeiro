---
description: Protocolo de verificação e revisão antes de concluir qualquer código.
trigger: always_on
---

# Verification Before Completion

Antes de finalizar qualquer tarefa de código e devolver a resposta ao usuário, execute este checklist mental:
1. **Dry Run (Revisão Mental)**: Leia o código que você acabou de escrever de cima a baixo. Ele faz sentido? Existe algum erro de sintaxe óbvio?
2. **Edge Cases**: O código lida corretamente com listas vazias, nulos, undefined e valores fora do esperado? 
3. **Ausência de Placeholders**: Você implementou a solução completa ou deixou comentários como `// TODO: implementar depois`? **Sempre entregue a solução completa**, a menos que o usuário tenha pedido expressamente o contrário.
4. **Completude da Tarefa**: Todos os requisitos que o usuário mencionou no prompt foram atendidos?
5. **Efeitos Colaterais**: A alteração que você fez quebra alguma outra parte do código existente (ex: variáveis globais alteradas, escopo quebrado)?
