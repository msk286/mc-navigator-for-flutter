enum NavigationType {
  materialPageRoute,
  cupertinoPageRoute,
  namedRoute,
  // Todo(suheyl): [2024-11-05 - 5_57_a_m_] Test it.
  // customRoute,
  ;

  factory NavigationType.main() => NavigationType.materialPageRoute;
}
