# Computer-Architecture-Assembler-HW3
<br>Сделал Пересторонин Максим Дмитриевич БПИ 217 Вариант 21 на оценку 6
Из-за требования "необходимо представить только одну
модифицированную ассемблерную программу, разработанную
на целевую оценку. Представление ассемблерных программ, полученных непосредственно после компиляции необходимо только в тех случаях, когда осуществляется их сравнение с модифицированной программой. Разрабатывать и представлять
несколько программ на С и соответствующих им программ на
ассемблере не нужно."
<br>многие ссылки введут в одно и то же место. Это связано с тем, что я хотел сохрнить привычную структуру отчета, где видно проделланую работу на каждый пункт того или иного балла.
## На 4 балла:
Для компиляции без модификаций использовалась команда:
<br>`gcc -masm=intel ./<file_name>.c -S -o ./<file_name>.s`
* Приведено [решение задачи на C.](https://github.com/mperestoronin/Computer-Architecture-Assembler-HW3/tree/main/CFiles)
* В полученную ассемблерную программу, откомпилированную без оптимизирующих и отладочных опций, добавлены [комментарии](https://github.com/mperestoronin/Computer-Architecture-Assembler-HW3/tree/main/AssemblerOriginal), поясняющие эквивалентное представление переменных в программе на C.
* Из ассемблерной программы [убраны лишние макросы](https://github.com/mperestoronin/Computer-Architecture-Assembler-HW3/tree/main/AssemblerMod) за счет использования соответствующих аргументов командной строки и/или за счет ручного редактирования исходного текста ассемблерной программы. Модифицированная ассемблерная программа отдельно откомпилирована
и скомпонована без использования опций отладки.
* Представлено [полное тестовое покрытие](https://github.com/mperestoronin/Computer-Architecture-Assembler-HW3/blob/main/Tests.md), дающее одинаковый результат
на обоих программах. Приведены результаты тестовых прогонов для обоих программ, демонстрирующие эквивалентность функционирования.
* Сформировать отчет, описывающий результаты тестовых прогонов и используемых опций компиляции и/или описания проведенных модификаций. [Заключение по тестам тут](https://github.com/mperestoronin/Computer-Architecture-Assembler-HW3/blob/main/Tests.md#%D0%B7%D0%B0%D0%BA%D0%BB%D1%8E%D1%87%D0%B5%D0%BD%D0%BD%D0%B8%D0%B5) (смотрите чуть ниже) - [список изменений тут](https://github.com/mperestoronin/Computer-Architecture-Assembler-HW3/blob/main/AssemblerMod/ChangeLog.md)
## На 5 баллов:
* Я использовал [локальные переменные и передавал данные в функции через параметры](https://github.com/mperestoronin/Computer-Architecture-Assembler-HW3/tree/main/CFiles)
* В ассемблерную программу при вызове функции добавить [комментарии, описывающие передачу фактических параметров и перенос возвращаемого результата.](https://github.com/mperestoronin/Computer-Architecture-Assembler-HW3/tree/main/AssemblerMod)
* В функциях для формальных параметров добавить [комментарии, описывающие связь между параметрами языка Си и регистрами (стеком)](https://github.com/mperestoronin/Computer-Architecture-Assembler-HW3/tree/main/AssemblerMod)
* Отчет: В программе есть функции с передачей данных через параметры, используются локальные переменные. Код прокомментирован.
## На 6 баллов:
* Рефакторинг программы на ассемблере за счет максимального использования регистров процессора. Добавление этой программы к уже представленным. Список изменений [тут](https://github.com/mperestoronin/Computer-Architecture-Assembler-HW3/blob/main/AssemblerMod/ChangeLog.md), сам код [тут.](https://github.com/mperestoronin/Computer-Architecture-Assembler-HW3/tree/main/AssemblerMod)
* Добавление [комментариев в разработанную программу](https://github.com/mperestoronin/Computer-Architecture-Assembler-HW3/tree/main/AssemblerMod), поясняющих эквивалентное использование регистров вместо переменных исходной программы на C.
* Представление [результатов тестовых прогонов](https://github.com/mperestoronin/Computer-Architecture-Assembler-HW3/blob/main/Tests.md) для разработанной программы. Оценка корректности ее выполнения на основе сравнения тестовых прогонов результатами тестирования предшествующих программ.
* [Заключение по тестам](https://github.com/mperestoronin/Computer-Architecture-Assembler-HW3/blob/main/Tests.md#%D0%B7%D0%B0%D0%BA%D0%BB%D1%8E%D1%87%D0%B5%D0%BD%D0%BD%D0%B8%D0%B5)
* Сопоставление [размеров](https://github.com/mperestoronin/Computer-Architecture-Assembler-HW3/blob/main/Size.md) программы на ассемблере, полученной после
компиляции с языка C с модифицированной программой, использующей
регистры.
<br>По всем вопросам писшите на почту mdperestoronin@edu.hse.ru или в телеграмм @Maxim_Perestoronin
