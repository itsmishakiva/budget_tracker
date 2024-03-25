import 'package:budget_tracker/features/analytics/data/dto/analytics_dto/analytics_dto.dart';
import 'package:budget_tracker/features/analytics/data/services/analytics_service.dart';

class MockAnalyticsService implements AnalyticsService {
  @override
  Future<AnalyticsDTO> getAnalyticsList(String period) async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    final resultWeek = {
      'bars': [
        {'label': 'mon', 'sum': 289},
        {'label': 'tue', 'sum': 241},
        {'label': 'wen', 'sum': 123},
        {'label': 'thu', 'sum': 226},
        {'label': 'fri', 'sum': 109},
        {'label': 'sut', 'sum': 208},
        {'label': 'sun', 'sum': 165},
      ],
      'categories': [
        {
          'category': {
            'id': 1,
            'isIncome': true,
            'title': 'Home',
            'categoryIconAsset': ':house:',
          },
          'sum': 367,
        },
        {
          'category': {
            'id': 1,
            'isIncome': true,
            'title': 'Gifts',
            'categoryIconAsset': ':gift:',
          },
          'sum': 245,
        },
        {
          'category': {
            'id': 1,
            'isIncome': false,
            'title': 'Home',
            'categoryIconAsset': ':house:',
          },
          'sum': -135,
        },
        {
          'category': {
            'id': 1,
            'isIncome': false,
            'title': 'Gifts',
            'categoryIconAsset': ':gift:',
          },
          'sum': -438,
        },
        {
          'category': {
            'id': 1,
            'isIncome': true,
            'title': 'Food',
            'categoryIconAsset': ':green_salad:',
          },
          'sum': 2039,
        },
        {
          'category': {
            'id': 1,
            'isIncome': false,
            'title': 'Food',
            'categoryIconAsset': ':green_salad:',
          },
          'sum': -438,
        },
        {
          'category': {
            'id': 1,
            'isIncome': false,
            'title': 'Family',
            'categoryIconAsset': ':green_salad:',
          },
          'sum': -217,
        },
        {
          'category': {
            'id': 1,
            'isIncome': false,
            'title': 'Travels',
            'categoryIconAsset': ':airplane_departure:',
          },
          'sum': -789,
        },
        {
          'category': {
            'id': 1,
            'isIncome': false,
            'title': 'Travels',
            'categoryIconAsset': ':airplane_departure:',
          },
          'sum': -90,
        },
      ],
    };

    final resultMonth = {
      'bars': [
        {'label': '1day', 'sum': 256},
        {'label': '6day', 'sum': 124},
        {'label': '11day', 'sum': 146},
        {'label': '16day', 'sum': 274},
        {'label': '21day', 'sum': 235},
        {'label': '26day', 'sum': 231},
        {'label': '31day', 'sum': 187},
      ],
      'categories': [
        {
          'category': {
            'id': 1,
            'isIncome': true,
            'title': 'Home',
            'categoryIconAsset': ':house:',
          },
          'sum': 367,
        }
      ],
    };

    final resultYear = {
      'bars': [
        {'label': 'jun', 'sum': 253},
        {'label': 'fub', 'sum': 241},
        {'label': 'mar', 'sum': 251},
        {'label': 'apr', 'sum': 165},
        {'label': 'may', 'sum': 109},
        {'label': 'jun', 'sum': 208},
        {'label': 'jul', 'sum': 165},
        {'label': 'aug', 'sum': 289},
        {'label': 'sep', 'sum': 245},
        {'label': 'oct', 'sum': 164},
        {'label': 'nov', 'sum': 109},
        {'label': 'dec', 'sum': 123},
      ],
      'categories': [
        {
          'category': {
            'id': 1,
            'isIncome': true,
            'title': 'Home',
            'categoryIconAsset': ':house:',
          },
          'sum': 367,
        }
      ],
    };

    if (period == 'week') return AnalyticsDTO.fromJson(resultWeek);
    if (period == 'month') {
      return AnalyticsDTO.fromJson(resultMonth);
    } else {
      return AnalyticsDTO.fromJson(resultYear);
    }
  }
}
