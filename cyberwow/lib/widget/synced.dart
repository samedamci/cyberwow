/*

Copyright 2019 fuwa

This file is part of CyberWOW.

CyberWOW is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

CyberWOW is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with CyberWOW.  If not, see <https://www.gnu.org/licenses/>.

*/

import 'package:flutter/material.dart';

import '../state.dart';
import '../config.dart';

Widget buildSynced(BuildContext context, SyncedState state) {
  return Scaffold(

    body: new Container
    (
      padding: const EdgeInsets.all(10.0),
      color: config.backgroundColor,
      child: Align
      (
        alignment: Alignment.center,
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>
          [
            Spacer
            (
              flex: 21,
            ),
            Image.asset
            ('assets/wownero_symbol.png',
              height: 200,
            ),
            Spacer
            (
              flex: 8,
            ),
            new Expanded
            (
              flex: 15,
              child: new SingleChildScrollView
              (
                child: Text
                (
                  '${state.height}',
                  style: TextStyle
                  (
                    fontFamily: 'RobotoMono',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: config.textColor,
                  ),
                )
              )
            ),
            Spacer
            (
              flex: 1,
            ),
            SizedBox
            (
              height: 20.0,
              width: 20.0,
              child: (state.connected) ?
              Container() :
              CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    ),
  );
}
