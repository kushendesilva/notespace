import 'package:canton_design_system/canton_design_system.dart';
import 'package:notespace/src/models/note.dart';
import 'package:notespace/src/ui/views/note_creation_view/note_creation_view.dart';
import 'package:notespace/src/ui/views/home_view/home_view.dart';

class HomeViewHeader extends StatelessWidget {
  const HomeViewHeader({required this.setState, Key? key}) : super(key: key);

  final void Function(void Function()) setState;

  @override
  Widget build(BuildContext context) {
    return ViewHeaderTwo(
      title: 'Home',
      backButton: false,
      buttonOne: CantonHeaderButton(
        backgroundColor: CantonColors.transparent,
        icon: Icon(
          FeatherIcons.home,
          color: Theme.of(context).primaryColor,
          size: 27,
        ),
          onPressed: () => CantonMethods.viewTransition(context, HomeView()),
      ),
      buttonTwo: CantonHeaderButton(
          icon: Icon(
            FeatherIcons.plusCircle,
            color: Theme.of(context).primaryColor,
            size: 27,
          ),
          backgroundColor: CantonColors.transparent,
          onPressed: () {
            CantonMethods.viewTransition(
              context,
              NoteCreationView(note: Note()),
            ).then((value) => {setState(() {})});
          }),
    );
  }
}
