import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/mapper/user_mapper.auto_mappr.dart';
import 'package:birdbreeder/models/authentication/dtos/user_dto.dart';
import 'package:birdbreeder/models/authentication/entity/user.dart';

@AutoMappr([
  MapType<UserDto, User>(),
  MapType<User, UserDto>(),
])
class UserMapper extends $UserMapper {}
