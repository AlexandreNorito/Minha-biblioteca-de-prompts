# Brownfield Discovery — AIOX Brandbook

Source: https://brand.aioxsquad.ai/brandbook/brownfield-discovery

## 01 — Workflow Principal — Fluxo de 10 Fases com Decision Points

- Workflow Principal — Fluxo de 10 Fases
- 16 nodes — 17 edges
- 2 decision points
- loop de retrabalho QA

O **Brownfield Discovery** é um workflow multi-agente completo para avaliação de débito técnico em projetos existentes. Projetado para projetos migrando de plataformas como Lovable, v0.dev, ou codebases legados.

O workflow documenta o sistema de forma abrangente, identifica débitos técnicos em todas as camadas (sistema, database, frontend), valida achados com especialistas de domínio, gera relatórios executivos para stakeholders, e cria epics e stories prontas para desenvolvimento.

O fluxo se organiza em 5 grupos de fases: **Fases 1-3** (Coleta de Dados por 3 agentes especializados), **Fase 4** (Consolidação inicial pelo @architect), **Fases 5-7** (Validação por especialistas + Quality Gate com loop de retrabalho), **Fases 8-9** (Assessment Final + Relatório Executivo), e **Fase 10** (Planning com criação de Epic e Stories).

- ID: brownfield-discovery
- Versão: 2.0
- Tipo: Brownfield
- Fases: 10
- Agentes: 6 especializados
- Decisions: 2 (DB + QA Gate)
- Loop: QA retrabalho
- Output Final: Epic + Stories

### Brownfield Discovery — Fluxo Completo (16 nodes / 17 edges / active: Consolida DRAFT)

Nodes: Início brownfield discovery → @architect Doc. do Sistema → Tem Database? (sim/não) → @data-engineer Schema + Audit → @ux-expert Frontend Spec → @architect Consolida DRAFT → @data-engineer Valida seção DB → @ux-expert Valida seção UX → @qa Quality Gate → QA Gate? (needs work/approved) → Retrabalho Aplicar correções (loop back) → @architect Assessment Final → @analyst Relatório Executivo → @pm Criar Epic → @pm Criar Stories → Discovery Completo

## 02 — Mapa de Agentes — 6 Agentes Especializados

- 7 nodes — 6 edges
- coleta / validação / finalização
- cada agente com arquétipo único

O workflow é executado por 6 agentes especializados, cada um com um arquétipo e domínio de expertise distintos. Os agentes atuam em 3 grupos funcionais:

**Coleta** (esquerda) — @architect documenta o sistema, @data-engineer audita o banco de dados, e @ux-expert especifica o frontend. As Fases 1-3 podem ser parcialmente paralelizadas.

**Validação** (centro) — Cada especialista revisa e valida os débitos da sua área no DRAFT consolidado. O @qa atua como Quality Gate decidindo APPROVED ou NEEDS WORK.

**Finalização** (direita) — @architect produz o assessment final, @analyst cria o relatório executivo para stakeholders, e @pm transforma tudo em epic e stories prontas para desenvolvimento.

| Agente | Arquétipo | Domínio | Fases |
| --- | --- | --- | --- |
| @architect | Aria · Visionary | Arquitetura de sistemas, design holístico | 1, 4, 8 |
| @data-engineer | Dara · Sage | PostgreSQL, Supabase, RLS, migrations | 2, 5 |
| @ux-expert | Uma · Empathizer | Atomic Design, design tokens, acessibilidade | 3, 6 |
| @qa | Quinn · Guardian | Quality gates, testes, rastreabilidade | 7 |
| @analyst | Atlas · Decoder | Pesquisa, análise, ROI, relatórios executivos | 9 |
| @pm | Morgan · Strategist | PRDs, epics, priorização, story creation | 10 |

### Brownfield Discovery — Mapa de Agentes (7 nodes / 6 edges / active: Hub Central)

Grupos:
- Sistema & Consolidação — @architect Aria · Visionary
- Database & Validação — @data-engineer Dara · Sage
- Frontend & UX — @ux-expert Uma · Empathizer
- Quality Gate — @qa Quinn · Guardian
- Relatório Executivo — @analyst Atlas · Decoder
- Epic & Stories — @pm Morgan · Strategist

## 03 — Pipeline de Artefatos — Mapa de Dependências entre Documentos

- 16 nodes — 19 edges
- entradas → fases → outputs
- layout horizontal LR

Cada fase do workflow produz artefatos .md específicos que alimentam as fases seguintes. O pipeline mostra o fluxo de dependências da esquerda para a direita, desde as entradas brutas até os outputs finais.

**Entradas** — Código fonte, database schema, UI/componentes e configurações do projeto existente.

**Fases 1-3** — Produzem system-architecture.md, SCHEMA.md, DB-AUDIT.md e frontend-spec.md. Todos convergem para a Fase 4.

**Fase 4** (ponto central) — O DRAFT consolida todos os achados e alimenta as validações especializadas.

**Fases 5-7** — Reviews de DB e UX convergem no qa-review.md que atua como quality gate.

**Fases 8-10** — Assessment final gera o relatório para stakeholders, que informa a criação de epic e stories prontas para desenvolvimento.

### Brownfield Discovery — Artefatos (16 nodes / 19 edges / active: tech-debt-DRAFT)

Entradas: Código Fonte · DB Schema · UI/Componentes · Configurações
Fase 1: system-arch
Fase 2: SCHEMA.md · DB-AUDIT.md
Fase 3: frontend-spec
Fase 4: tech-debt-DRAFT
Fase 5: db-review
Fase 6: ux-review
Fase 7: qa-review
Fase 8: assessment
Fase 9: DEBT-REPORT
Fase 10: epic-debt · story-*.md

## 04 — Decision Points — 3 Pontos de Decisão Detalhados

- 3 mini-diagramas
- branching logic
- loop de QA feedback

O workflow possui 3 pontos de decisão que controlam o fluxo de execução. Cada decision point avalia critérios específicos para determinar qual caminho seguir.

### Decision 01 — Projeto tem Database? (4 nodes)

- Tem Database? (sim/não)
- Sim → Executar FASE 2 @data-engineer
- Não → Pular FASE 2 ir para FASE 3
- FASE 3: Frontend @ux-expert

**Critérios:**
- Existe pasta supabase/ ou similar?
- Há arquivos de migration?
- Projeto usa Supabase, PostgreSQL, ou outro DB?

Se não houver database, a FASE 2 é pulada e o fluxo segue direto para a FASE 3 (Frontend).

### Decision 02 — QA Gate (4 nodes / loop)

- QA Gate? (approved/needs work)
- approved → Prosseguir FASE 8
- needs work → Retornar FASE 4 Incorporar feedback QA

**APPROVED quando:**
- Todos os débitos validados por especialistas
- Nenhum gap crítico identificado
- Dependências fazem sentido
- Riscos estão mapeados

**NEEDS WORK quando:**
- Gaps não endereçados
- Débitos faltando validação
- Riscos cruzados não mitigados
- Dependências inconsistentes

### Decision 03 — Escopo do Epic (4 nodes / 3 saídas)

- Escopo do Epic
- 1-3 Stories — simples
- 4+ Stories — PRD completo
- Arquitetura nova — greenfield

**3 caminhos possíveis:**
- **1-3 Stories** — Usar brownfield-create-epic. Workflow simples, escopo contido.
- **4+ Stories** — Considerar PRD completo. Workflow extenso com mais planejamento.
- **Arquitetura nova** — Usar greenfield workflow. O escopo excedeu modernização e requer reescrita.
