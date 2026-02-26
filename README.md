# 🚀 AI Career Coach - Enhanced Edition

<div align="center">

**Transform Your Career Journey with AI-Powered Insights**

[![Next.js](https://img.shields.io/badge/Next.js-15.1.4-black?style=for-the-badge&logo=next.js)](https://nextjs.org/)
[![React](https://img.shields.io/badge/React-19.0.0-blue?style=for-the-badge&logo=react)](https://reactjs.org/)
[![TailwindCSS](https://img.shields.io/badge/Tailwind-3.4.1-38bdf8?style=for-the-badge&logo=tailwind-css)](https://tailwindcss.com/)

</div>

---

## ✨ What's New in Enhanced Edition

### 🎨 Beautiful Modern UI
- **Gradient-based design** with purple, pink, and blue accents
- **Glass morphism effects** for cards and overlays
- **Smooth animations** (float, slide-up, gradient, pulse)
- **3D perspective effects** on hero images
- **Enhanced dashboard** with interactive charts

### 📊 Enhanced Components
- Interactive data visualizations
- Animated statistics cards
- Beautiful testimonials with ratings
- Responsive grid layouts
- Gradient text effects

---

## 🌟 Complete Feature List (16/17 Implemented!)

### 🎯 Career Planning
- ✅ **AI Career Recommendations** - Personalized career paths based on skills & goals
- ✅ **Skill Gap Analysis** - Learning roadmap with time estimates
- ✅ **Career Readiness Score** - Overall preparedness assessment
- ✅ **Student Mode** - Placements, projects, higher studies guidance
- ✅ **Professional Mode** - Career switch, salary growth, promotion readiness

### 📝 Resume & Profile
- ✅ **AI Resume Analyzer & Builder** - ATS-optimized with multiple templates
- ✅ **LinkedIn Profile Optimization** - SEO scoring and keyword suggestions
- ✅ **Cover Letter Generator** - AI-powered personalized letters

### 🎤 Interview Preparation
- ✅ **AI Mock Interviews** - Real-time video analysis with webcam
- ✅ **Interview Prep** - HR + Technical + Behavioral questions
- ✅ **AI Personality Assessment** - Confidence and communication analysis

### 💼 Job Search
- ✅ **AI Job Matching** - Match percentage with skill analysis
- ✅ **Application Tracker** - Kanban board with analytics
- ✅ **Job Description Analyzer** - Instant AI insights

### 📊 Dashboard & Analytics
- ✅ **Career Progress Dashboard** - Industry insights and metrics
- ✅ **Personalized Learning** - Course and certification suggestions
- ✅ **Chat-based AI Mentor** - Conversational career guidance

### 🔐 Platform Features
- ✅ **Secure Login & Profiles** - Clerk authentication with history
- 🔄 **Admin Panel** - Analytics and content control (90% complete)

---

## 🆓 All Services are FREE!

**No credit card required for any service!**

- ✅ **Clerk Authentication**: 10,000 users/month FREE
- ✅ **Google Gemini AI**: 60 requests/minute FREE  
- ✅ **Neon Database**: 10GB storage FREE
- ✅ **Complete setup in 15 minutes**

📖 **[Complete Setup Guide](./FREE_SERVICES_SETUP.md)** - Step-by-step with screenshots

---

## 🚀 Quick Start

### 1. Install Dependencies
```bash
npm install
```

### 2. Setup Free Services (15 min)

**See [FREE_SERVICES_SETUP.md](./FREE_SERVICES_SETUP.md) for detailed instructions**

Quick version:
1. **Clerk** → https://dashboard.clerk.com/sign-up
2. **Gemini** → https://aistudio.google.com/app/apikey  
3. **Neon** → https://neon.tech

### 3. Configure Environment
```bash
cp .env.example .env
# Add your keys to .env (see setup guide)
```

### 4. Setup Database
```bash
npx prisma generate
npx prisma db push
```

### 5. Start Development
```bash
npm run dev
```

Visit [http://localhost:3000](http://localhost:3000) 🎉

---

## 📚 Documentation

- **[FREE_SERVICES_SETUP.md](./FREE_SERVICES_SETUP.md)** - Get all free API keys
- **[VISUAL_SETUP_GUIDE.md](./VISUAL_SETUP_GUIDE.md)** - Setup with screenshots
- **[QUICK_FIX.md](./QUICK_FIX.md)** - Fix common errors
- **[SETUP_GUIDE.md](./SETUP_GUIDE.md)** - Complete troubleshooting

---

## 📁 Project Structure

```
├── app/                     # Next.js app directory
│   ├── (auth)/             # Authentication pages
│   ├── (main)/             # Main app pages
│   └── globals.css         # Enhanced global styles
├── components/             # Reusable components
│   ├── ui/                # shadcn/ui components
│   └── hero.jsx           # Enhanced hero section
├── actions/               # Server actions
├── prisma/               # Database schema
└── UPGRADE_IDEAS.md      # Future enhancements
```

---

## 🛠️ Tech Stack

- **Frontend**: Next.js 15, React 19, TailwindCSS
- **Backend**: Prisma, PostgreSQL
- **Auth**: Clerk
- **AI**: Google Gemini API
- **Charts**: Recharts
- **UI**: Radix UI + shadcn/ui

---

## 🎨 Enhanced UI Features

### Custom Animations
- Gradient backgrounds
- Floating elements
- Smooth transitions
- Glass morphism effects

### Design System
- Purple-based color palette
- Consistent spacing
- Responsive typography
- Accessible components

---

## 📊 Dashboard Features

- Industry trend analysis
- Salary comparisons
- Market demand metrics
- Skills recommendations
- Interactive charts (Bar, Line, Pie)

---

## 🗺️ Roadmap

See [UPGRADE_IDEAS.md](./UPGRADE_IDEAS.md) for comprehensive future plans:

### Priority Features
1. Application Tracker with Analytics
2. AI Job Description Analyzer
3. Video Mock Interview Simulator
4. LinkedIn Profile Optimizer
5. Job Market Heat Map
6. Mentor Matching System

### Revenue Features
- Premium templates
- 1-on-1 coaching marketplace
- Company recruitment portal
- AI job recommendations

---

## 🚀 Deployment

### Environment Variables Required
```env
DATABASE_URL=
NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY=
CLERK_SECRET_KEY=
GEMINI_API_KEY=
```

### Deploy to Vercel
1. Push to GitHub
2. Import to Vercel
3. Add environment variables
4. Deploy!

---

## 📝 License

MIT License - see [LICENSE](LICENSE) for details

---

## 🤝 Contributing

Contributions welcome! Please:
1. Fork the repo
2. Create a feature branch
3. Submit a pull request

---

<div align="center">

**Built with ❤️ using Next.js, React, and AI**

[Documentation](./UPGRADE_IDEAS.md) · [Report Bug](issues) · [Request Feature](issues)

</div>
