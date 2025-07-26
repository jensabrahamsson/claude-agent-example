# Agent-Based Team Development Blueprint

A comprehensive template for creating realistic Scrum development teams using specialized Claude Code agents and MCP (Model Context Protocol) tools.

## 🎯 Overview

This project demonstrates how to simulate a complete software development team using Claude Code's agent system. Each team member has distinct personalities, specializations, and access to specific MCP tools that match their role, creating realistic collaborative development workflows.

## 🏗️ Architecture

### Team Structure (9 Specialized Agents)

#### **Core Leadership (3)**
- **🎯 Scrum Master** (`anders-lundstrom-sm`) - Facilitates ceremonies, removes blockers
- **📋 Product Owner** (`mark-zuckerberg-po`) - Defines requirements, priorities  
- **🏛️ Tech Lead** (`alex-chen-tech-lead`) - Architecture decisions, technical mentoring

#### **Development Team (4)**
- **⚡ Full-Stack Developer** (`sofia-andersson-fullstack`) - React frontend & Node.js backend
- **🔧 DevOps Engineer** (`marcus-rodriguez-devops`) - Infrastructure, deployment, CI/CD
- **📊 Data Engineer** (`david-kim-data-engineer`) - Data pipelines, API integration
- **🧪 QA Engineer** (`emma-larsson-qa`) - Testing, quality assurance

#### **Specialized Roles (2)**
- **🛡️ Security Architect** (`lisa-chen-security-architect`) - Security analysis, compliance
- **📈 Business Analyst** (`jessie-xi-business-analyst`) - Requirements, stakeholder communication

## 🛠️ MCP Tools & Assignments

### **Security Tools (Semgrep MCP)**
**Primary:** Security Architect (Lisa Chen)
**Secondary:** QA Engineer (Emma Larsson) - for security testing

**Why Semgrep:** 
- Fast static analysis for vulnerability detection
- Custom rule creation for project-specific security patterns
- Integrates seamlessly into development workflow
- Catches security issues early in the development cycle

**Key Features:**
- `semgrep_scan` - Comprehensive security scanning
- `security_check` - Fast security validation
- `semgrep_scan_with_custom_rule` - Project-specific security rules
- `semgrep_rule_schema` - Rule creation and validation

### **Frontend Testing (Playwright MCP)**
**Shared Access:** Full-Stack Developer, QA Engineer, Product Owner

**Why Playwright:**
- End-to-end testing across all browsers
- Visual regression testing capabilities
- Real user interaction simulation
- Perfect for validating UX and functionality

**Key Features:**
- `browser_snapshot` - Page accessibility analysis
- `browser_click` - User interaction simulation
- `browser_navigate` - Multi-page testing workflows
- `browser_take_screenshot` - Visual validation

### **Problem-Solving (Sequential Thinking MCP)**
**Shared Access:** DevOps, Business Analyst, Product Owner, Scrum Master

**Why Sequential Thinking:**
- Structured approach to complex problem analysis
- Helps break down user stories and technical challenges
- Useful for sprint planning and retrospectives
- Supports decision-making processes

### **Code Architecture (Serena MCP)**
**Primary:** Tech Lead (Alex Chen)
**Secondary:** Security Architect (Lisa Chen) - for security code review

**Why Serena:**
- Advanced code symbol analysis and navigation
- Intelligent refactoring capabilities
- Project-wide code understanding
- Supports architectural decision-making

### **Documentation (Context7 MCP)**
**Primary:** Data Engineer (David Kim)

**Why Context7:**
- Up-to-date library documentation access
- API reference integration
- Helps with external service integration
- Reduces context switching for developers

## 🚀 Getting Started

### 1. Installation

Clone this repository:
```bash
git clone <repository-url>
cd claude-agent-example
```

### 2. Configure MCPs

Run the MCP configuration script:
```bash
chmod +x configure_mcps.sh
./configure_mcps.sh
```

**Active MCPs:**
- ✅ Sequential Thinking - Problem-solving and analysis
- ✅ Context7 - Library documentation access
- ✅ Serena - Advanced code analysis and refactoring
- ✅ Semgrep - Security scanning and vulnerability detection
- ✅ Playwright - Browser automation and testing

**Optional MCPs (Commented Out):**
```bash
# Requires configuration:
# claude mcp add filesystem npx @modelcontextprotocol/server-filesystem /path/to/code
# claude mcp add notion npx @notionhq/notion-mcp-server --env OPENAPI_MCP_HEADERS='{"Authorization": "ADD_KEY_HERE", "Notion-Version": "2022-06-28"}'
```

**Filesystem MCP:** Provides direct file system access
- **Configuration:** Replace `/path/to/code` with your project path
- **Use Case:** Advanced file operations beyond standard tools

**Notion MCP:** Integrates with Notion workspace
- **Configuration:** Add your Notion API key to `ADD_KEY_HERE`
- **Use Case:** Project documentation, team wikis, requirement tracking

### 3. Agent Activation

