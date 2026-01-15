# ASSETS UGM - Association Of Software Engineering Students Website

[![Laravel 11](https://img.shields.io/badge/Laravel-11-FF2D20?style=for-the-badge&logo=laravel&logoColor=white)](https://laravel.com)
[![TailwindCSS](https://img.shields.io/badge/TailwindCSS-3.4-38B2AC?style=for-the-badge&logo=tailwind-css&logoColor=white)](https://tailwindcss.com)
[![PHP](https://img.shields.io/badge/PHP-8.2-777BB4?style=for-the-badge&logo=php&logoColor=white)](https://php.net)

The official web platform for the **Association Of Software Engineering Students (ASSETS) Sekolah Vokasi UGM**. This project serves as a central hub for student collaboration, project coordination, and organizational information management.

## 🚀 Overview

Built with modern web standards, the ASSETS UGM Platform is a full-stack solution designed to streamline the organization's digital presence. It manages everything from internal project roadmaps to public-facing information and student engagement tools.

## ✨ Key Features

- **Integrated Voting System (Pemira)**: A secure election management module with unique voter tokens and real-time result tracking.
- **Organizational Structure Management**: Dynamic management of Cabinets, Divisions, and Staff members.
- **Aspiration & Feedback Portal**: A dedicated system for students to submit feedback and monitor organizational responses.
- **Dynamic Content Management**: Efficiently manage news, articles, and organizational project roadmaps (Proker).
- **Data Export/Import**: Built-in support for bulk data operations using Excel integration.
- **Interactive UI & Themes**: Custom-themed design system using `Flowbite` and `Preline`, featuring a dynamic color palette management system.

## 🛠️ Tech Stack

### Backend
- **Framework**: Laravel 11 (PHP 8.2+)
- **Database**: MySQL / PostgreSQL 
- **Utilities**: Laravel Vite Plugin, Laravel Tinker, Maatwebsite Excel

### Frontend
- **Styling**: TailwindCSS 3.4, Flowbite, Preline UI, Bootstrap 5.3
- **Logic & Interactives**: Axios, Vite, Swiper (Carousels), AOS (Animations)
- **Tooling**: PostCSS, Autoprefixer

## ⚙️ Installation & Setup

1. **Clone the repository**
   ```bash
   git clone https://github.com/arsyadkamaluddin/assetsugm.id-v1.git
   cd assetsugm.id-v1
   ```

2. **Install Dependencies**
   ```bash
   composer install
   npm install
   ```

3. **Environment Setup**
   ```bash
   cp .env.example .env
   php artisan key:generate
   ```
   *Note: Update your `.env` with your database credentials.*

4. **Database Migration**
   ```bash
   php artisan migrate --seed
   ```

5. **Run Development Server**
   ```bash
   npm run dev
   # In a separate terminal
   php artisan serve
   ```

---

Developed with ❤️ by the ASSETS UGM Team.
