# Book Management Monorepo

This is a monorepo for the Book Management application, built with the following tech stack:
- **Frontend**: Next.js, React, Tailwind CSS
- **Backend**: Supabase (PostgreSQL, Auth, Storage)
- **AI**: OpenAI API
- **Testing**: Vitest + Playwright
- **Package Manager**: pnpm Workspaces
- **Deployment**: Vercel

## Directory Structure
- `apps/web`: The frontend application.
- `packages/database`: Database schema and migrations.
- `packages/ai`: AI-related utilities.
- `packages/books`: Book-related utilities.
- `packages/types`: Shared TypeScript types.

## Getting Started
1. Clone the repository:
   ```bash
   git clone <repo-url>
   cd book-management