Activate specific team members:
```bash
# View available agents
/agents

# Work with specific roles
/agent alex-chen-tech-lead    # For architecture decisions
/agent lisa-chen-security     # For security reviews
/agent emma-larsson-qa        # For testing strategies
```

### 4. Start Team Simulation

To begin realistic team roleplay and activate the full agent simulation, you must explicitly trigger it:

```
OK, let the play begin, activate the agents
```

**Important:** Without this activation phrase, Claude will work normally but won't engage in the full team roleplay simulation with individual personalities, team dynamics, and collaborative problem-solving that this project is designed for.

## 🎭 Roleplay Guidelines

This project emphasizes **realistic team simulation**:

### **Essential Roleplay Elements:**
- Individual personalities and work styles
- Realistic team dynamics and conflicts
- Sprint ceremonies with proper documentation
- Illness, stress, and deadline challenges
- Collaborative problem-solving sessions

### **Documentation Standards:**
- `standup-sprintX-dayY.txt` - Daily standup notes
- `retrospective-sprintX.txt` - Sprint retrospectives
- `sprint-review-sprintX.txt` - Sprint reviews
- `team-velocity-tracking.txt` - Team performance metrics

### **Example Team Interaction:**
```
🤧 Sprint 2, Day 2 - Cold Crisis!

Emma (Remote): "David, let's run the HTML debug test directly!"

David: "Yes Emma, let's check Puppeteer settings and increase timeout. 
We might need different network settings!"

Anders (SM): "Team resilience test! We've been hit by the city cold virus."

Lisa: "I can take over Emma's security testing while she recovers."
```

## 🔄 Team Collaboration Patterns

### **Security Triangle**
Security Architect ↔ Tech Lead ↔ DevOps Engineer
- Security reviews and architecture decisions
- Infrastructure hardening and monitoring
- Compliance and audit preparation

### **Quality Assurance Loop**
QA Engineer ↔ Security Architect ↔ Full-Stack Developer
- Security testing and vulnerability validation
- Feature testing and user acceptance
- Performance and load testing

### **Product Development Cycle**
Product Owner ↔ Business Analyst ↔ Scrum Master
- Requirements analysis and user story creation
- Sprint planning and priority management
- Stakeholder communication and feedback

## 📊 Development Workflow

### **Sprint Structure:**
1. **Sprint Planning:** Product Owner + Business Analyst define priorities
2. **Daily Standups:** Scrum Master facilitates team updates
3. **Development:** Specialized agents work on assigned tasks
4. **Testing:** QA Engineer + Security Architect validate deliverables
5. **Review & Retrospective:** Team reflects and improves processes

### **Code Quality Gates:**
1. **Architecture Review:** Tech Lead validates design decisions
2. **Security Scan:** Security Architect runs Semgrep analysis
3. **Feature Testing:** QA Engineer performs Playwright testing
4. **DevOps Review:** DevOps Engineer validates deployment readiness

## 🌟 Key Benefits

### **Realistic Development Simulation**
- Complete Scrum team with individual personalities
- Authentic challenges like illness, deadlines, and technical debt
- Proper sprint ceremonies and documentation

### **Specialized Tool Access**
- Each role has access to relevant MCP tools
- Security-first approach with dedicated scanning
- Modern testing with browser automation
- Advanced code analysis and refactoring

### **Learning and Training**
- Understand team dynamics and collaboration patterns
- Practice agile methodologies with realistic constraints
- Learn tool integration and workflow optimization

## 🔧 Customization

### **Adapting for Your Project:**
1. **Update Agent Names:** Modify `.claude/agents/*.md` files with domain-appropriate names
2. **Adjust Tool Access:** Modify MCP assignments based on available tools
3. **Customize Personalities:** Adapt communication styles and expertise areas
4. **Project-Specific Roles:** Add or modify roles based on project requirements

### **MCP Tool Expansion:**
- Add new MCPs to `configure_mcps.sh`
- Update `CLAUDE.md` tool assignments
- Modify agent files to include new tool access
- Test tool integration with team workflows

## 📝 Best Practices

### **Development Standards:**
- **English Only:** All code, comments, logs, and documentation in English
- **Security First:** Proactive security scanning and threat modeling
- **Test-Driven:** Comprehensive testing with Playwright and Semgrep
- **Documentation:** Maintain realistic sprint documentation

### **Team Management:**
- **Individual Accountability:** Each agent responsible for their domain
- **Cross-Training:** Team members can cover for each other during illness
- **Continuous Improvement:** Regular retrospectives and process optimization
- **Realistic Constraints:** Handle deadlines, technical debt, and team dynamics

## 🤝 Contributing

This is a template project designed to be copied and customized for specific development scenarios. Feel free to:

- Adapt agent personalities for different domains
- Add new MCP tools and update assignments
- Create industry-specific team structures
- Share improvements and best practices

## 📄 License

This project template is provided as-is for educational and development purposes. Customize freely for your specific needs.

---

**Remember:** This is about simulating realistic development teams with individual personalities, challenges, and collaborative problem-solving. The goal is authentic team dynamics, not just task completion.
