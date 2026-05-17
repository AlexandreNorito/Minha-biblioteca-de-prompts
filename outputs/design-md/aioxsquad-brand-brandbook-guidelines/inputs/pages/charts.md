# Charts — AIOX Brandbook

Source: https://brand.aioxsquad.ai/brandbook/charts

## 01 — Sales Target Card

- Default ($150k under): "Your Sales Targets · $400,500.00 · This is $150,000.00 less than last month!"
- Near Target: "Q1 Pipeline · $950,000.00 · Almost there — $50,000 to go."

## 02 — Sales Year Chart

- With Comparison + KPIs: "Your Sales this year · $311,056.00 / $385,990.30" plus monthly axis (jan–dec)
  - KPI: Average Sale Value $7,621,310.5 ($155,291.40 less than last year)
  - KPI: Average Items per Sale 22.1 (0.28 less than last year)
- Single Series (no comparison): "Monthly Revenue · $350,000.00"

## 03 — Pyramid Chart

### SINKRA Hierarchy (4 levels)

- L1 · TOPO — Template `tpl_c_level_canonical_control_plane_v2` (1)
- L2 — Organisms — "5 workflows com fluxo end-to-end" (5)
- L3 — Molecules — "12 sequências de atoms agrupados" (12)
- L4 · BASE — Atoms — "18 tasks com 1 executor único cada" (18)

### Funnel (TOFU → Closed)

- TOFU — Visitors 12.4K (monthly unique)
- MOFU — Leads 1.8K (qualified)
- BOFU — Opportunities 240 (in pipeline)
- CLOSED — Customers 47 (this quarter)

## 04 — Fan Chart (Fan-In / Fan-Out)

### Task Dependencies

| FAN-IN · DEPENDS_ON | Task | FAN-OUT · FEEDS_INTO |
|---|---|---|
| 2 | `atm_select_execution_mode` | 6 |
| 2 | `atm_instantiate_business_spoke` | 5 |
| 4 | `atm_emit_readiness_contract` | 0 |
| 4 | `atm_evaluate_completeness_and_gates` | 1 |
| 3 | `atm_materialize_identity_core` | 4 |
| 2 | `atm_publish_context_snapshot` | 4 |
| 2 | `atm_consolidate_portfolio` | 4 |
| 0 | `atm_capture_end_state` · ROOT | 3 |

Σ IN: 19 · 8 TASKS · 4 CRITICAL · Σ OUT: 27

### Service Call Graph

| INBOUND | Service | OUTBOUND |
|---|---|---|
| 12 | auth-service | 2 |
| 8 | user-service | 4 |
| 5 | order-service | 6 |
| 3 | payment-gateway | 1 |
| 7 | notification-service | 0 |

Σ IN: 35 · 5 TASKS · 2 CRITICAL · Σ OUT: 13

## 05 — Gate Card (Quality Gates)

- **QG-02 · pass** — Veracidade do Brief Estratégico · VETO conf ≥0.70 · Pass + Veto
- **QG-09 · review** — Governança do Registry e Projeção Legada · VETO governance = 1.0 · Review + Veto
- **QG-01 · fail** — Baseline de KPIs Operacionais · ≥4 KPIs mín · SPONSOR + COO · Fail + Owner
- **QG-05 · pass** — Cobertura do Snapshot de Contexto · Minimal

## 06 — Readiness Bar

### SINKRA Readiness (5 dims)

- Estratégia 82 — Ponto B depende de confirmação humana.
- Operação 91 — DAG bem formalizado.
- Automação 78 — Workers existem, publisher pendente.
- Governança 86 — Veto por accountability.
- Evidência 64 — QG-01 ainda fechado.

### Auto-state by score

- Frontend 92 — Production-ready.
- Backend 78 — Refactor pending.
- Infra 60 — K8s migration in progress.

## 07 — Score Summary Card

- **OVERALL SCORE PONDERADO** 7.42 / 10.00 · ≥8.0 PROMOVE · ATUAL = REVIEW (Featured + Lime)
- **COMPLIANCE SCORE** 74.2 / 100 · abaixo de approve 80 (Warning)

## 08 — Risk Card

- **R1 critical** — Accountability token ausente. Adicionar accountability_token por task com Human accountable.
- **R2 high** — Baseline factual de KPIs incompleto. Instrumentar baseline antes de promover para produção.

## 09 — Action Row (queue P0/P1/P2)

| Priority | Action | Owner | Reference |
|---|---|---|---|
| P0 | Fechar accountability tokens | COO Orchestrator + Human | `task_definitions.yaml` |
| P1 | Criar baseline factual de KPIs | Sponsor do negócio | `quality_gates.yaml` |
| P1 | Formalizar publicador de readiness | Worker | `automation_specs.yaml` |
| P2 | Completar catálogo de infraestrutura | DevOps / GWS | `infrastructure_connections.yaml` |

## 10 — Section Marker

- With Prefix (default) — `01.1 · MÉTRICAS DE SAÚDE`
- Lime — `02.6 · META_AXIOMAS · 10 DIMENSÕES`
- Warning — `QG-08 · REVIEW PENDING`
- Error — `R1 · CRITICAL RISK`

