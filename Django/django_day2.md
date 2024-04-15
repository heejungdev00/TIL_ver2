`(mysite) c:\projects\mysite>python manage.py runserver`

Watching for file changes with StatReloader

Performing system checks...

System check identified no issues (0 silenced).

You have 18 unapplied migration(s). Your project may not work properly until you apply the migrations for app(s): admin, auth, contenttypes, sessions.

Run 'python manage.py migrate' to apply them.

April 15, 2024 - 09:27:17

Django version 4.0.3, using settings 'config.settings'

Starting development server at http://127.0.0.1:8000/

Quit the server with CTRL-BREAK.

[15/Apr/2024 09:29:06] "GET / HTTP/1.1" 200 10773

`(mysite) c:\projects\mysite>django-admin startapp pybo`

(mysite) c:\projects\mysite>dir/w

 C 드라이브의 볼륨에는 이름이 없습니다.

 볼륨 일련 번호: F876-0B46

 c:\projects\mysite 디렉터리

[.]          [..]         [.idea]      [config]
db.sqlite3   manage.py    [pybo]
               2개 파일                 684 바이트
               5개 디렉터리  26,995,802,112 바이트 남음

`(mysite) c:\projects\mysite>python manage.py runserver`

Watching for file changes with StatReloader

Performing system checks...

System check identified no issues (0 silenced).

You have 18 unapplied migration(s). Your project may not work properly until you apply the migrations for app(s): admin, auth, contenttypes, sessions.

Run 'python manage.py migrate' to apply them.

April 15, 2024 - 09:44:10

Django version 4.0.3, using settings 'config.settings'

Starting development server at http://127.0.0.1:8000/

Quit the server with CTRL-BREAK.

[15/Apr/2024 09:44:41] "GET / HTTP/1.1" 200 10773

Not Found: /pybo

[15/Apr/2024 09:45:23] "GET /pybo HTTP/1.1" 404 2089

C:\projects\mysite\config\urls.py changed, reloading.

Watching for file changes with StatReloader

Performing system checks...

Exception in thread django-main-thread:

