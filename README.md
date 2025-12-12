# Student Ranking Appraisal System

A modern web application with role-based authentication and certificate management, featuring an attractive React frontend and Spring Boot backend.
# Certificate Validation System

A modern web application with role-based authentication and certificate management, featuring an attractive React frontend and Spring Boot backend.

## Features

- **Role-based Authentication**: Admin, Teacher, and Student roles
- **Modern UI Design**: Beautiful gradient backgrounds and certificate-themed design
- **Responsive Design**: Works on desktop and mobile devices
- **JWT Authentication**: Secure token-based authentication
- **User Management**: Admins can create new users
- **Demo Mode**: Easy testing with demo credentials

## Technology Stack

### Frontend
- React 19.2.0
- Modern CSS with gradients and animations
- Responsive design

### Backend
- Spring Boot 3.2.0
- Spring Security
- Spring Data JPA
- H2 Database (in-memory)
- JWT Authentication

## Quick Start

### Prerequisites
- Node.js (v16 or higher)
- Java 17 or higher
- Maven 3.6 or higher

### Running the Application

#### 1. Start the Backend (Spring Boot)

```bash
cd backend
mvn spring-boot:run
```

The backend will start on `http://localhost:8081`

#### 2. Start the Frontend (React)

```bash
npm start
```

The frontend will start on `http://localhost:3000`

## Demo Credentials

For testing purposes, you can use any of these credentials:

| Role | Username | Password |
|------|----------|----------|
| Admin | admin | admin123 |
| Teacher | teacher | teacher123 |
| Student | student | student123 |
| Any | any | any |

## API Endpoints

### Authentication
- `POST /api/auth/login` - User login

### User Management
- `POST /api/users` - Create new user (Admin only)

## Project Structure

```
├── src/                    # React frontend
│   ├── App.js             # Main application component
│   ├── App.css            # Styling
│   └── ...
├── backend/               # Spring Boot backend
│   ├── src/main/java/     # Java source code
│   ├── src/main/resources/ # Configuration files
│   └── pom.xml           # Maven dependencies
└── README.md             # This file
```

## Features by Role

### Admin
- Create new users (Teachers and Students)
- Manage user accounts
- Full system access

### Teacher
- Upload certificates for students
- View student records
- Manage certificate data

### Student
- View personal certificates
- Download certificate reports
- Track achievements

## Development

### Frontend Development
The React app uses modern CSS with:
- Gradient backgrounds
- Smooth animations
- Responsive grid layouts
- Certificate-themed design elements

### Backend Development
The Spring Boot backend provides:
- RESTful API endpoints
- JWT-based authentication
- Role-based authorization
- H2 in-memory database for development

## Database

The application uses H2 in-memory database for development. You can access the H2 console at:
`http://localhost:8081/h2-console`


## Security

- JWT tokens for authentication
- Role-based access control
- Password encoding (BCrypt)
- CORS configuration for frontend integration

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

This project is for educational purposes.