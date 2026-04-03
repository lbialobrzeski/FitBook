import 'package:drift/drift.dart';
import 'package:fit_book/database/database.dart';

class MealSchedulerService {
  static Future<void> run(AppDatabase db) async {
    final now = DateTime.now();
    final starters = await _dailyFoodTemplates(db);

    for (final template in starters) {
      final scheduledDateTime = DateTime(
        now.year,
        now.month,
        now.day,
        template.hour,
        template.minute,
      );

      if (now.isBefore(scheduledDateTime)) continue;

      final diaryEntry = await (db.diaries.select()
            ..where(
              (entry) =>
                  entry.food.equals(template.foodId) &
                  entry.created.isBiggerOrEqualValue(
                    DateTime(now.year, now.month, now.day),
                  ) &
                  entry.created.isSmallerThanValue(
                    DateTime(now.year, now.month, now.day + 1),
                  ),
            )
            ..limit(1))
          .getSingleOrNull();

      if (diaryEntry != null) continue;

      await db.diaries.insertOne(
        DiariesCompanion.insert(
          food: template.foodId,
          created: scheduledDateTime,
          quantity: template.quantity,
          unit: template.unit,
        ),
      );
    }
  }

  static Future<List<_DailyTemplate>> _dailyFoodTemplates(AppDatabase db) async {
    final result = <_DailyTemplate>[];
    final scheduledFoods = await (db.foods.select()
          ..where((entry) => entry.foodGroup.like('Codziennie@%')))
        .get();

    for (final food in scheduledFoods) {
      final marker = food.foodGroup?.split('|').first;
      final hhmm = marker?.replaceFirst('Codziennie@', '');
      if (hhmm == null || !hhmm.contains(':')) continue;
      final parts = hhmm.split(':');
      final hour = int.tryParse(parts.first);
      final minute = int.tryParse(parts.last);
      if (hour == null || minute == null) continue;

      result.add(
        _DailyTemplate(
          foodId: food.id,
          hour: hour,
          minute: minute,
          unit: 'serving',
        ),
      );
    }

    return result;
  }
}

class _DailyTemplate {
  final int foodId;
  final int hour;
  final int minute;
  final double quantity;
  final String unit;

  const _DailyTemplate({
    required this.foodId,
    required this.hour,
    required this.minute,
    this.quantity = 1,
    this.unit = 'serving',
  });
}
