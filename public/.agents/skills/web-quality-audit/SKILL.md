---
name: web-quality-audit
description: Habilidade para auditar a qualidade (SEO, A11y, Performance) de uma aplicação web.
---

# Web Quality Audit Protocol

Quando ativado, o agente fará uma revisão minuciosa no código HTML/CSS/JS e gerará um relatório estruturado focado em:

1. **Performance**:
   - Existem imagens pesadas não otimizadas?
   - Há scripts bloqueando a renderização (Render-blocking resources)?
   - O DOM é muito grande ou complexo desnecessariamente?
2. **Acessibilidade (a11y)**:
   - Todas as imagens possuem `alt` tags significativas?
   - O contraste de cores é adequado?
   - A página é navegável via teclado? Elementos interativos usam `button` ou `a` em vez de `div`?
3. **SEO (Search Engine Optimization)**:
   - A hierarquia de cabeçalhos está correta (apenas um `h1`, seguido de `h2`, `h3`, sem pular níveis)?
   - Existem tags semânticas do HTML5 (`<main>`, `<nav>`, `<article>`, `<section>`) em vez de apenas `divs`?
   - As meta tags (title, description) estão otimizadas?
4. **UX / UI**:
   - Existem inconsistências de espaçamento, margens quebradas ou textos difíceis de ler?

*Saída esperada:* O agente deve entregar um relatório em Markdown categorizando os problemas por severidade (Crítico, Aviso, Sugestão de Melhoria) junto com as propostas de refatoração do código.
