import 'package:flutter/widgets.dart';
import 'package:one_app/profile/profile_repository.dart';

class ProfileViewModel extends ChangeNotifier {
  final ProfileRepository _repo;

  ProfileViewModel() : _repo = ProfileRepository();

  String get avatarUri => _repo.avatarUri;
}
