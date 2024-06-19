# Проекты SQL выполненные в рамках обучения в Школе 21.

## Задачи
1. [Graph problem](#graph-problem) \
    1.1 [Minimum path](#minimum-path) \
    1.2 [Maximum path](#maximum-path)
2. [Command project](#command-project) \
    2.1. [Preamble](#preamble)
    <!-- 2.1. [Preamble](#preamble) \
    2.1. [Preamble](#preamble) \
    2.1. [Preamble](#preamble) -->

## Graph problem
## Minimum path

![Graph_pic](sql_graph/images/T00_02.png)

- Создать и заполнить таблицу согласно схеме, используя структуру (point1, point2, cost).
- Две точки имеют прямые и обратные направления.
- Написать SQL оператор по поиску кратчайшего маршрута посещения каждой точки, начиная с точки "a" и вернуться в исходную точку.

Пример результата:

| total_cost | tour |
| ------ | ------ |
| 80 | {a,b,d,c,a} |
| ... | ... |

## Maximum path

 - Добавте возможность просмотра самого затратного пути.

 Пример результата:

| total_cost | tour |
| ------ | ------ |
| 80 | {a,b,d,c,a} |
| ... | ... |
| 95 | {a,d,c,b,a} |

## Command project
## Preamble

- Use this page as the only reference. Do not listen to any rumors and speculations on how to prepare your solution.
- Please make sure you are using the latest version of PostgreSQL.
- That is completely OK if you are using IDE to write a source code (aka SQL script).
- To be assessed your solution must be in your GIT repository.
- Your solutions will be evaluated by your piscine mates.
- You should not leave in your directory any other file than those explicitly specified by the exercise instructions. It is recommended that you modify your `.gitignore` to avoid accidents.
- Do you have a question? Ask your neighbor on the right. Otherwise, try with your neighbor on the left.
- Your reference manual: mates / Internet / Google. 
- Read the examples carefully. They may require things that are not otherwise specified in the subject.
- And may the SQL-Force be with you!
- Absolutely everything can be presented in SQL! Let’s start and have fun!