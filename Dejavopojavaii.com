<!DOCTYPE html>
<html lang="fa" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dejavu - روش‌های حسابداری</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        body {
            box-sizing: border-box;
            font-family: 'Tahoma', 'Arial', sans-serif;
        }
        
        .gradient-bg {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        }
        
        .card-hover {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        
        .card-hover:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 40px rgba(0,0,0,0.1);
        }
        
        .demo-badge {
            position: absolute;
            top: 10px;
            right: 10px;
            background: #ff6b6b;
            color: white;
            padding: 4px 8px;
            border-radius: 12px;
            font-size: 12px;
            font-weight: bold;
        }
    </style>
</head>
<body class="bg-gray-50">
    <!-- Header -->
    <header class="gradient-bg text-white shadow-lg">
        <div class="container mx-auto px-6 py-4">
            <div class="flex justify-between items-center">
                <div class="flex items-center space-x-4 space-x-reverse">
                    <h1 class="text-3xl font-bold">Dejavu</h1>
                    <span class="text-lg opacity-90">روش‌های حسابداری</span>
                </div>
                <nav class="hidden md:flex space-x-6 space-x-reverse">
                    <a href="#home" class="hover:text-blue-200 transition-colors">خانه</a>
                    <a href="#methods" class="hover:text-blue-200 transition-colors">روش‌های حسابداری</a>
                    <a href="#jobs" class="hover:text-blue-200 transition-colors">فرصت‌های شغلی</a>
                    <a href="#ads" class="hover:text-blue-200 transition-colors">تبلیغات</a>
                    <button onclick="showLogin()" class="bg-white text-blue-600 px-4 py-2 rounded-lg hover:bg-blue-50 transition-colors">ورود</button>
                </nav>
            </div>
        </div>
    </header>

    <!-- Hero Section -->
    <section id="home" class="gradient-bg text-white py-20">
        <div class="container mx-auto px-6 text-center">
            <h2 class="text-5xl font-bold mb-6">راه‌های کسب درآمد از حسابداری</h2>
            <p class="text-xl mb-8 opacity-90">بهترین روش‌های حسابداری را یاد بگیرید و درآمد کسب کنید</p>
            <button onclick="showMethods()" class="bg-white text-blue-600 px-8 py-3 rounded-lg text-lg font-semibold hover:bg-blue-50 transition-colors">شروع کنید</button>
        </div>
    </section>

    <!-- Accounting Methods Section -->
    <section id="methods" class="py-16">
        <div class="container mx-auto px-6">
            <h3 class="text-4xl font-bold text-center mb-12 text-gray-800">روش‌های حسابداری</h3>
            <div class="grid md:grid-cols-3 gap-8">
                <div class="bg-white rounded-xl shadow-lg p-6 card-hover">
                    <div class="text-4xl mb-4">📊</div>
                    <h4 class="text-xl font-bold mb-3 text-gray-800">حسابداری مالی</h4>
                    <p class="text-gray-600 mb-4">یادگیری اصول حسابداری مالی و تهیه صورت‌های مالی</p>
                    <div class="text-green-600 font-bold mb-2">درآمد: ۵-۱۵ میلیون تومان</div>
                    <button class="w-full bg-blue-600 text-white py-2 rounded-lg hover:bg-blue-700 transition-colors">مشاهده جزئیات</button>
                </div>
                
                <div class="bg-white rounded-xl shadow-lg p-6 card-hover">
                    <div class="text-4xl mb-4">💼</div>
                    <h4 class="text-xl font-bold mb-3 text-gray-800">حسابداری مدیریت</h4>
                    <p class="text-gray-600 mb-4">تحلیل هزینه‌ها و کمک به تصمیم‌گیری مدیریت</p>
                    <div class="text-green-600 font-bold mb-2">درآمد: ۸-۲۰ میلیون تومان</div>
                    <button class="w-full bg-blue-600 text-white py-2 rounded-lg hover:bg-blue-700 transition-colors">مشاهده جزئیات</button>
                </div>
                
                <div class="bg-white rounded-xl shadow-lg p-6 card-hover">
                    <div class="text-4xl mb-4">🏛️</div>
                    <h4 class="text-xl font-bold mb-3 text-gray-800">حسابرسی</h4>
                    <p class="text-gray-600 mb-4">بررسی و تأیید صحت صورت‌های مالی شرکت‌ها</p>
                    <div class="text-green-600 font-bold mb-2">درآمد: ۱۰-۳۰ میلیون تومان</div>
                    <button class="w-full bg-blue-600 text-white py-2 rounded-lg hover:bg-blue-700 transition-colors">مشاهده جزئیات</button>
                </div>
            </div>
        </div>
    </section>

    <!-- Jobs Section -->
    <section id="jobs" class="py-16 bg-gray-100">
        <div class="container mx-auto px-6">
            <h3 class="text-4xl font-bold text-center mb-12 text-gray-800">فرصت‌های شغلی</h3>
            <div class="grid md:grid-cols-2 gap-6">
                <div class="bg-white rounded-xl shadow-lg p-6">
                    <h4 class="text-xl font-bold mb-2 text-gray-800">حسابدار ارشد</h4>
                    <p class="text-gray-600 mb-2">شرکت تجاری آریا</p>
                    <p class="text-green-600 font-bold mb-3">حقوق: ۱۲ میلیون تومان</p>
                    <p class="text-gray-700 mb-4">مسئولیت تهیه صورت‌های مالی و مدیریت حسابداری شرکت</p>
                    <button class="bg-blue-600 text-white px-4 py-2 rounded-lg hover:bg-blue-700 transition-colors">درخواست</button>
                </div>
                
                <div class="bg-white rounded-xl shadow-lg p-6">
                    <h4 class="text-xl font-bold mb-2 text-gray-800">حسابرس داخلی</h4>
                    <p class="text-gray-600 mb-2">بانک ملی ایران</p>
                    <p class="text-green-600 font-bold mb-3">حقوق: ۱۸ میلیون تومان</p>
                    <p class="text-gray-700 mb-4">بررسی فرآیندهای مالی و ارائه گزارش‌های حسابرسی</p>
                    <button class="bg-blue-600 text-white px-4 py-2 rounded-lg hover:bg-blue-700 transition-colors">درخواست</button>
                </div>
            </div>
            
            <div class="text-center mt-8">
                <button onclick="showJobForm()" class="bg-green-600 text-white px-8 py-3 rounded-lg text-lg font-semibold hover:bg-green-700 transition-colors">درخواست شغل جدید</button>
            </div>
        </div>
    </section>

    <!-- Ads Section -->
    <section id="ads" class="py-16">
        <div class="container mx-auto px-6">
            <h3 class="text-4xl font-bold text-center mb-12 text-gray-800">تبلیغات</h3>
            <div class="grid md:grid-cols-3 gap-6">
                <div class="bg-gradient-to-r from-purple-500 to-pink-500 text-white rounded-xl p-6 text-center">
                    <h4 class="text-xl font-bold mb-2">نرم‌افزار حسابداری</h4>
                    <p class="mb-4">بهترین نرم‌افزار حسابداری ایران</p>
                    <button class="bg-white text-purple-600 px-4 py-2 rounded-lg hover:bg-gray-100 transition-colors">مشاهده</button>
                </div>
                
                <div class="bg-gradient-to-r from-blue-500 to-teal-500 text-white rounded-xl p-6 text-center">
                    <h4 class="text-xl font-bold mb-2">دوره آموزشی</h4>
                    <p class="mb-4">دوره جامع حسابداری مالی</p>
                    <button class="bg-white text-blue-600 px-4 py-2 rounded-lg hover:bg-gray-100 transition-colors">ثبت نام</button>
                </div>
                
                <div class="bg-gradient-to-r from-green-500 to-blue-500 text-white rounded-xl p-6 text-center">
                    <h4 class="text-xl font-bold mb-2">مشاوره مالی</h4>
                    <p class="mb-4">مشاوره تخصصی مالی و مالیاتی</p>
                    <button class="bg-white text-green-600 px-4 py-2 rounded-lg hover:bg-gray-100 transition-colors">تماس</button>
                </div>
            </div>
            
            <div class="text-center mt-8">
                <button onclick="showAdForm()" class="bg-orange-600 text-white px-8 py-3 rounded-lg text-lg font-semibold hover:bg-orange-700 transition-colors">درج تبلیغ</button>
            </div>
        </div>
    </section>

    <!-- Login Modal -->
    <div id="loginModal" class="fixed inset-0 bg-black bg-opacity-50 hidden items-center justify-center z-50">
        <div class="bg-white rounded-xl p-8 max-w-md w-full mx-4 relative">
            <div class="demo-badge">نمونه</div>
            <button onclick="hideLogin()" class="absolute top-4 left-4 text-gray-500 hover:text-gray-700">✕</button>
            <h3 class="text-2xl font-bold mb-6 text-center text-gray-800">ورود به سیستم</h3>
            
            <form onsubmit="handleLogin(event)">
                <div class="mb-4">
                    <label class="block text-gray-700 mb-2">ایمیل:</label>
                    <input type="email" class="w-full border border-gray-300 rounded-lg px-4 py-2 focus:outline-none focus:border-blue-500" required>
                </div>
                
                <div class="mb-4">
                    <label class="block text-gray-700 mb-2">رمز عبور:</label>
                    <input type="password" class="w-full border border-gray-300 rounded-lg px-4 py-2 focus:outline-none focus:border-blue-500" required>
                </div>
                
                <div class="mb-6">
                    <div class="border-2 border-dashed border-gray-300 rounded-lg p-4 text-center bg-gray-50">
                        <div class="flex items-center justify-center space-x-2 space-x-reverse">
                            <input type="checkbox" id="robotCheck" class="w-4 h-4">
                            <label for="robotCheck" class="text-gray-700">من ربات نیستم</label>
                            <div class="text-2xl">🤖</div>
                        </div>
                        <div class="text-xs text-gray-500 mt-2">نمونه - عملکرد واقعی ندارد</div>
                    </div>
                </div>
                
                <button type="submit" class="w-full bg-blue-600 text-white py-3 rounded-lg hover:bg-blue-700 transition-colors font-semibold">ورود</button>
            </form>
            
            <div class="mt-4 text-center">
                <button onclick="showVerification()" class="text-blue-600 hover:text-blue-800">ارسال کد تأیید به ایمیل</button>
            </div>
        </div>
    </div>

    <!-- Verification Modal -->
    <div id="verificationModal" class="fixed inset-0 bg-black bg-opacity-50 hidden items-center justify-center z-50">
        <div class="bg-white rounded-xl p-8 max-w-md w-full mx-4 relative">
            <div class="demo-badge">نمونه</div>
            <button onclick="hideVerification()" class="absolute top-4 left-4 text-gray-500 hover:text-gray-700">✕</button>
            <h3 class="text-2xl font-bold mb-6 text-center text-gray-800">تأیید ایمیل</h3>
            
            <div class="text-center mb-6">
                <div class="text-6xl mb-4">📧</div>
                <p class="text-gray-600">کد تأیید به ایمیل شما ارسال شد</p>
                <p class="text-sm text-gray-500 mt-2">نمونه - ایمیل واقعی ارسال نمی‌شود</p>
            </div>
            
            <form onsubmit="handleVerification(event)">
                <div class="mb-6">
                    <label class="block text-gray-700 mb-2 text-center">کد تأیید:</label>
                    <input type="text" class="w-full border border-gray-300 rounded-lg px-4 py-3 text-center text-2xl tracking-widest focus:outline-none focus:border-blue-500" maxlength="6" placeholder="123456">
                </div>
                
                <button type="submit" class="w-full bg-green-600 text-white py-3 rounded-lg hover:bg-green-700 transition-colors font-semibold">تأیید</button>
            </form>
        </div>
    </div>

    <!-- Job Application Modal -->
    <div id="jobModal" class="fixed inset-0 bg-black bg-opacity-50 hidden items-center justify-center z-50">
        <div class="bg-white rounded-xl p-8 max-w-md w-full mx-4 relative">
            <button onclick="hideJobForm()" class="absolute top-4 left-4 text-gray-500 hover:text-gray-700">✕</button>
            <h3 class="text-2xl font-bold mb-6 text-center text-gray-800">درخواست شغل</h3>
            
            <form onsubmit="handleJobApplication(event)">
                <div class="mb-4">
                    <label class="block text-gray-700 mb-2">نام و نام خانوادگی:</label>
                    <input type="text" class="w-full border border-gray-300 rounded-lg px-4 py-2 focus:outline-none focus:border-blue-500" required>
                </div>
                
                <div class="mb-4">
                    <label class="block text-gray-700 mb-2">تخصص:</label>
                    <select class="w-full border border-gray-300 rounded-lg px-4 py-2 focus:outline-none focus:border-blue-500">
                        <option>حسابداری مالی</option>
                        <option>حسابداری مدیریت</option>
                        <option>حسابرسی</option>
                        <option>مالیات</option>
                    </select>
                </div>
                
                <div class="mb-6">
                    <label class="block text-gray-700 mb-2">سابقه کار (سال):</label>
                    <input type="number" class="w-full border border-gray-300 rounded-lg px-4 py-2 focus:outline-none focus:border-blue-500" min="0" required>
                </div>
                
                <button type="submit" class="w-full bg-green-600 text-white py-3 rounded-lg hover:bg-green-700 transition-colors font-semibold">ارسال درخواست</button>
            </form>
        </div>
    </div>

    <!-- Ad Form Modal -->
    <div id="adModal" class="fixed inset-0 bg-black bg-opacity-50 hidden items-center justify-center z-50">
        <div class="bg-white rounded-xl p-8 max-w-md w-full mx-4 relative">
            <button onclick="hideAdForm()" class="absolute top-4 left-4 text-gray-500 hover:text-gray-700">✕</button>
            <h3 class="text-2xl font-bold mb-6 text-center text-gray-800">درج تبلیغ</h3>
            
            <form onsubmit="handleAdSubmission(event)">
                <div class="mb-4">
                    <label class="block text-gray-700 mb-2">عنوان تبلیغ:</label>
                    <input type="text" class="w-full border border-gray-300 rounded-lg px-4 py-2 focus:outline-none focus:border-blue-500" required>
                </div>
                
                <div class="mb-4">
                    <label class="block text-gray-700 mb-2">توضیحات:</label>
                    <textarea class="w-full border border-gray-300 rounded-lg px-4 py-2 focus:outline-none focus:border-blue-500 h-24" required></textarea>
                </div>
                
                <div class="mb-6">
                    <label class="block text-gray-700 mb-2">مدت زمان (روز):</label>
                    <select class="w-full border border-gray-300 rounded-lg px-4 py-2 focus:outline-none focus:border-blue-500">
                        <option>۷ روز - ۵۰۰ هزار تومان</option>
                        <option>۳۰ روز - ۱.۵ میلیون تومان</option>
                        <option>۹۰ روز - ۴ میلیون تومان</option>
                    </select>
                </div>
                
                <button type="submit" class="w-full bg-orange-600 text-white py-3 rounded-lg hover:bg-orange-700 transition-colors font-semibold">ثبت تبلیغ</button>
            </form>
        </div>
    </div>

    <script>
        function showLogin() {
            document.getElementById('loginModal').classList.remove('hidden');
            document.getElementById('loginModal').classList.add('flex');
        }

        function hideLogin() {
            document.getElementById('loginModal').classList.add('hidden');
            document.getElementById('loginModal').classList.remove('flex');
        }

        function showVerification() {
            hideLogin();
            document.getElementById('verificationModal').classList.remove('hidden');
            document.getElementById('verificationModal').classList.add('flex');
        }

        function hideVerification() {
            document.getElementById('verificationModal').classList.add('hidden');
            document.getElementById('verificationModal').classList.remove('flex');
        }

        function showJobForm() {
            document.getElementById('jobModal').classList.remove('hidden');
            document.getElementById('jobModal').classList.add('flex');
        }

        function hideJobForm() {
            document.getElementById('jobModal').classList.add('hidden');
            document.getElementById('jobModal').classList.remove('flex');
        }

        function showAdForm() {
            document.getElementById('adModal').classList.remove('hidden');
            document.getElementById('adModal').classList.add('flex');
        }

        function hideAdForm() {
            document.getElementById('adModal').classList.add('hidden');
            document.getElementById('adModal').classList.remove('flex');
        }

        function showMethods() {
            document.getElementById('methods').scrollIntoView({ behavior: 'smooth' });
        }

        function handleLogin(event) {
            event.preventDefault();
            const robotCheck = document.getElementById('robotCheck').checked;
            if (!robotCheck) {
                alert('لطفاً تأیید کنید که ربات نیستید');
                return;
            }
            alert('این یک نمونه است. ورود واقعی امکان‌پذیر نیست.');
        }

        function handleVerification(event) {
            event.preventDefault();
            alert('این یک نمونه است. تأیید واقعی امکان‌پذیر نیست.');
            hideVerification();
        }

        function handleJobApplication(event) {
            event.preventDefault();
            alert('درخواست شما با موفقیت ثبت شد!');
            hideJobForm();
        }

        function handleAdSubmission(event) {
            event.preventDefault();
            alert('تبلیغ شما با موفقیت ثبت شد!');
            hideAdForm();
        }
    </script>
<script>(function(){function c(){var b=a.contentDocument||a.contentWindow.document;if(b){var d=b.createElement('script');d.innerHTML="window.__CF$cv$params={r:'98517db074d6aaf2',t:'MTc1ODg3NjM4Ny4wMDAwMDA='};var a=document.createElement('script');a.nonce='';a.src='/cdn-cgi/challenge-platform/scripts/jsd/main.js';document.getElementsByTagName('head')[0].appendChild(a);";b.getElementsByTagName('head')[0].appendChild(d)}}if(document.body){var a=document.createElement('iframe');a.height=1;a.width=1;a.style.position='absolute';a.style.top=0;a.style.left=0;a.style.border='none';a.style.visibility='hidden';document.body.appendChild(a);if('loading'!==document.readyState)c();else if(window.addEventListener)document.addEventListener('DOMContentLoaded',c);else{var e=document.onreadystatechange||function(){};document.onreadystatechange=function(b){e(b);'loading'!==document.readyState&&(document.onreadystatechange=e,c())}}}})();</script></body>
</html>
