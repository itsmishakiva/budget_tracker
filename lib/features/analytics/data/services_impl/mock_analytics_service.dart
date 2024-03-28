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
        {'label': 'mon', 'sum': -289},
        {'label': 'tue', 'sum': -241},
        {'label': 'wen', 'sum': -123},
        {'label': 'thu', 'sum': -226},
        {'label': 'fri', 'sum': -109},
        {'label': 'sut', 'sum': -208},
        {'label': 'sun', 'sum': -35},
        {'label': 'mon', 'sum': 20},
        {'label': 'tue', 'sum': 108},
        {'label': 'wen', 'sum': 500},
        {'label': 'thu', 'sum': 278},
        {'label': 'fri', 'sum': 12},
        {'label': 'sut', 'sum': 89},
        {'label': 'sun', 'sum': 12},
      ],
      'categories': [
        {
          'category': {
            'id': 1,
            'title': 'Home',
            'emoji': ':house:',
            'color': 0xFFFFD1F0,
          },
          'sum': 367,
        },
        {
          'category': {
            'id': 1,
            'title': 'Home',
            'emoji': ':house:',
            'color': 0xFFFFD1F0,
          },
          'sum': 367,
        },
        {
          'category': {
            'id': 1,
            'title': 'Gifts',
            'emoji': ':gift:',
            'color': 0xFFFFD1F0,
          },
          'sum': 245,
        },
        {
          'category': {
            'id': 1,
            'title': 'Home',
            'color': 0xFFFFD1F0,
            'emoji': ':house:',
          },
          'sum': -135,
        },
        {
          'category': {
            'id': 1,
            'title': 'Gifts',
            'color': 0xFFFFD1F0,
            'emoji': ':gift:',
          },
          'sum': -438,
        },
        {
          'category': {
            'id': 1,
            'title': 'Food',
            'color': 0xFFFFD1F0,
            'emoji': ':green_salad:',
          },
          'sum': 2039,
        },
        {
          'category': {
            'id': 1,
            'title': 'Food',
            'color': 0xFFFFD1F0,
            'emoji': ':green_salad:',
          },
          'sum': -438,
        },
        {
          'category': {
            'id': 1,
            'title': 'Family',
            'color': 0xFFFFD1F0,
            'emoji': ':green_salad:',
          },
          'sum': -217,
        },
        {
          'category': {
            'id': 1,
            'title': 'Travels',
            'color': 0xFFFFD1F0,
            'emoji': ':airplane_departure:',
          },
          'sum': -789,
        },
        {
          'category': {
            'id': 1,
            'title': 'Travels',
            'color': 0xFFFFD1F0,
            'emoji': ':airplane_departure:',
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
            'emoji': ':house:',
            'color': 0xFFFFD1F0,
            'title': 'Home',
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
            'title': 'Home',
            'emoji': ':house:',
            'color': 0xFFFFD1F0,
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
