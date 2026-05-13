<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Login - Inventaris Gudang</title>
    <link href="{{ asset('dist/css/tabler.min.css') }}" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #206bc4, #51cbce);
            font-family: 'Inter', sans-serif;
        }

        .login-card {
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            border-radius: 1rem;
            transition: transform 0.3s ease;
        }

        .login-card:hover {
            transform: translateY(-5px);
        }

        .form-control::placeholder {
            color: #adb5bd;
        }

        .form-icon {
            position: absolute;
            top: 50%;
            left: 0.75rem;
            transform: translateY(-50%);
            color: #6c757d;
        }

        .input-with-icon {
            position: relative;
        }

        .input-with-icon input {
            padding-left: 2.5rem;
        }
    </style>
</head>

<body class="d-flex justify-content-center align-items-center min-vh-100">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-5 col-lg-4">
                <form class="card login-card p-4 border-0 bg-white" action="{{ route('login') }}" method="POST">
                    @csrf
                    <div class="text-center mb-4">
                        <h2 class="fw-bold text-primary">Login</h2>
                        <p class="text-muted small">Inventaris Gudang</p>
                    </div>
                    <div class="mb-3 input-with-icon">
                        <span class="form-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-mail"
                                width="20" height="20" viewBox="0 0 24 24" stroke-width="1.5" stroke="#206bc4"
                                fill="none" stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                <path d="M3 7l9 6l9 -6" />
                                <path d="M21 7v10a2 2 0 0 1 -2 2H5a2 2 0 0 1 -2 -2V7" />
                            </svg>
                        </span>
                        <input type="email" name="email" class="form-control @error('email') is-invalid @enderror"
                            placeholder="Masukkan email" value="{{ old('email') }}">
                        @error('email')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="mb-3 input-with-icon">
                        <span class="form-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-lock"
                                width="20" height="20" viewBox="0 0 24 24" stroke-width="1.5" stroke="#206bc4"
                                fill="none" stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                <rect x="5" y="11" width="14" height="10" rx="2" />
                                <path d="M8 11v-4a4 4 0 1 1 8 0v4" />
                            </svg>
                        </span>
                        <input type="password" name="password" class="form-control @error('password') is-invalid @enderror"
                            placeholder="Masukkan kata sandi">
                        @error('password')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="form-footer mt-4">
                        <button type="submit" class="btn btn-primary w-100">Masuk</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Tabler JS (optional) -->
    <script src="{{ asset('dist/js/tabler.min.js') }}"></script>
</body>

</html>
