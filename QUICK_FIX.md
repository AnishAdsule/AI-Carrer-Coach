# ⚡ Quick Fix for Clerk Error

## Error Message:
```
@clerk/nextjs: Missing publishableKey
```

## ✅ Solution (2 minutes):

### Step 1: Create `.env` file
```bash
cp .env.example .env
```

### Step 2: Get Clerk API Keys

1. Go to: https://dashboard.clerk.com/sign-up
2. Create a free account (no credit card required)
3. Create a new application
4. Go to **API Keys** in sidebar
5. Copy your keys

### Step 3: Add Keys to `.env`

Open `.env` file and add:

```env
NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY=pk_test_YOUR_KEY_HERE
CLERK_SECRET_KEY=sk_test_YOUR_KEY_HERE
```

### Step 4: Setup Database

Add your PostgreSQL connection string to `.env`:

```env
DATABASE_URL="postgresql://username:password@localhost:5432/ai_career_coach"
```

**Don't have PostgreSQL?** Use a free cloud database:
- Neon: https://neon.tech (recommended)
- Supabase: https://supabase.com
- Railway: https://railway.app

### Step 5: Get Gemini API Key (for AI features)

1. Go to: https://aistudio.google.com/app/apikey
2. Click "Get API Key"
3. Copy and add to `.env`:

```env
GEMINI_API_KEY=YOUR_GEMINI_KEY_HERE
```

### Step 6: Install & Run

```bash
# Install dependencies
npm install

# Setup database
npx prisma generate
npx prisma db push

# Start dev server
npm run dev
```

---

## 🎯 Complete .env Template

Your `.env` should look like this:

```env
# Database (Required)
DATABASE_URL="postgresql://user:pass@localhost:5432/dbname"

# Clerk Authentication (Required)
NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY=pk_test_xxxxxxxxxxxxx
CLERK_SECRET_KEY=sk_test_xxxxxxxxxxxxx
NEXT_PUBLIC_CLERK_SIGN_IN_URL=/sign-in
NEXT_PUBLIC_CLERK_SIGN_UP_URL=/sign-up
NEXT_PUBLIC_CLERK_AFTER_SIGN_IN_URL=/onboarding
NEXT_PUBLIC_CLERK_AFTER_SIGN_UP_URL=/onboarding

# Google Gemini AI (Required)
GEMINI_API_KEY=AIzaSyXXXXXXXXXXXXXXXXXXXXXX

# Inngest (Optional - can skip)
# INNGEST_EVENT_KEY=your_key
# INNGEST_SIGNING_KEY=your_key
```

---

## ✅ Verify Setup

After adding all keys, restart the dev server:

```bash
# Stop server (Ctrl+C)
# Start again
npm run dev
```

Go to http://localhost:3000 - you should see the landing page! 🎉

---

## 📚 More Help

- **Full Setup Guide:** See `SETUP_GUIDE.md`
- **Troubleshooting:** See `SETUP_GUIDE.md` → Common Issues
- **Feature Guide:** See `PHASE_1_COMPLETE.md`

---

## 🆓 All Services are FREE!

- ✅ Clerk: 10,000 users/month
- ✅ Google Gemini: 60 requests/minute
- ✅ Neon/Supabase: Free PostgreSQL
- ✅ No credit card required!

---

**That's it! Your project should now work without the Clerk error.** 🚀
