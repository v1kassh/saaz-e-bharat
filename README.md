# Saaz-e-Bharat Enterprise Event Platform

A secure, scalable, culturally immersive MERN full-stack website for managing Saaz-e-Bharat registrations, QR-based entry, and admin-controlled content.

## Architecture
- **Frontend**: Next.js (React) + Framer Motion
- **Backend**: Node.js + Express
- **Database**: MongoDB
- **Security**: JWT + TOTP (Authenticator App)
- **Encryption**: AES-256 for QR payloads

## Setup Instructions

### 1. Backend Setup
1. `cd backend`
2. `npm install`
3. Create `.env` (template provided in `backend/.env`)
4. Initialize Super Admin: `node scripts/initAdmin.js`
5. Start server: `npm start` (or `node server.js`)

### 2. Frontend Setup
1. `cd frontend`
2. `npm install`
3. Create `.env.local` with `NEXT_PUBLIC_BACKEND_URL=http://localhost:5000/api`
4. Start development server: `npm run dev`

## Key Features
- **Cultural UI**: Premium design system inspired by Indian heritage with Framer Motion animations.
- **Enterprise CMS**: Live content management for hero sections, mission statements, and event details.
- **Media Management**: Dynamic background image uploads directly from the dashboard.
- **Security Audit Logs**: Comprehensive tracking of all administrative actions (Logins, Approvals, Rejections, Content Updates).
- **Batch Processing**: High-efficiency bulk registration management (Approve/Reject Selected).
- **Secure Ticketing**: AES-256 encrypted QR payloads prevents unauthorized entry.
- **Access Control Scanner**: Professional check-in scanner with audio feedback (Web Audio API) and real-time participant profiling.
- **OTP Security**: Mandatory TOTP (Google Authenticator) for every admin login.
- **Verification System**: Mandatory document uploads for specific registration categories.

## Deployment
The project is Docker-ready. Use the provided Dockerfile and docker-compose configurations for production-grade scaling.
