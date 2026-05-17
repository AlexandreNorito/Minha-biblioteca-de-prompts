# Flow Diagram — AIOX Brandbook

Source: https://brand.aioxsquad.ai/brandbook/flow-diagram

## 01 — FlowDiagram — Interactive Data-Driven Canvas

**Component:** FlowDiagram

- SVG — no external lib
- data-driven via props
- active state: lime accent

### Props Reference

- `nodes` — FlowNode[] — Array of nodes with id, label, x/y, type, active.
- `edges` — FlowEdge[] — Connections between nodes. Optional edge label.
- `canvasWidth` — number — SVG viewBox width. Default 560.
- `canvasHeight` — number — SVG viewBox height. Default 340.
- `nodeWidth` — number — Node box width. Default 110.
- `nodeHeight` — number — Node box height. Default 36.

### Node Types

- `default` — Standard step
- `start` — Pill — entry
- `end` — Pill — exit
- `decision` — Diamond — branch
- `action` — Rect — action

### Example 01 — SaaS Onboarding (8 nodes / 10 edges / active: Workspace)

Nodes: Landing Page (entry point), Sign Up (auth), Verify Email (email gate, no email verified skip), Resend Link (recovery), Workspace (dashboard), Invite Team (collaboration), Setup Wizard (onboarding), First Action (activation)

Data Inspector:
```
{
  "component": "FlowDiagram",
  "nodes": 8,
  "edges": 10,
  "activeNode": "workspace",
  "canvasWidth": 560,
  "canvasHeight": 335,
  "nodeTypes": ["start", "action", "decision", "default", "end"],
  "edgesWithLabels": 3
}
```

### Example 02 — Agent Orchestration (6 nodes / 7 edges / active: Router)

Nodes: User Prompt (input), Agent Router (orchestrator), @dev code agent, @qa quality gate (implement/review/deploy branches), @devops deploy agent, Output (response)

### Example 03 — E-commerce Checkout (8 nodes / 9 edges / active: Checkout)

Nodes: Browse (catalog), Add to Cart (selection), Checkout (payment), Guest (no account), Login (auth), Payment (stripe — approved/declined), Confirmation (success), Retry (error)

### Example 04 — Sitemap (22 nodes / 21 edges / hub-spoke layout)

Nodes: Get Started, Login / Signup, AIOX Squad (hub), Home, Score, Analysis, Transfer, Recent, Contact, Favourites, Check Deposit, Pay Bills, All Bills, Paid, Send, Profile, Settings, Alerts, Dashboard, Reports (analytics, 7d/30d), Weekly, Monthly

### Example 05 — Architecture Org Chart (48 nodes / 40 edges / hierarchical tree)

Nodes: Sign up, Dashboard, Investors, Transactions, Referral, Exchanges, Profile, Team, Invoices, Payouts, Settings, Invoices List, New Invoice, New Payout, Payouts List, Analytics, Billing Address, Billing Methods, Profile Picture, Investor Name, Payment Method, Sent Date, Date Due, Status, Title, Billed To, Items, Download PDF, Send, Recipient, Billing Details, "Save", Already Paid, Need to Payout, Views, Pie Chart, Line Chart, Filters, Currency, Dates, Setup Method, Avail. Wallets, Token Name, Crypto Address, Wallet Address

## 02 — FlowMap — Grouped Mindmap Canvas

**Component:** FlowMap

- SVG — grouped mindmap
- item-level active states
- dark + light theme toggle

### Props Reference

- `groups` — FlowMapGroup[] — Array of groups with id, label, items, x/y, active.
- `edges` — FlowMapEdge[] — Connections between groups. Optional edge label.
- `canvasWidth` — number — SVG viewBox width. Default 800.
- `canvasHeight` — number — SVG viewBox height. Default 500.
- `theme` — "dark" | "light" — Visual theme. Default dark.

### Example 01 — Dating App Features (9 groups / 8 edges / active: Splash, Liked)

Groups: Splash screen (Sign In, Phone number, Confirmation code, Enable location services), Onboarding (Set name, Set birth date, Set gender, Set preferences, Personality test, Set interests), Main page (View profiles, Set filters, Swipe right and left, View stories, People near you, See people near you, Turn on invisible mode, Refresh), Chat (View chat list, View stories, Search chats), People liked you (See people who liked you, Search people who liked you), Profile (View profile details, Edit profile details, Payment methods, Notification settings, Change subscription plan, Set email, Set phone number, Logout), Chat (Send messages, View stories, Send voice messages, Block user)

## 03 — IconFlowDiagram — Architecture Icon Canvas

**Component:** IconFlowDiagram

- SVG — icon nodes
- edge labels in pills
- dark + light theme toggle

### Props Reference

