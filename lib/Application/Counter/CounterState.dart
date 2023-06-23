import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:assignment/Core/Counter/CounterStateValue.dart';
import 'package:assignment/Core/Counter/CounterEvent.dart';

class CounterState extends StateNotifier<CounterStateValue>{
  CounterState(): super(CounterStateValue.initial());
  void mapEventsToState(CounterEvent event){
    event.map(increment: (_){state=state.copyWith(counter: state.counter+1,);},
              decrement: (_){state=state.copyWith(counter: state.counter-1,);},
              initial:(event){state=state.copyWith(counter: event.Value,);},
    );
  }
}