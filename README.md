# LeetCode SQL 50 Solutions

This repository contains solutions to the LeetCode SQL 50 study plan, implemented in both **SQL Server** and **MySQL**.

## 📋 About

The SQL 50 study plan is a curated collection of SQL problems on LeetCode designed to help you master SQL fundamentals and prepare for technical interviews. Each problem is solved using both SQL Server and MySQL syntax to demonstrate the differences and similarities between the two database systems.

## 📂 Repository Structure

```
├── Select/
│   ├── MySQL/
│   │   └── problem_name.sql
│   └── SQL Server/
│       └── problem_name.sql
├── Basic Joins/
│   ├── MySQL/
│   └── SQL Server/
├── Basic Aggregate Functions/
│   ├── MySQL/
│   └── SQL Server/
├── Sorting and Grouping/
│   ├── MySQL/
│   └── SQL Server/
├── Advanced Select and Joins/
│   ├── MySQL/
│   └── SQL Server/
├── Subqueries/
│   ├── MySQL/
│   └── SQL Server/
└── README.md
```


## 🚀 How to Use

1. Navigate to the topic folder (Select, Basic Joins, etc.)
2. Choose either MySQL or SQL Server folder based on your database
3. Review the solution files for each problem

## 💡 Solving Tips

**Recommended Order:** For best learning experience, consider solving problems in this order:
1. ✅ All **Easy** problems first (builds foundation)
2. ⚡ Then all **Medium** problems (develops skills)
3. 🔥 Finally all **Hard** problems (masters concepts)

This approach ensures you have a solid foundation before tackling more complex challenges!

## 💡 Key Differences: SQL Server vs MySQL

### Common Syntax Differences
| Feature | SQL Server | MySQL |
|---------|-----------|-------|
| String Concatenation | `+` or `CONCAT()` | `CONCAT()` |
| Date Functions | `GETDATE()`, `DATEADD()` | `NOW()`, `DATE_ADD()` |
| Limit Results | `TOP N` | `LIMIT N` |
| Auto Increment | `IDENTITY` | `AUTO_INCREMENT` |
| IF Statement | `IIF()` | `IF()` |

### Aggregate Functions Notes

**Basic Aggregates (Same in Both):**
- `COUNT()`, `SUM()`, `AVG()`, `MIN()`, `MAX()` work identically in both systems

**Key Differences:**

| Function | SQL Server | MySQL |
|----------|-----------|-------|
| Group Concatenation | `STRING_AGG(column, delimiter)` | `GROUP_CONCAT(column SEPARATOR delimiter)` |
| Standard Deviation | `STDEV()` or `STDEVP()` | `STD()` or `STDDEV()` |
| Variance | `VAR()` or `VARP()` | `VARIANCE()` |
| NULL Handling in GROUP BY | NULLs grouped together | NULLs grouped together (same) |
| HAVING Clause | Can reference column aliases | Can reference column aliases (same) |

**Important Notes:**
- **AVG() with integers**: MySQL returns decimals automatically, SQL Server returns integer (multiply by 1.0 to get decimals)
- **Division**: MySQL returns decimals, SQL Server returns integer unless you use 1.0
- **GROUP BY flexibility**: MySQL allows flexible GROUP BY with sql_mode, SQL Server requires all non-aggregated columns
- **ONLY_FULL_GROUP_BY**: MySQL mode that enforces standard SQL GROUP BY rules
- **Division by zero**: SQL Server throws error, MySQL returns NULL
- **String comparison**: SQL Server is case-insensitive by default, MySQL depends on collation
- **NULL-safe equality**: MySQL has `<=>` operator, SQL Server use `IS NULL`
- **IFNULL vs ISNULL**: MySQL uses `IFNULL()`, SQL Server uses `ISNULL()`, both use `COALESCE()` (recommended)


## 🛠️ Technologies

- **SQL Server** - Microsoft's relational database management system
- **MySQL** - Open-source relational database management system

## 📚 Resources

- [LeetCode SQL 50 Study Plan](https://leetcode.com/studyplan/top-sql-50/)

## 🤝 Contributing

Feel free to suggest improvements or alternative solutions by opening an issue or pull request.

## 📄 License

This project is open source and available under the MIT License.

---

**Happy Coding!** 🎉
