import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/services/authentication/dtos/user_dto.dart';
import 'package:birdbreeder/services/authentication/mapper/user_mapper.auto_mappr.dart';
import 'package:birdbreeder/services/authentication/models/user.dart';

@AutoMappr([
  MapType<UserDto, User>(),
])
class UserMapper extends $UserMapper {}
