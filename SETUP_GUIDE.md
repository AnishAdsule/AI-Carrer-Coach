# 🔧 Complete Setup Guide - AI Career Coach

## Prerequisites

Before starting, make sure you have:
- ✅ Node.js 18+ installed
- ✅ PostgreSQL installed and running
- ✅ Git (optional, for version control)

---

## Step-by-Step Setup

### 1️⃣ Extract & Install Dependencies

```bash
# Extract the project (if you haven't already)
unzip ai-career-coach-enhanced.zip
cd ai-career-coach-enhanced

# Install all dependencies
npm install
```

---

### 2️⃣ Setup Environment Variables

Create a `.env` file in the root directory:

```bash
cp .env.example .env
```

Now edit the `.env` file and add your keys:

#### **A. Database (Required)**

If you have PostgreSQL installed locally:
```env
DATABASE_URL="postgresql://postgres:password@localhost:5432/ai_career_coach"
```

**Or use a free cloud database:**
- [Neon](https://neon.tech/) - Free PostgreSQL
- [Supabase](https://supabase.com/) - Free PostgreSQL
- [Railway](https://railway.app/) - Free tier available

#### **B. Clerk Authentication (Required)**

1. Go to [Clerk Dashboard](https://dashboard.clerk.com/sign-up)
2. Create a new application
3. Go to **API Keys** in the sidebar
4. Copy your keys:

```env
NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY=pk_test_xxxxxxxxxxxxx
CLERK_SECRET_KEY=sk_test_xxxxxxxxxxxxx
```

**Additional Clerk settings:**
```env
NEXT_PUBLIC_CLERK_SIGN_IN_URL=/sign-in
NEXT_PUBLIC_CLERK_SIGN_UP_URL=/sign-up
NEXT_PUBLIC_CLERK_AFTER_SIGN_IN_URL=/onboarding
NEXT_PUBLIC_CLERK_AFTER_SIGN_UP_URL=/onboarding
```

#### **C. Google Gemini AI (Required for Job Analyzer)**

1. Go to [Google AI Studio](https://aistudio.google.com/app/apikey)
2. Click **"Get API Key"**
3. Create a new API key
4. Copy and paste:

```env
GEMINI_API_KEY=AIzaSyXXXXXXXXXXXXXXXXXXXXXXXX
```

**Note:** Gemini API is free with generous limits!

#### **D. Inngest (Optional - for background jobs)**

If you want background jobs for the resume/cover letter generation:

1. Go to [Inngest](https://www.inngest.com/)
2. Sign up for free account
3. Get your keys from the dashboard:

```env
INNGEST_EVENT_KEY=your_event_key
INNGEST_SIGNING_KEY=your_signing_key
```

**Or skip it:** Comment out Inngest-related code if you don't need it.

---

### 3️⃣ Setup Database

```bash
# Generate Prisma Client
npx prisma generate

# Push schema to database (creates tables)
npx prisma db push

# (Optional) Open Prisma Studio to view database
npx prisma studio
```

**Troubleshooting:**
- If you get a connection error, check your `DATABASE_URL`
- Make sure PostgreSQL is running
- Test connection: `psql -h localhost -U postgres`

---

### 4️⃣ Run Development Server

```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) in your browser! 🎉

---

## 🎯 Quick Test Checklist

After setup, verify everything works:

### ✅ **Authentication**
1. Go to `/sign-up`
2. Create a test account
3. Should redirect to `/onboarding`

### ✅ **Onboarding**
1. Fill out the onboarding form
2. Select industry and skills
3. Submit and redirect to `/dashboard`

### ✅ **Dashboard**
1. Should see career insights
2. View charts and statistics
3. Navigate through tabs

### ✅ **Application Tracker** (Phase 1)
1. Go to `/applications`
2. Click "Add Application"
3. Drag cards between columns
4. View analytics

### ✅ **Job Analyzer** (Phase 1)
1. Go to `/job-analyzer`
2. Paste a job description
3. Click "Analyze with AI"
4. View match score and insights

---

## 🐛 Common Issues & Solutions

### Issue 1: "Missing publishableKey" Error

**Solution:**
```bash
# Make sure .env file exists
ls -la .env

# Check if keys are set
cat .env | grep CLERK

# Restart dev server after adding keys
npm run dev
```

### Issue 2: Database Connection Error

**Solution:**
```bash
# Check PostgreSQL is running
# On Mac:
brew services list

# On Ubuntu:
sudo systemctl status postgresql

# Test connection
psql -h localhost -U postgres -d ai_career_coach
```

### Issue 3: Prisma Client not generated

**Solution:**
```bash
# Delete generated files
rm -rf node_modules/.prisma

# Regenerate
npx prisma generate

# Restart dev server
npm run dev
```

### Issue 4: "Module not found" errors

**Solution:**
```bash
# Delete node_modules and reinstall
rm -rf node_modules package-lock.json
npm install
```

### Issue 5: AI Analyzer not working

**Solution:**
- Check `GEMINI_API_KEY` is set in `.env`
- Verify API key is valid at [Google AI Studio](https://aistudio.google.com/)
- Check browser console for errors
- Make sure you have internet connection

### Issue 6: Styles not loading

**Solution:**
```bash
# Rebuild Tailwind
npm run dev

# Clear Next.js cache
rm -rf .next
npm run dev
```

---

## 📁 Project Structure Reference

```
ai-career-coach-enhanced/
├── .env                    # ⚠️ CREATE THIS FILE (not in git)
├── .env.example           # Template for environment variables
├── app/
│   ├── (auth)/           # Sign in/up pages
│   ├── (main)/           # Main app pages
│   │   ├── applications/ # ⭐ Phase 1: Application Tracker
│   │   ├── job-analyzer/ # ⭐ Phase 1: Job Analyzer
│   │   ├── dashboard/    # Career insights
│   │   ├── resume/       # Resume builder
│   │   ├── ai-cover-letter/ # Cover letter generator
│   │   └── interview/    # Mock interviews
│   └── api/              # API routes
├── actions/              # Server actions
│   ├── application.js    # ⭐ Phase 1: Application CRUD
│   └── job-analyzer.js   # ⭐ Phase 1: AI analysis
├── components/
│   ├── application-board.jsx # ⭐ Phase 1: Kanban board
│   └── ui/               # Reusable components
├── prisma/
│   └── schema.prisma     # Database schema
├── public/               # Static assets
└── package.json          # Dependencies
```

---

## 🔑 Where to Get API Keys

### 1. Clerk (Authentication) - FREE
- **Website:** https://clerk.com
- **Sign up:** https://dashboard.clerk.com/sign-up
- **Get keys:** Dashboard → API Keys
- **Free tier:** 10,000 monthly active users

### 2. Google Gemini (AI) - FREE
- **Website:** https://ai.google.dev/
- **Get key:** https://aistudio.google.com/app/apikey
- **Free tier:** 60 requests per minute
- **No credit card required!**

### 3. Database Options - FREE TIERS

**Option A: Neon (Recommended)**
- **Website:** https://neon.tech
- **Free tier:** 10 GB storage
- **Setup:** 2 minutes
- **Connection:** Copy connection string

**Option B: Supabase**
- **Website:** https://supabase.com
- **Free tier:** 500 MB database
- **Includes:** Auth, Storage, Real-time

**Option C: Railway**
- **Website:** https://railway.app
- **Free tier:** $5 credit/month
- **One-click:** PostgreSQL setup

### 4. Inngest (Optional) - FREE
- **Website:** https://inngest.com
- **Free tier:** 1M function runs/month
- **Not required:** Can skip for now

---

## 🚀 Production Deployment

### Deploy to Vercel (Recommended)

1. **Push to GitHub:**
```bash
git init
git add .
git commit -m "Initial commit"
git remote add origin your-repo-url
git push -u origin main
```

2. **Deploy to Vercel:**
- Go to [Vercel](https://vercel.com)
- Import your GitHub repo
- Add environment variables (same as `.env`)
- Deploy!

3. **Add Production Database:**
- Use Neon, Supabase, or Railway
- Update `DATABASE_URL` in Vercel

### Environment Variables on Vercel

In Vercel dashboard, add all these:
```
DATABASE_URL
NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY
CLERK_SECRET_KEY
GEMINI_API_KEY
INNGEST_EVENT_KEY (optional)
INNGEST_SIGNING_KEY (optional)
```

---

## 📚 Additional Resources

### Documentation
- **Next.js:** https://nextjs.org/docs
- **Prisma:** https://www.prisma.io/docs
- **Clerk:** https://clerk.com/docs
- **Gemini API:** https://ai.google.dev/docs
- **Tailwind CSS:** https://tailwindcss.com/docs

### Video Tutorials
- Next.js 15 App Router: [YouTube](https://www.youtube.com/results?search_query=nextjs+15+app+router)
- Prisma Setup: [YouTube](https://www.youtube.com/results?search_query=prisma+postgresql)
- Clerk Authentication: [YouTube](https://www.youtube.com/results?search_query=clerk+nextjs)

### Community
- Next.js Discord: https://discord.gg/nextjs
- Prisma Slack: https://slack.prisma.io/

---

## 💡 Pro Tips

1. **Use PostgreSQL GUI:**
   - [TablePlus](https://tableplus.com/) - Beautiful database client
   - [DBeaver](https://dbeaver.io/) - Free and open source
   - [Prisma Studio](https://www.prisma.io/studio) - Built-in (run `npx prisma studio`)

2. **Debug Mode:**
   ```bash
   # See SQL queries
   DATABASE_URL="...?sslmode=disable" npm run dev
   
   # Enable Prisma logging
   # Add to prisma/schema.prisma:
   datasource db {
     provider = "postgresql"
     url      = env("DATABASE_URL")
   }
   ```

3. **Hot Reload Issues:**
   ```bash
   # Kill port 3000
   lsof -ti:3000 | xargs kill -9
   
   # Restart
   npm run dev
   ```

4. **Database Reset:**
   ```bash
   # Reset database (deletes all data!)
   npx prisma db push --force-reset
   npx prisma generate
   ```

---

## ✅ Verification Script

Create `verify-setup.js` in root:

```javascript
// verify-setup.js
const env = process.env;

console.log('🔍 Checking environment variables...\n');

const required = {
  'DATABASE_URL': env.DATABASE_URL,
  'NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY': env.NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY,
  'CLERK_SECRET_KEY': env.CLERK_SECRET_KEY,
  'GEMINI_API_KEY': env.GEMINI_API_KEY,
};

let allGood = true;

for (const [key, value] of Object.entries(required)) {
  if (value && value !== 'your_key_here') {
    console.log(`✅ ${key}: Set`);
  } else {
    console.log(`❌ ${key}: Missing or placeholder`);
    allGood = false;
  }
}

console.log('\n' + (allGood ? '🎉 All required variables set!' : '⚠️ Some variables missing'));
```

Run it:
```bash
node verify-setup.js
```

---

## 🆘 Need Help?

1. **Check the docs:** See `README.md`, `PHASE_1_COMPLETE.md`
2. **Common issues:** See troubleshooting section above
3. **Still stuck?** Check console for errors

---

## 🎉 You're All Set!

Once setup is complete:
1. ✅ Authentication working
2. ✅ Database connected
3. ✅ AI features functional
4. ✅ All pages loading

**Start using:**
- 📊 Application Tracker at `/applications`
- 🤖 Job Analyzer at `/job-analyzer`
- 📄 Resume Builder at `/resume`
- 💼 Cover Letter at `/ai-cover-letter`
- 🎤 Mock Interviews at `/interview`

**Enjoy your AI-powered career coach!** 🚀