## 11 — Executor Mix Grid (SINKRA · 4 types)

- HUMAN — 3 tasks · 17% — Sponsor / founder
- AGENT — 11 tasks · 61% — COO / CMO / CTO / CIO / CAIO / CSO
- WORKER — 4 tasks · 22% — Scripts e materialização
- CLONE — 0 tasks · não usado

## 12 — Roadmap Timeline (8 weeks)

| Priority | Action · Owner | Span |
|---|---|---|
| P0 | Accountability tokens — COO Orchestrator | 1 sem · Tokenizar 15 tasks |
| P1 | Baseline factual de KPIs — Fundador / Sponsor | 4 sem · Instrumentação + janela 30d |
| P1 | Publicador de readiness — Worker · Automation | 3 sem · Paralelo |
| P2 | Catálogo de infraestrutura — DevOps / GWS | 2 sem · Posterior |

## 13 — Gaps Matrix (Capability Gaps · 6)

- **GAP-001 · alta** — Provisão formal do Firecrawl MCP · BLOCKER `atm_enrich_external_sources` · agent
- **GAP-002 · media** — Ingestão formal de Google Drive · BLOCKER `atm_enrich_external_sources` · `atm_generate_derived_artifacts` · agent
- **GAP-004 · alta** — Motor canônico de scoring de completude · BLOCKER `atm_evaluate_completeness_and_gates` · QG-06 · agent + worker
- **GAP-005 · media** — Publicador/notificador de readiness · BLOCKER `atm_emit_readiness_contract` · QG-10 · human + worker
- **GAP-006 · baixa** — Rastreabilidade opcional ClickUp para intake · BLOCKER `atm_capture_end_state` · human + agent

## 14 — Handoff Packet (5 nodes)

- WF 01 · INTAKE → `canonical_contract_packet`
- WF 02 · WORKSPACE → `context_snapshot_packet`
- WF 03 · PROFILE → `completeness_gate_packet`
- WF 04 · PORTFOLIO → `portfolio_+_enrichment`
- WF 05 · GOVERNANCE

## 15 — Block Marker

- Block 02 · Arquitetura — `CAMINHO CRÍTICO · RACI · EXECUTORES · STAKEHOLDERS`
- Block 03 · Economics — `PIPELINE · COSTS · SCORE BREAKDOWN`

## 16 — Gantt Chart

- Operating Model (4 phases) — atoms `atm_capture_end_state` (03:00), `atm_rank_constraints_priorities`, `atm_select_execution_mode ★` (02:30), `atm_validate_workspace_contract`, `atm_instantiate_business_spoke ★` (03:30), `atm_publish_context_snapshot` (04:00), `atm_materialize_identity_core` (07:00 ∥), `atm_evaluate_completeness ★` (04:00), `atm_emit_readiness_contract ★` (09:40). Lanes: HUMAN · AGENT · WORKER · CRITICAL PATH.
- Project Timeline (days) — phases: Discovery · Design · Build · QA · Launch (0d → 60d).

## 17 — Bar Chart (SVG)

- Monthly Performance: Jan 45 · Feb 62 · Mar 38 · Apr 71 · May 55 · Jun 89 · Jul 76 · Aug 94
- Colored Bars: Q1 120 · Q2 185 · Q3 145 · Q4 210

## 18 — Donut Chart (SVG)

- Default: Automation / Support / Analytics / Other (total 100)
- Custom Colors: A / B / C (total 100)

## 19 — Line Chart

- Single Line
- Multi-Line + Legend
- Without Grid

## 20 — Area Chart

- Default (monotone)
- Multi-Area + Legend
- Linear Curve

## 21 — Pie Chart

- Pie
- Donut (innerRadius)
- With Labels

## 22 — Radar Chart

- Single Series
- Multi-Series

## 23 — Rings Chart

- 3 Rings — Automação 85% · Integração 62% · Adoção 45%
- Custom Colors — Revenue 92% · Profit 67%

## 24 — Animated Number

- Integer — -10,730
- Percentage — -866.9%
- Currency — R$ -433.900
- Compact — -20.9K

## 25 — Radial Bar Chart

- Multi-Bar
- Single Gauge

## 26 — Composed Chart

- Bar + Line
- Bar + Line + Area

## 27 — World Map

- No Markers
- With Markers
- Zoomable (EqualEarth projection)

## 28 — KPI Grid (DnD · Draggable KPI Cards)

- Revenue R$1.2M ↑+12.5%
- Active Users 8,432 ↑+5.2%
- Churn Rate 3.1% ↓-0.8%
- NPS Score 72 → 0%
- MRR R$89K ↑+18% · LTV R$4.2K ↑+7% · CAC R$89 ↑-15% · ARR R$1.07M ↑+22% · Retention 94% ↑+1.2% · Avg Ticket R$297 ↓-3% · (6 Cards / 3 cols)

Drag interactions: pick-up via space bar, arrow keys to move, space to drop, esc to cancel.

## 29 — Chart Tooltip

- Multi-Item — January 2026 · Revenue 4500 · Costs 2100 · Profit 2400
- With Formatter — Q1 2026 · Growth 23.5% · Churn 4.2%