Traceback (most recent call last):

  File "C:\Users\박주하\AppData\Local\Programs\Python\Python312\Lib\threading.py", line 1073, in _bootstrap_inner
    self.run()
  File "C:\Users\박주하\AppData\Local\Programs\Python\Python312\Lib\threading.py", line 1010, in run
    self._target(*self._args, **self._kwargs)
  File "C:\venvs\mysite\Lib\site-packages\django\utils\autoreload.py", line 64, in wrapper
    fn(*args, **kwargs)
  File "C:\venvs\mysite\Lib\site-packages\django\core\management\commands\runserver.py", line 134, in inner_run
    self.check(display_num_errors=True)
  File "C:\venvs\mysite\Lib\site-packages\django\core\management\base.py", line 487, in check
    all_issues = checks.run_checks(
                 ^^^^^^^^^^^^^^^^^^
  File "C:\venvs\mysite\Lib\site-packages\django\core\checks\registry.py", line 88, in run_checks
    new_errors = check(app_configs=app_configs, databases=databases)
                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "C:\venvs\mysite\Lib\site-packages\django\core\checks\urls.py", line 14, in check_url_config
    return check_resolver(resolver)
           ^^^^^^^^^^^^^^^^^^^^^^^^
  File "C:\venvs\mysite\Lib\site-packages\django\core\checks\urls.py", line 24, in check_resolver
    return check_method()
           ^^^^^^^^^^^^^^
  File "C:\venvs\mysite\Lib\site-packages\django\urls\resolvers.py", line 480, in check
    for pattern in self.url_patterns:
                   ^^^^^^^^^^^^^^^^^
  File "C:\venvs\mysite\Lib\site-packages\django\utils\functional.py", line 49, in __get__
    res = instance.__dict__[self.name] = self.func(instance)
                                         ^^^^^^^^^^^^^^^^^^^
  File "C:\venvs\mysite\Lib\site-packages\django\urls\resolvers.py", line 696, in url_patternspro
    patterns = getattr(self.urlconf_module, "urlpatterns", self.urlconf_module)
                       ^^^^^^^^^^^^^^^^^^^
  File "C:\venvs\mysite\Lib\site-packages\django\utils\functional.py", line 49, in __get__
    res = instance.__dict__[self.name] = self.func(instance)
                                         ^^^^^^^^^^^^^^^^^^^
  File "C:\venvs\mysite\Lib\site-packages\django\urls\resolvers.py", line 689, in urlconf_module
    return import_module(self.urlconf_name)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "C:\Users\박주하\AppData\Local\Programs\Python\Python312\Lib\importlib\__init__.py", line 90, in import_module
    return _bootstrap._gcd_import(name[level:], package, level)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "<frozen importlib._bootstrap>", line 1387, in _gcd_import
  File "<frozen importlib._bootstrap>", line 1360, in _find_and_load
  File "<frozen importlib._bootstrap>", line 1331, in _find_and_load_unlocked
  File "<frozen importlib._bootstrap>", line 935, in _load_unlocked
  File "<frozen importlib._bootstrap_external>", line 991, in exec_module
  File "<frozen importlib._bootstrap_external>", line 1129, in get_code
  File "<frozen importlib._bootstrap_external>", line 1059, in source_to_code
  File "<frozen importlib._bootstrap>", line 488, in _call_with_frames_removed
  File "c:\projects\mysite\config\urls.py", line 23
    http://127.0.0.1:8000/pybo
         ^^

SyntaxError: invalid syntax

C:\projects\mysite\config\urls.py changed, reloading.

Watching for file changes with StatReloader

Performing system checks...

Exception in thread django-main-thread:

Traceback (most recent call last):
  File "C:\Users\박주하\AppData\Local\Programs\Python\Python312\Lib\threading.py", line 1073, in _bootstrap_inner
    self.run()
  File "C:\Users\박주하\AppData\Local\Programs\Python\Python312\Lib\threading.py", line 1010, in run
    self._target(*self._args, **self._kwargs)
  File "C:\venvs\mysite\Lib\site-packages\django\utils\autoreload.py", line 64, in wrapper
    fn(*args, **kwargs)
  File "C:\venvs\mysite\Lib\site-packages\django\core\management\commands\runserver.py", line 134, in inner_run
    self.check(display_num_errors=True)
  File "C:\venvs\mysite\Lib\site-packages\django\core\management\base.py", line 487, in check
    all_issues = checks.run_checks(
                 ^^^^^^^^^^^^^^^^^^
  File "C:\venvs\mysite\Lib\site-packages\django\core\checks\registry.py", line 88, in run_checks
    new_errors = check(app_configs=app_configs, databases=databases)
                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "C:\venvs\mysite\Lib\site-packages\django\core\checks\urls.py", line 14, in check_url_config
    return check_resolver(resolver)
           ^^^^^^^^^^^^^^^^^^^^^^^^
  File "C:\venvs\mysite\Lib\site-packages\django\core\checks\urls.py", line 24, in check_resolver
    return check_method()
           ^^^^^^^^^^^^^^
  File "C:\venvs\mysite\Lib\site-packages\django\urls\resolvers.py", line 480, in check
    for pattern in self.url_patterns:
                   ^^^^^^^^^^^^^^^^^
  File "C:\venvs\mysite\Lib\site-packages\django\utils\functional.py", line 49, in __get__
    res = instance.__dict__[self.name] = self.func(instance)
                                         ^^^^^^^^^^^^^^^^^^^
  File "C:\venvs\mysite\Lib\site-packages\django\urls\resolvers.py", line 696, in url_patterns
    patterns = getattr(self.urlconf_module, "urlpatterns", self.urlconf_module)
                       ^^^^^^^^^^^^^^^^^^^
  File "C:\venvs\mysite\Lib\site-packages\django\utils\functional.py", line 49, in __get__
    res = instance.__dict__[self.name] = self.func(instance)
                                         ^^^^^^^^^^^^^^^^^^^
  File "C:\venvs\mysite\Lib\site-packages\django\urls\resolvers.py", line 689, in urlconf_module
    return import_module(self.urlconf_name)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "C:\Users\박주하\AppData\Local\Programs\Python\Python312\Lib\importlib\__init__.py", line 90, in import_module
    return _bootstrap._gcd_import(name[level:], package, level)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "<frozen importlib._bootstrap>", line 1387, in _gcd_import
  File "<frozen importlib._bootstrap>", line 1360, in _find_and_load
  File "<frozen importlib._bootstrap>", line 1331, in _find_and_load_unlocked
  File "<frozen importlib._bootstrap>", line 935, in _load_unlocked
  File "<frozen importlib._bootstrap_external>", line 991, in exec_module
  File "<frozen importlib._bootstrap_external>", line 1129, in get_code
  File "<frozen importlib._bootstrap_external>", line 1059, in source_to_code
  File "<frozen importlib._bootstrap>", line 488, in _call_with_frames_removed
  File "c:\projects\mysite\config\urls.py", line 24
    http://127.0.0.1:8000/pybo

         ^^

SyntaxError: invalid syntax

C:\projects\mysite\config\urls.py changed, reloading.

Watching for file changes with StatReloader

Performing system checks...

System check identified no issues (0 silenced).

You have 18 unapplied migration(s). Your project may not work properly until you apply the migrations for app(s): admin, auth, contenttypes, sessions.

Run 'python manage.py migrate' to apply them.

April 15, 2024 - 10:23:24

Django version 4.0.3, using settings 'config.settings'

Starting development server at http://127.0.0.1:8000/

Quit the server with CTRL-BREAK.

[15/Apr/2024 10:23:25] "GET /pybo HTTP/1.1" 301 0

[15/Apr/2024 10:23:25] "GET /pybo/ HTTP/1.1" 200 66

C:\projects\mysite\config\urls.py changed, reloading.

Watching for file changes with StatReloader

Performing system checks...

Exception in thread django-main-thread:

Traceback (most recent call last):
  File "C:\Users\박주하\AppData\Local\Programs\Python\Python312\Lib\threading.py", line 1073, in _bootstrap_inner
    self.run()
  File "C:\Users\박주하\AppData\Local\Programs\Python\Python312\Lib\threading.py", line 1010, in run
    self._target(*self._args, **self._kwargs)
  File "C:\venvs\mysite\Lib\site-packages\django\utils\autoreload.py", line 64, in wrapper
    fn(*args, **kwargs)
  File "C:\venvs\mysite\Lib\site-packages\django\core\management\commands\runserver.py", line 134, in inner_run
    self.check(display_num_errors=True)
  File "C:\venvs\mysite\Lib\site-packages\django\core\management\base.py", line 487, in check
    all_issues = checks.run_checks(
                 ^^^^^^^^^^^^^^^^^^
  File "C:\venvs\mysite\Lib\site-packages\django\core\checks\registry.py", line 88, in run_checks
    new_errors = check(app_configs=app_configs, databases=databases)
                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "C:\venvs\mysite\Lib\site-packages\django\core\checks\urls.py", line 14, in check_url_config
    return check_resolver(resolver)
           ^^^^^^^^^^^^^^^^^^^^^^^^
  File "C:\venvs\mysite\Lib\site-packages\django\core\checks\urls.py", line 24, in check_resolver
    return check_method()
           ^^^^^^^^^^^^^^
  File "C:\venvs\mysite\Lib\site-packages\django\urls\resolvers.py", line 480, in check
    for pattern in self.url_patterns:
                   ^^^^^^^^^^^^^^^^^
  File "C:\venvs\mysite\Lib\site-packages\django\utils\functional.py", line 49, in __get__
    res = instance.__dict__[self.name] = self.func(instance)
                                         ^^^^^^^^^^^^^^^^^^^
  File "C:\venvs\mysite\Lib\site-packages\django\urls\resolvers.py", line 696, in url_patterns
    patterns = getattr(self.urlconf_module, "urlpatterns", self.urlconf_module)
                       ^^^^^^^^^^^^^^^^^^^
  File "C:\venvs\mysite\Lib\site-packages\django\utils\functional.py", line 49, in __get__
    res = instance.__dict__[self.name] = self.func(instance)
                                         ^^^^^^^^^^^^^^^^^^^
  File "C:\venvs\mysite\Lib\site-packages\django\urls\resolvers.py", line 689, in urlconf_module
    return import_module(self.urlconf_name)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "C:\Users\박주하\AppData\Local\Programs\Python\Python312\Lib\importlib\__init__.py", line 90, in import_module
    return _bootstrap._gcd_import(name[level:], package, level)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "<frozen importlib._bootstrap>", line 1387, in _gcd_import
  File "<frozen importlib._bootstrap>", line 1360, in _find_and_load
  File "<frozen importlib._bootstrap>", line 1331, in _find_and_load_unlocked
  File "<frozen importlib._bootstrap>", line 935, in _load_unlocked
  File "<frozen importlib._bootstrap_external>", line 991, in exec_module
  File "<frozen importlib._bootstrap_external>", line 1129, in get_code
  File "<frozen importlib._bootstrap_external>", line 1059, in source_to_code
  File "<frozen importlib._bootstrap>", line 488, in _call_with_frames_removed
  File "c:\projects\mysite\config\urls.py", line 31
    http 메시지 : 서버와 클라이언트가 주고받는 메시지
         ^^^^^^^^^

SyntaxError: invalid syntax

C:\projects\mysite\config\urls.py changed, reloading.

Watching for file changes with StatReloader

Performing system checks...

System check identified no issues (0 silenced).

You have 18 unapplied migration(s). Your project may not work properly until you apply the migrations for app(s): admin, auth, contenttypes, sessions.

Run 'python manage.py migrate' to apply them.

April 15, 2024 - 11:20:25

Django version 4.0.3, using settings 'config.settings'

Starting development server at http://127.0.0.1:8000/

Quit the server with CTRL-BREAK.

C:\projects\mysite\config\urls.py changed, reloading.

Watching for file changes with StatReloader

Performing system checks...

System check identified no issues (0 silenced).

You have 18 unapplied migration(s). Your project may not work properly until you apply the migrations for app(s): admin, auth, contenttypes, sessions.

Run 'python manage.py migrate' to apply them.

April 15, 2024 - 11:24:29

Django version 4.0.3, using settings 'config.settings'

Starting development server at http://127.0.0.1:8000/

Quit the server with CTRL-BREAK.

C:\projects\mysite\config\urls.py changed, reloading.

Watching for file changes with StatReloader

Performing system checks...

System check identified no issues (0 silenced).

You have 18 unapplied migration(s). Your project may not work properly until you apply the migrations for app(s): admin, auth, contenttypes, sessions.

Run 'python manage.py migrate' to apply them.

April 15, 2024 - 11:26:19

Django version 4.0.3, using settings 'config.settings'

Starting development server at http://127.0.0.1:8000/

Quit the server with CTRL-BREAK.

C:\projects\mysite\config\urls.py changed, reloading.

Watching for file changes with StatReloader

Performing system checks...

System check identified no issues (0 silenced).

You have 18 unapplied migration(s). Your project may not work properly until you apply the migrations for app(s): admin, auth, contenttypes, sessions.

Run 'python manage.py migrate' to apply them.

April 15, 2024 - 11:39:49

Django version 4.0.3, using settings 'config.settings'

Starting development server at http://127.0.0.1:8000/

Quit the server with CTRL-BREAK.

[15/Apr/2024 11:40:10] "GET /pybo/ HTTP/1.1" 200 66

C:\projects\mysite\pybo\urls.py changed, reloading.

Watching for file changes with StatReloader

Performing system checks...


System check identified no issues (0 silenced).

You have 18 unapplied migration(s). Your project may not work properly until you apply the migrations for app(s): admin, auth, contenttypes, sessions.

Run 'python manage.py migrate' to apply them.

April 15, 2024 - 11:51:24

Django version 4.0.3, using settings 'config.settings'

Starting development server at http://127.0.0.1:8000/

Quit the server with CTRL-BREAK.

C:\projects\mysite\pybo\urls.py changed, reloading.

Watching for file changes with StatReloader

Performing system checks...

System check identified no issues (0 silenced).

You have 18 unapplied migration(s). Your project may not work properly until you apply the migrations for app(s): admin, auth, contenttypes, sessions.

Run 'python manage.py migrate' to apply them.

April 15, 2024 - 13:19:02

Django version 4.0.3, using settings 'config.settings'

Starting development server at http://127.0.0.1:8000/

Quit the server with CTRL-BREAK.

C:\projects\mysite\config\settings.py changed, reloading.

Watching for file changes with StatReloader

Performing system checks...

System check identified no issues (0 silenced).

You have 18 unapplied migration(s). Your project may not work properly until you apply the migrations for app(s): admin, auth, contenttypes, sessions.

Run 'python manage.py migrate' to apply them.

April 15, 2024 - 13:29:17

Django version 4.0.3, using settings 'config.settings'

Starting development server at http://127.0.0.1:8000/

Quit the server with CTRL-BREAK.

`(mysite) c:\projects\mysite>python manage.py migrate`

Operations to perform:
  Apply all migrations: admin, auth, contenttypes, sessions

Running migrations:
  Applying contenttypes.0001_initial... OK
  Applying auth.0001_initial... OK
  Applying admin.0001_initial... OK
  Applying admin.0002_logentry_remove_auto_add... OK
  Applying admin.0003_logentry_add_action_flag_choices... OK
  Applying contenttypes.0002_remove_content_type_name... OK
  Applying auth.0002_alter_permission_name_max_length... OK
  Applying auth.0003_alter_user_email_max_length... OK
  Applying auth.0004_alter_user_username_opts... OK
  Applying auth.0005_alter_user_last_login_null... OK
  Applying auth.0006_require_contenttypes_0002... OK
  Applying auth.0007_alter_validators_add_error_messages... OK
  Applying auth.0008_alter_user_username_max_length... OK
  Applying auth.0009_alter_user_last_name_max_length... OK
  Applying auth.0010_alter_group_name_max_length... OK
  Applying auth.0011_update_proxy_permissions... OK
  Applying auth.0012_alter_user_first_name_max_length... OK
  Applying sessions.0001_initial... OK


`(mysite) c:\projects\mysite>python manage.py makemigrations`

Migrations for 'pybo':

  pybo\migrations\0001_initial.py

    - Create model Question
    - Create model Answer

`(mysite) c:\projects\mysite>python manage.py mirgrate`

Unknown command: 'mirgrate'. Did you mean migrate?

Type 'manage.py help' for usage.

`(mysite) c:\projects\mysite>python manage.py migrate`

Operations to perform:

  Apply all migrations: admin, auth, contenttypes, pybo, sessions

Running migrations:

  Applying pybo.0001_initial... OK

`(mysite) c:\projects\mysite>python manage.py shell`

Python 3.12.2 (tags/v3.12.2:6abddd9, Feb  6 2024, 21:26:36) [MSC v.1937 64 bit (AMD64)] on win32

Type "help", "copyright", "credits" or "license" for more information.

(InteractiveConsole)

`>>> from django.utils import Question, Answer`

Traceback (most recent call last):
  File "<console>", line 1, in <module>

ImportError: cannot import name 'Question' from 'django.utils' (C:\venvs\mysite\Lib\site-packages\django\utils\__init__.py)

`>>> from pybo.models import Question, Answer`

`>>> from django.utils import timezone`

`>>> q=Question(subject='pybo가 무엇인가요?', content='pybo에 대
해 알고 싶습니다", create_date=timezone.now())`

  File "<console>", line 1
    q=Question(subject='pybo가 무엇인가요?', content='pybo에 대해 알고 싶습니다", create_date=timezone.now())
                                               ^
SyntaxError: unterminated string literal (detected at line 1)

`>>> q=Question(subject='pybo가 무엇인가요?', content='pybo에 대해 알고 싶습니다', create_date=timezone.now())`

`>>> q.save()`

`>>> q`

<Question: Question object (1)>

`>>> q.id`

1

`>>> q=Question(subject='장고 모델 질문입니다', content='id는 자동으로 생성되나요?', create_date=timezone.now())`

`>>> q.save()`

`>>> q`

<Question: Question object (2)>

`>>> Question.objects.all()`

<QuerySet [<Question: Question object (1)>, <Question: Question object (2)>]>

`>>> Question.objects`

<django.db.models.manager.Manager object at 0x00000226526E8650>

`>>> Question.objects.all()`

<QuerySet [<Question: Question object (1)>, <Question: Question object (2)>]>

`>>> ^Z`

now exiting InteractiveConsole...

`(mysite) c:\projects\mysite>python manage.py shell`

Python 3.12.2 (tags/v3.12.2:6abddd9, Feb  6 2024, 21:26:36) [MSC v.1937 64 bit (AMD64)] on win32

Type "help", "copyright", "credits" or "license" for more information.

(InteractiveConsole)

`>>> Question.objects.all()`

Traceback (most recent call last):
  File "<console>", line 1, in <module>
NameError: name 'Question' is not defined

`>>> from pybo.models import Question, Answer`

`>>> Question.objects.all()`

<QuerySet [<Question: pybo가 무엇인가요?>, <Question: 장고 모델 질문입니다>]>

`>>> Question.objects.filter(id=1)`

<QuerySet [<Question: pybo가 무엇인가요?>]>

`>>> Question.objects.get(id=1)`

<Question: pybo가 무엇인가요?>

`>>> Question.objects.get(id=3)`

Traceback (most recent call last):
  File "<console>", line 1, in <module>
  File "C:\venvs\mysite\Lib\site-packages\django\db\models\manager.py", line 85, in manager_method
    return getattr(self.get_queryset(), name)(*args, **kwargs)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "C:\venvs\mysite\Lib\site-packages\django\db\models\query.py", line 496, in get
    raise self.model.DoesNotExist(
pybo.models.Question.DoesNotExist: Question matching query does not exist.

`>>> Question.objects.filter(subject__contains="장고")`

<QuerySet [<Question: 장고 모델 질문입니다>]>

`>>> Question.objects.get(id=2)`

<Question: 장고 모델 질문입니다>

`>>> q=Question.objects.get(id=2)`

`>>> q.subject="Django Model Question"`

`>>> q.save()`

`>>> q`

<Question: Django Model Question>

`>>> Question.objects.all()`

<QuerySet [<Question: pybo가 무엇인가요?>, <Question: Django Model Question>]>

`>>> q=Question.objects.get(id=1)`

`>>> q.delete()`

(1, {'pybo.Question': 1})

`>>> Question.objects.all()`

<QuerySet [<Question: Django Model Question>]>

`>>> q=Question.objects.get(id=2)`

`>>> q`

<Question: Django Model Question>

`>>> from django.utils import timezone`

`>>> a=Answer(Question=q, content="자동으로 생성됩니다" create_d
ate=timezone.now())`

  File "<console>", line 1
    a=Answer(Question=q, content="자동으로 생성됩니다" create_date=timezone.now())
                                 ^^^^^^^^^^^^^^^^^^^^^^^^
SyntaxError: invalid syntax. Perhaps you forgot a comma?

`>>> a=Answer(Question=q, content="자동으로 생성됩니다", create_
date=timezone.now())`

Traceback (most recent call last):
  File "<console>", line 1, in <module>
  File "C:\venvs\mysite\Lib\site-packages\django\db\models\base.py", line 559, in __init__
    raise TypeError(
TypeError: Answer() got an unexpected keyword argument 'Question'

`>>> a=Answer(question=q, content="자동으로 생성됩니다", create_
date=timezone.now())`

`>>> a.save()`

`>>> Answer.objects.all()`

<QuerySet [<Answer: Answer object (1)>]>

`>>> Answer.objects.get(id=1)`

<Answer: Answer object (1)>

`>>> a=Answer.objects.get(id=1)`

`>>> a.question`

<Question: Django Model Question>
