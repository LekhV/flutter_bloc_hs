import 'package:mockito/mockito.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_example_bloc/home_screen/dto/info_hs_dto.dart';

import 'package:flutter_example_bloc/home_screen/api/info_repository.dart';
import 'package:flutter_example_bloc/home_screen/bloc/info_event.dart';
import 'package:flutter_example_bloc/home_screen/bloc/info_hs_bloc.dart';
import 'package:flutter_example_bloc/home_screen/bloc/info_state.dart';

class MockInfoHSRepository extends Mock implements InfoHSRepository {}

void main() {
  group('InfoHSBloc', () {
    InfoHSBloc infoHSBloc;
    InfoHSRepository infoHSRepository;

    final InfoHSDTO infoHS = InfoHSDTO(
      patch: "19.6.0.74257",
    );

    setUp(() {
      infoHSRepository = MockInfoHSRepository();
      infoHSBloc = InfoHSBloc(infoHSRepository: infoHSRepository);
    });

    test('throws AssertionError if InfoHSRepository is null', () {
      expect(
        () => InfoHSBloc(infoHSRepository: null),
        throwsA(isAssertionError),
      );
    });

    group('InfoRequested', () {
      blocTest(
        'emits [InfoHSFailure]',
        build: () {
          when(infoHSRepository.fetchInfoHS()).thenThrow('oops');
          return infoHSBloc;
        },
        act: (bloc) => bloc.add(InfoHSFetched()),
        expect: [
          InfoHSFailure(),
        ],
      );

      blocTest<InfoHSBloc, InfoHSState>(
        'emits [ InfoHSSuccess]',
        build: () {
          when(infoHSRepository.fetchInfoHS()).thenAnswer(
            (_) => Future.value(infoHS),
          );
          return infoHSBloc;
        },
        act: (bloc) => bloc.add(
          InfoHSFetched(),
        ),
        expect: [
          InfoHSSuccess(infoHSs: infoHS),
        ],
      );
    });
  });
}