- `nodes` — IconFlowNode[] — Array of nodes with id, label, x/y, icon path, type, active.
- `edges` — IconFlowEdge[] — Connections between nodes. Optional edge label shown in pill.
- `canvasWidth` — number — SVG viewBox width. Default 700.
- `canvasHeight` — number — SVG viewBox height. Default 420.
- `nodeWidth` — number — Node box width. Default 120.
- `nodeHeight` — number — Node box height. Default 80.
- `theme` — "dark" | "light" — Visual theme. Default dark.

### Example 01 — API Ecosystem (9 nodes / 10 edges / active: OpenAPI Document)

Nodes: OpenAPI Spec (provides vocabulary), OpenAPI Document, API Developer (creates → formally describes), API, SDK Generator, API Docs Generator, SDKs, SDK Docs, API Docs (reads)

## 04 — FlowPlaybook — Orchestration Playbook Canvas

**Component:** FlowPlaybook

- SVG — orthogonal connectors
- category-coded nodes + icons
- pan & zoom + dark/light toggle

### Props Reference

- `nodes` — PlaybookNode[] — Array of nodes with id, label, x/y, category, icon, index, active.
- `edges` — PlaybookEdge[] — Connections between nodes. Optional edge label.
- `canvasWidth` — number — SVG viewBox width. Default 560.
- `canvasHeight` — number — SVG viewBox height. Default 400.
- `nodeWidth` — number — Node box width. Default 160.
- `nodeHeight` — number — Node box height. Default 56.
- `theme` — "dark" | "light" — Visual theme. Default dark.

### Node Types

- `start` — Entry point — lime accent
- `action` — Task step — blue accent
- `condition` — Branch gate — purple accent
- `wait` — Sync point — amber accent
- `end` — Terminal — red accent

### Example 01 — Phishing Attack Playbook (15 nodes / 17 edges / active: Select containment)

Nodes: Start point, Investigate Breaches (Potential Data #1), Analyze Email (Voice and Text #2), Establish Timeline (Milestones #3), Condition point (First true), Select containment strategy #4, Isolate Endpoints (With Accounts #5), Condition point (Any true), Enrich Artifacts (Found #6), Hash Attachments (Threat Feeds #7), Identify Repeat (Offense #8), Escalate to Tier 2 (Further Analysis #9), Wait point (Any true), Wait point (First true), Wait point (All paths)

## 05 — PipelineDiagram — Service Pipeline Canvas

**Component:** PipelineDiagram

- SVG — service-card nodes
- named ports + dashed connectors
- pan & zoom + dark/light toggle

### Props Reference

- `nodes` — PipelineNode[] — Array of service nodes with id, type, label, ports, x/y, status.
- `edges` — PipelineEdge[] — Port-to-port connections. fromNode/fromPort to toNode/toPort.
- `canvasWidth` — number — SVG viewBox width. Default 800.
- `canvasHeight` — number — SVG viewBox height. Default 500.
- `theme` — "dark" | "light" — Visual theme. Default dark.

### Node Types

- `input` — Data source — blue badge
- `ai` — AI service — green badge
- `output` — Data sink — orange badge
- `service` — Generic service — gray badge

### Example 01 — AI Chat Pipeline (7 nodes / 7 edges / status: all ready)

Nodes: Input (Message event.slack.com v1.0.0, Bot Message, User Message), AI (Intent Classifier classifier.ibm.com v1.0.0, Text v1.0.0, Intent watson.com v1.0.0), AI (Faiss ibm.com v1.0.0, Input/Output faiss.ibm.com v1.0.0), AI (Prompt Engineering ibm.com v1.0.0, Prompt v1.0.0, Faiss prompt-engineering v1.0.0, Formatted Prompt v1.0.0, Cache Output v1.0.0), AI (BAM ibm.com v1.0.0, Input/Issue/Text bam.ibm.com v1.0.0), AI (BAM CodeGen ibm.com v1.0.0), Output (Post Message chat.slack.com v1.0.0)

## 06 — ProcessFlowDiagram — Development Process Canvas

**Component:** ProcessFlowDiagram

- FlowDiagram — vertical process
- linear top-to-bottom flow
- 7 sequential steps

### Props Reference

- `nodes` — FlowNode[] — Array of nodes with id, label, x/y, type, active.
- `edges` — FlowEdge[] — Connections between nodes. Optional edge label.
- `canvasWidth` — number — SVG viewBox width. Default 560.
- `canvasHeight` — number — SVG viewBox height. Default 500.

### Node Types

- `start` — Pill — entry point
- `action` — Rect — active step
- `end` — Pill — terminal

### Example 01 — AIOX Development Process (7 nodes / 6 edges / active: Story Draft)

Nodes: Briefing (kickoff), Discovery (research), Architecture (design system), Story Draft (acceptance), Development (implementation), QA Gate (validation), Deploy (production)
