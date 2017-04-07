! Start of program:
START;
! Defining the speed, acceleration
! Defining the work space
! and active-joints space:
CFGLIN V150.0 A150.0;
CFGANG V150.0 A150.0;

! Drawing coordinates system:
WCS X20.0 Y60.0 Z0.05 W0.0;

! Tool length definition:
TCS Z-42.5;  ! For pen
! Go to initial position in the working mode of the home configuration (++)
MoveC X25.00 Y-25.00 S100 M1; !actuator is already up at the beginning
MoveZ Z2.0;
MoveC X3.56 Y0.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X3.33 Y0.44;
MoveC X3.33 Y0.89;
MoveC X2.89 Y1.33;
MoveC X2.67 Y1.33;
MoveC X2.44 Y1.56;
MoveC X2.44 Y1.78;
MoveC X1.56 Y2.67;
MoveC X1.33 Y2.67;
MoveC X0.89 Y3.11;
MoveC X0.67 Y3.11;
MoveC X0.44 Y3.33;
MoveC X0.22 Y3.33;
MoveC X0.22 Y4.0;
MoveC X0.44 Y3.78;
MoveC X0.67 Y3.78;
MoveC X1.56 Y2.89;
MoveC X1.56 Y2.67;
MoveC X1.78 Y2.44;
MoveC X2.0 Y2.67;
MoveC X2.0 Y3.11;
MoveC X0.89 Y4.22;
MoveC X0.67 Y4.22;
MoveC X0.44 Y4.44;
MoveC X0.22 Y4.44;
MoveC X0.67 Y4.89;
MoveC X0.44 Y5.11;
MoveC X0.22 Y5.11;
MoveC X0.22 Y5.56;
MoveC X0.44 Y5.78;
MoveC X0.22 Y6.0;
MoveC X0.22 Y6.22;
MoveC X0.44 Y6.0;
MoveC X0.67 Y6.22;
MoveC X0.67 Y6.44;
MoveC X0.44 Y6.67;
MoveC X0.44 Y7.33;
MoveC X0.67 Y7.33;
MoveC X0.89 Y7.56;
MoveC X0.67 Y7.78;
MoveC X0.22 Y7.78;
MoveC X0.22 Y44.0;
MoveC X12.67 Y44.0;
MoveC X12.89 Y43.78;
MoveC X13.33 Y43.78;
MoveC X13.56 Y44.0;
MoveC X13.78 Y44.0;
MoveC X13.56 Y44.0;
MoveC X13.33 Y43.78;
MoveC X13.56 Y43.56;
MoveC X14.0 Y43.56;
MoveC X14.22 Y43.78;
MoveC X14.22 Y44.0;
MoveC X16.0 Y44.0;
MoveC X15.78 Y43.78;
MoveC X16.0 Y43.56;
MoveC X16.22 Y43.56;
MoveC X16.67 Y44.0;
MoveC X39.78 Y44.0;
MoveC X39.78 Y43.78;
MoveC X40.0 Y43.56;
MoveC X40.22 Y43.78;
MoveC X40.22 Y44.0;
MoveC X44.0 Y44.0;
MoveC X44.0 Y43.33;
MoveC X43.78 Y43.11;
MoveC X44.0 Y42.89;
MoveC X44.0 Y41.56;
MoveC X42.89 Y41.56;
MoveC X42.67 Y41.33;
MoveC X42.89 Y41.11;
MoveC X44.0 Y41.11;
MoveC X44.0 Y38.44;
MoveC X43.78 Y38.44;
MoveC X43.33 Y38.0;
MoveC X43.33 Y37.78;
MoveC X43.56 Y37.56;
MoveC X44.0 Y38.0;
MoveC X44.0 Y34.89;
MoveC X43.78 Y34.67;
MoveC X44.0 Y34.44;
MoveC X44.0 Y27.33;
MoveC X43.78 Y27.56;
MoveC X43.78 Y27.78;
MoveC X43.33 Y28.22;
MoveC X43.11 Y28.22;
MoveC X42.89 Y28.44;
MoveC X42.67 Y28.44;
MoveC X42.44 Y28.22;
MoveC X42.89 Y27.78;
MoveC X43.11 Y27.78;
MoveC X43.33 Y27.56;
MoveC X43.33 Y27.33;
MoveC X43.78 Y26.89;
MoveC X43.78 Y26.44;
MoveC X44.0 Y26.22;
MoveC X43.78 Y26.0;
MoveC X43.78 Y25.33;
MoveC X44.0 Y25.11;
MoveC X44.0 Y18.89;
MoveC X43.78 Y18.67;
MoveC X43.56 Y18.67;
MoveC X43.33 Y18.44;
MoveC X43.56 Y18.22;
MoveC X44.0 Y18.22;
MoveC X44.0 Y16.67;
MoveC X43.78 Y16.44;
MoveC X43.78 Y16.22;
MoveC X44.0 Y16.0;
MoveC X44.0 Y0.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X39.56 Y43.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.78 Y43.33;
MoveC X40.0 Y43.56;
MoveC X39.78 Y43.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X16.89 Y43.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X17.11 Y43.33;
MoveC X17.78 Y43.33;
MoveC X18.0 Y43.56;
MoveC X17.78 Y43.78;
MoveC X17.33 Y43.78;
MoveC X17.11 Y44.0;
MoveC X16.67 Y44.0;
MoveC X16.44 Y43.78;
MoveC X16.67 Y43.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X17.78 Y43.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X18.0 Y43.11;
MoveC X18.22 Y43.33;
MoveC X18.0 Y43.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X15.56 Y42.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X15.78 Y42.67;
MoveC X16.0 Y42.89;
MoveC X16.0 Y43.11;
MoveC X16.67 Y43.11;
MoveC X16.89 Y43.33;
MoveC X16.67 Y43.56;
MoveC X15.78 Y43.56;
MoveC X15.56 Y43.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X14.44 Y42.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X14.67 Y42.44;
MoveC X14.89 Y42.67;
MoveC X14.67 Y42.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X39.56 Y42.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.78 Y42.22;
MoveC X40.0 Y42.44;
MoveC X39.78 Y42.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X14.22 Y42.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X14.44 Y42.22;
MoveC X14.67 Y42.44;
MoveC X14.44 Y42.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X17.33 Y42.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X17.56 Y42.0;
MoveC X17.78 Y42.0;
MoveC X18.0 Y42.22;
MoveC X17.56 Y42.67;
MoveC X17.33 Y42.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X14.89 Y42.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X15.11 Y42.0;
MoveC X15.78 Y42.67;
MoveC X15.56 Y42.89;
MoveC X15.33 Y42.89;
MoveC X14.89 Y42.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X43.33 Y42.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X43.56 Y41.78;
MoveC X43.78 Y42.0;
MoveC X43.56 Y42.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X42.67 Y42.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X42.89 Y41.78;
MoveC X43.11 Y41.78;
MoveC X43.56 Y42.22;
MoveC X43.78 Y42.22;
MoveC X44.0 Y42.44;
MoveC X44.0 Y42.89;
MoveC X43.78 Y43.11;
MoveC X43.56 Y42.89;
MoveC X43.56 Y42.67;
MoveC X43.33 Y42.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X39.33 Y42.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.56 Y41.78;
MoveC X39.78 Y42.0;
MoveC X39.78 Y42.22;
MoveC X39.56 Y42.44;
MoveC X39.33 Y42.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X17.78 Y42.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X18.0 Y41.78;
MoveC X18.22 Y42.0;
MoveC X18.0 Y42.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X16.0 Y41.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X16.22 Y41.56;
MoveC X16.44 Y41.56;
MoveC X16.67 Y41.78;
MoveC X16.67 Y42.0;
MoveC X16.44 Y42.22;
MoveC X16.22 Y42.22;
MoveC X16.0 Y42.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X39.56 Y41.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.78 Y41.33;
MoveC X40.0 Y41.56;
MoveC X40.0 Y41.78;
MoveC X39.78 Y42.0;
MoveC X39.56 Y41.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X39.33 Y41.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.56 Y41.11;
MoveC X39.78 Y41.33;
MoveC X39.56 Y41.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X40.44 Y41.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X40.67 Y40.89;
MoveC X41.56 Y40.89;
MoveC X41.78 Y41.11;
MoveC X41.56 Y41.33;
MoveC X40.67 Y41.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X15.11 Y41.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X15.33 Y40.89;
MoveC X15.56 Y40.89;
MoveC X15.78 Y41.11;
MoveC X15.56 Y41.33;
MoveC X15.33 Y41.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X39.56 Y40.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.78 Y40.67;
MoveC X40.44 Y40.67;
MoveC X40.67 Y40.89;
MoveC X40.44 Y41.11;
MoveC X40.0 Y41.11;
MoveC X39.78 Y41.33;
MoveC X39.56 Y41.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X42.22 Y40.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X42.44 Y40.44;
MoveC X42.67 Y40.67;
MoveC X42.44 Y40.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X15.33 Y40.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X15.56 Y40.22;
MoveC X16.0 Y40.22;
MoveC X16.22 Y40.44;
MoveC X16.0 Y40.67;
MoveC X15.78 Y40.67;
MoveC X15.56 Y40.89;
MoveC X15.33 Y40.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X39.11 Y40.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.33 Y40.0;
MoveC X39.78 Y40.44;
MoveC X39.78 Y40.67;
MoveC X39.56 Y40.89;
MoveC X39.11 Y40.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X16.0 Y40.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X16.22 Y40.0;
MoveC X16.44 Y40.22;
MoveC X16.22 Y40.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X16.22 Y40.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X16.44 Y39.78;
MoveC X16.67 Y40.0;
MoveC X16.44 Y40.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X42.89 Y39.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X43.11 Y39.56;
MoveC X43.33 Y39.78;
MoveC X43.33 Y40.0;
MoveC X43.56 Y40.22;
MoveC X43.56 Y40.44;
MoveC X43.78 Y40.67;
MoveC X43.56 Y40.89;
MoveC X43.33 Y40.89;
MoveC X43.11 Y40.67;
MoveC X43.11 Y40.44;
MoveC X42.89 Y40.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X41.56 Y39.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X41.78 Y39.33;
MoveC X42.0 Y39.56;
MoveC X41.78 Y39.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X19.33 Y39.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X19.56 Y39.11;
MoveC X22.67 Y39.11;
MoveC X22.89 Y39.33;
MoveC X22.67 Y39.56;
MoveC X19.56 Y39.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X43.11 Y39.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X43.33 Y38.89;
MoveC X43.78 Y39.33;
MoveC X43.56 Y39.56;
MoveC X43.33 Y39.56;
MoveC X43.11 Y39.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X22.67 Y39.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X22.89 Y38.89;
MoveC X24.22 Y38.89;
MoveC X24.44 Y39.11;
MoveC X24.22 Y39.33;
MoveC X22.89 Y39.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X18.89 Y39.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X19.11 Y38.89;
MoveC X19.33 Y38.89;
MoveC X19.56 Y39.11;
MoveC X19.33 Y39.33;
MoveC X19.11 Y39.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X17.78 Y39.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X18.0 Y38.89;
MoveC X18.67 Y38.89;
MoveC X18.89 Y39.11;
MoveC X18.67 Y39.33;
MoveC X18.0 Y39.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X41.11 Y38.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X41.33 Y38.67;
MoveC X41.56 Y38.89;
MoveC X41.33 Y39.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X24.22 Y38.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X24.44 Y38.67;
MoveC X25.11 Y38.67;
MoveC X25.33 Y38.89;
MoveC X25.11 Y39.11;
MoveC X24.44 Y39.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X18.67 Y38.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X18.89 Y38.67;
MoveC X19.11 Y38.89;
MoveC X18.89 Y39.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X16.89 Y38.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X17.11 Y38.67;
MoveC X17.78 Y38.67;
MoveC X18.0 Y38.89;
MoveC X17.78 Y39.11;
MoveC X17.11 Y39.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X12.22 Y38.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X12.44 Y38.67;
MoveC X13.11 Y39.33;
MoveC X13.11 Y39.56;
MoveC X13.56 Y40.0;
MoveC X13.56 Y40.22;
MoveC X14.22 Y40.89;
MoveC X14.22 Y41.11;
MoveC X14.67 Y41.56;
MoveC X14.67 Y41.78;
MoveC X14.89 Y41.78;
MoveC X15.11 Y42.0;
MoveC X14.89 Y42.22;
MoveC X14.44 Y42.22;
MoveC X14.22 Y42.0;
MoveC X14.22 Y41.78;
MoveC X13.78 Y41.33;
MoveC X13.78 Y41.11;
MoveC X13.11 Y40.44;
MoveC X13.11 Y40.22;
MoveC X12.67 Y39.78;
MoveC X12.67 Y39.56;
MoveC X12.22 Y39.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X42.89 Y38.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X43.11 Y38.44;
MoveC X43.33 Y38.67;
MoveC X43.33 Y38.89;
MoveC X43.11 Y39.11;
MoveC X42.89 Y38.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X25.11 Y38.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X25.33 Y38.44;
MoveC X26.0 Y38.44;
MoveC X26.22 Y38.67;
MoveC X26.0 Y38.89;
MoveC X25.33 Y38.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X16.0 Y38.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X16.22 Y38.44;
MoveC X16.89 Y38.44;
MoveC X17.11 Y38.67;
MoveC X16.89 Y38.89;
MoveC X16.22 Y38.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X39.56 Y38.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.78 Y38.22;
MoveC X40.0 Y38.44;
MoveC X39.78 Y38.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X26.0 Y38.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X26.22 Y38.22;
MoveC X26.44 Y38.22;
MoveC X26.67 Y38.44;
MoveC X26.44 Y38.67;
MoveC X26.22 Y38.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X24.0 Y38.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X24.22 Y38.22;
MoveC X24.44 Y38.44;
MoveC X24.22 Y38.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X18.0 Y38.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X18.22 Y38.22;
MoveC X18.44 Y38.22;
MoveC X18.67 Y38.44;
MoveC X18.44 Y38.67;
MoveC X18.22 Y38.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X15.33 Y38.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X15.56 Y38.22;
MoveC X16.0 Y38.22;
MoveC X16.22 Y38.44;
MoveC X16.0 Y38.67;
MoveC X15.56 Y38.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X26.44 Y38.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X26.67 Y38.0;
MoveC X27.33 Y38.0;
MoveC X27.56 Y38.22;
MoveC X27.33 Y38.44;
MoveC X26.67 Y38.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X24.89 Y38.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X25.11 Y38.0;
MoveC X25.33 Y38.22;
MoveC X25.11 Y38.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X24.22 Y38.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X24.44 Y38.0;
MoveC X24.67 Y38.0;
MoveC X24.89 Y38.22;
MoveC X24.67 Y38.44;
MoveC X24.44 Y38.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X23.11 Y38.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X23.33 Y38.0;
MoveC X24.0 Y38.0;
MoveC X24.22 Y38.22;
MoveC X24.0 Y38.44;
MoveC X23.33 Y38.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X18.44 Y38.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X18.67 Y38.0;
MoveC X19.11 Y38.0;
MoveC X19.33 Y38.22;
MoveC X23.11 Y38.22;
MoveC X23.33 Y38.44;
MoveC X23.11 Y38.67;
MoveC X19.11 Y38.67;
MoveC X18.89 Y38.44;
MoveC X18.67 Y38.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X16.89 Y38.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X17.11 Y38.0;
MoveC X18.0 Y38.0;
MoveC X18.22 Y38.22;
MoveC X18.0 Y38.44;
MoveC X17.11 Y38.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X14.89 Y38.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X15.11 Y38.0;
MoveC X15.33 Y38.0;
MoveC X15.56 Y38.22;
MoveC X15.33 Y38.44;
MoveC X15.11 Y38.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X11.78 Y38.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X12.0 Y38.0;
MoveC X12.44 Y38.44;
MoveC X12.44 Y38.67;
MoveC X12.22 Y38.89;
MoveC X11.78 Y38.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X40.67 Y38.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X40.89 Y37.78;
MoveC X41.11 Y38.0;
MoveC X41.11 Y38.44;
MoveC X40.89 Y38.67;
MoveC X40.67 Y38.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X39.11 Y38.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.33 Y37.78;
MoveC X39.56 Y38.0;
MoveC X39.56 Y39.11;
MoveC X39.78 Y39.33;
MoveC X39.78 Y39.56;
MoveC X39.56 Y39.78;
MoveC X39.11 Y39.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X27.33 Y38.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X27.56 Y37.78;
MoveC X27.78 Y37.78;
MoveC X28.0 Y38.0;
MoveC X27.78 Y38.22;
MoveC X27.56 Y38.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X25.11 Y38.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X25.33 Y37.78;
MoveC X25.56 Y37.78;
MoveC X25.78 Y38.0;
MoveC X25.56 Y38.22;
MoveC X25.33 Y38.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X24.67 Y38.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X24.89 Y37.78;
MoveC X25.11 Y38.0;
MoveC X24.89 Y38.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X16.44 Y38.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X16.67 Y37.78;
MoveC X16.89 Y37.78;
MoveC X17.11 Y38.0;
MoveC X16.89 Y38.22;
MoveC X16.67 Y38.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X14.22 Y38.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X14.44 Y37.78;
MoveC X14.89 Y37.78;
MoveC X15.11 Y38.0;
MoveC X14.89 Y38.22;
MoveC X14.44 Y38.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X42.44 Y37.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X42.67 Y37.56;
MoveC X42.89 Y37.78;
MoveC X42.89 Y38.0;
MoveC X43.11 Y38.22;
MoveC X43.11 Y38.44;
MoveC X42.89 Y38.67;
MoveC X42.44 Y38.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X40.44 Y37.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X40.67 Y37.56;
MoveC X40.89 Y37.78;
MoveC X40.67 Y38.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X27.78 Y37.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X28.0 Y37.56;
MoveC X28.44 Y37.56;
MoveC X28.67 Y37.78;
MoveC X28.44 Y38.0;
MoveC X28.0 Y38.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X25.56 Y37.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X25.78 Y37.56;
MoveC X26.22 Y37.56;
MoveC X26.44 Y37.78;
MoveC X26.22 Y38.0;
MoveC X25.78 Y38.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X15.78 Y37.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X16.0 Y37.56;
MoveC X16.44 Y37.56;
MoveC X16.67 Y37.78;
MoveC X16.44 Y38.0;
MoveC X16.0 Y38.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X13.56 Y37.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X13.78 Y37.56;
MoveC X14.22 Y37.56;
MoveC X14.44 Y37.78;
MoveC X14.22 Y38.0;
MoveC X13.78 Y38.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X42.22 Y37.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X42.44 Y37.33;
MoveC X42.67 Y37.56;
MoveC X42.44 Y37.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X40.22 Y37.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X40.44 Y37.33;
MoveC X40.67 Y37.56;
MoveC X40.44 Y37.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X26.22 Y37.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X26.44 Y37.33;
MoveC X27.11 Y37.33;
MoveC X27.33 Y37.56;
MoveC X27.11 Y37.78;
MoveC X26.44 Y37.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X14.89 Y37.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X15.11 Y37.33;
MoveC X15.78 Y37.33;
MoveC X16.0 Y37.56;
MoveC X15.78 Y37.78;
MoveC X15.11 Y37.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X39.33 Y37.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.56 Y37.11;
MoveC X40.22 Y37.78;
MoveC X40.22 Y38.0;
MoveC X40.89 Y38.67;
MoveC X40.89 Y38.89;
MoveC X41.33 Y39.33;
MoveC X41.33 Y39.56;
MoveC X42.0 Y40.22;
MoveC X42.0 Y40.44;
MoveC X42.44 Y40.89;
MoveC X42.67 Y40.89;
MoveC X42.89 Y41.11;
MoveC X42.67 Y41.33;
MoveC X42.22 Y41.33;
MoveC X41.56 Y40.67;
MoveC X41.56 Y40.44;
MoveC X40.89 Y39.78;
MoveC X40.89 Y39.56;
MoveC X40.44 Y39.11;
MoveC X40.44 Y38.89;
MoveC X39.78 Y38.22;
MoveC X39.78 Y38.0;
MoveC X39.33 Y37.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X28.89 Y37.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X29.11 Y37.11;
MoveC X29.33 Y37.33;
MoveC X28.89 Y37.78;
MoveC X28.67 Y37.78;
MoveC X28.44 Y37.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X27.11 Y37.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X27.33 Y37.11;
MoveC X27.56 Y37.11;
MoveC X27.78 Y37.33;
MoveC X27.56 Y37.56;
MoveC X27.33 Y37.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X14.44 Y37.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X14.67 Y37.11;
MoveC X14.89 Y37.11;
MoveC X15.11 Y37.33;
MoveC X14.89 Y37.56;
MoveC X14.67 Y37.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X12.89 Y37.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X13.11 Y37.11;
MoveC X13.33 Y37.11;
MoveC X13.78 Y37.56;
MoveC X13.56 Y37.78;
MoveC X13.33 Y37.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X42.0 Y37.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X42.22 Y36.89;
MoveC X42.44 Y37.11;
MoveC X42.44 Y37.33;
MoveC X42.22 Y37.56;
MoveC X42.0 Y37.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X40.0 Y37.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X40.22 Y36.89;
MoveC X40.44 Y37.11;
MoveC X40.22 Y37.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X29.11 Y37.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X29.33 Y36.89;
MoveC X29.56 Y36.89;
MoveC X29.78 Y37.11;
MoveC X29.56 Y37.33;
MoveC X29.33 Y37.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X27.56 Y37.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X27.78 Y36.89;
MoveC X28.22 Y36.89;
MoveC X28.44 Y37.11;
MoveC X28.22 Y37.33;
MoveC X27.78 Y37.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X12.44 Y37.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X12.67 Y36.89;
MoveC X12.89 Y36.89;
MoveC X13.11 Y37.11;
MoveC X12.89 Y37.33;
MoveC X12.67 Y37.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X39.78 Y36.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X40.0 Y36.67;
MoveC X40.22 Y36.89;
MoveC X40.0 Y37.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X29.56 Y36.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X29.78 Y36.67;
MoveC X30.0 Y36.67;
MoveC X30.22 Y36.89;
MoveC X30.0 Y37.11;
MoveC X29.78 Y37.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X28.22 Y36.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X28.44 Y36.67;
MoveC X28.67 Y36.67;
MoveC X28.89 Y36.89;
MoveC X28.67 Y37.11;
MoveC X28.44 Y37.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X12.0 Y36.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X12.22 Y36.67;
MoveC X12.44 Y36.67;
MoveC X12.67 Y36.89;
MoveC X12.44 Y37.11;
MoveC X12.22 Y37.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X10.89 Y36.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X11.11 Y36.67;
MoveC X11.33 Y36.67;
MoveC X11.56 Y36.89;
MoveC X11.56 Y37.33;
MoveC X12.0 Y37.78;
MoveC X12.0 Y38.0;
MoveC X11.78 Y38.22;
MoveC X11.11 Y37.56;
MoveC X11.11 Y37.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X30.0 Y36.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X30.22 Y36.44;
MoveC X30.44 Y36.44;
MoveC X30.67 Y36.67;
MoveC X30.44 Y36.89;
MoveC X30.22 Y36.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X28.67 Y36.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X28.89 Y36.44;
MoveC X29.11 Y36.44;
MoveC X29.33 Y36.67;
MoveC X29.11 Y36.89;
MoveC X28.89 Y36.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X20.0 Y36.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X20.22 Y36.44;
MoveC X20.44 Y36.67;
MoveC X20.44 Y37.78;
MoveC X20.22 Y38.0;
MoveC X20.0 Y37.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X14.22 Y36.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X14.44 Y36.44;
MoveC X14.67 Y36.67;
MoveC X14.44 Y36.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X10.67 Y36.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X10.89 Y36.44;
MoveC X11.11 Y36.67;
MoveC X10.89 Y36.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X30.44 Y36.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X30.67 Y36.22;
MoveC X30.89 Y36.22;
MoveC X31.11 Y36.44;
MoveC X30.89 Y36.67;
MoveC X30.67 Y36.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X11.33 Y36.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X11.56 Y36.22;
MoveC X11.78 Y36.22;
MoveC X12.22 Y36.67;
MoveC X12.0 Y36.89;
MoveC X11.78 Y36.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X41.78 Y36.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X42.0 Y36.0;
MoveC X42.22 Y36.0;
MoveC X42.44 Y36.22;
MoveC X42.22 Y36.44;
MoveC X42.0 Y36.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X29.56 Y36.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X29.78 Y36.0;
MoveC X30.0 Y36.22;
MoveC X29.56 Y36.67;
MoveC X29.33 Y36.67;
MoveC X29.11 Y36.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X12.22 Y36.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X12.44 Y36.0;
MoveC X12.67 Y36.0;
MoveC X12.89 Y36.22;
MoveC X13.11 Y36.22;
MoveC X13.56 Y36.67;
MoveC X14.22 Y36.67;
MoveC X14.67 Y37.11;
MoveC X14.44 Y37.33;
MoveC X14.22 Y37.33;
MoveC X14.0 Y37.11;
MoveC X13.33 Y37.11;
MoveC X12.89 Y36.67;
MoveC X12.67 Y36.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X10.89 Y36.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X11.11 Y36.0;
MoveC X11.33 Y36.0;
MoveC X11.56 Y36.22;
MoveC X11.33 Y36.44;
MoveC X11.11 Y36.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X40.44 Y36.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X40.67 Y35.78;
MoveC X40.89 Y36.0;
MoveC X41.11 Y35.78;
MoveC X41.56 Y36.22;
MoveC X41.56 Y36.67;
MoveC X42.0 Y37.11;
MoveC X42.0 Y37.56;
MoveC X42.22 Y37.78;
MoveC X42.22 Y38.22;
MoveC X42.67 Y38.67;
MoveC X42.67 Y38.89;
MoveC X43.11 Y39.33;
MoveC X43.11 Y39.56;
MoveC X42.89 Y39.78;
MoveC X42.22 Y39.11;
MoveC X42.22 Y38.89;
MoveC X41.78 Y38.44;
MoveC X41.78 Y38.0;
MoveC X41.56 Y37.78;
MoveC X41.56 Y37.33;
MoveC X41.11 Y36.89;
MoveC X41.11 Y36.44;
MoveC X40.67 Y36.44;
MoveC X40.44 Y36.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X39.56 Y36.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.78 Y35.78;
MoveC X40.0 Y36.0;
MoveC X39.78 Y36.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X29.78 Y36.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X30.0 Y35.78;
MoveC X30.22 Y35.78;
MoveC X30.44 Y36.0;
MoveC X30.22 Y36.22;
MoveC X30.0 Y36.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X16.67 Y36.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X16.89 Y35.78;
MoveC X17.11 Y35.78;
MoveC X18.44 Y37.11;
MoveC X18.22 Y37.33;
MoveC X18.0 Y37.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X16.0 Y36.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X16.22 Y35.78;
MoveC X16.44 Y35.78;
MoveC X16.67 Y36.0;
MoveC X16.22 Y36.44;
MoveC X16.0 Y36.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X18.89 Y35.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X19.11 Y35.56;
MoveC X19.33 Y35.56;
MoveC X20.22 Y36.44;
MoveC X20.0 Y36.67;
MoveC X19.78 Y36.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X16.44 Y35.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X16.67 Y35.56;
MoveC X16.89 Y35.78;
MoveC X16.67 Y36.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X39.11 Y35.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.33 Y35.33;
MoveC X39.56 Y35.56;
MoveC X39.56 Y37.11;
MoveC X39.33 Y37.33;
MoveC X39.11 Y37.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X30.67 Y35.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X30.89 Y35.33;
MoveC X31.11 Y35.56;
MoveC X30.67 Y36.0;
MoveC X30.44 Y36.0;
MoveC X30.22 Y35.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X20.22 Y35.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X20.44 Y35.33;
MoveC X20.67 Y35.56;
MoveC X20.44 Y35.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X19.56 Y35.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X19.78 Y35.33;
MoveC X20.0 Y35.56;
MoveC X19.78 Y35.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X18.0 Y35.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X18.22 Y35.33;
MoveC X18.89 Y35.33;
MoveC X19.11 Y35.56;
MoveC X18.89 Y35.78;
MoveC X18.44 Y35.78;
MoveC X18.22 Y36.0;
MoveC X18.22 Y36.22;
MoveC X18.0 Y36.44;
MoveC X17.78 Y36.22;
MoveC X17.78 Y36.0;
MoveC X17.56 Y35.78;
MoveC X17.78 Y35.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X11.11 Y35.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X11.33 Y35.33;
MoveC X11.56 Y35.33;
MoveC X11.78 Y35.56;
MoveC X12.0 Y35.56;
MoveC X12.44 Y36.0;
MoveC X12.22 Y36.22;
MoveC X12.0 Y36.22;
MoveC X11.78 Y36.0;
MoveC X11.56 Y36.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X10.0 Y35.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X10.22 Y35.33;
MoveC X10.44 Y35.33;
MoveC X11.11 Y36.0;
MoveC X10.89 Y36.22;
MoveC X10.67 Y36.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X38.89 Y35.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.11 Y35.11;
MoveC X39.33 Y35.33;
MoveC X39.11 Y35.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X32.0 Y35.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X32.22 Y35.11;
MoveC X32.44 Y35.33;
MoveC X31.33 Y36.44;
MoveC X31.11 Y36.44;
MoveC X30.89 Y36.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X19.78 Y35.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X20.0 Y35.11;
MoveC X20.22 Y35.11;
MoveC X20.44 Y35.33;
MoveC X20.22 Y35.56;
MoveC X20.0 Y35.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X19.11 Y35.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X19.33 Y35.11;
MoveC X19.56 Y35.11;
MoveC X19.78 Y35.33;
MoveC X19.56 Y35.56;
MoveC X19.33 Y35.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X41.78 Y35.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X42.0 Y34.89;
MoveC X42.22 Y35.11;
MoveC X42.22 Y35.33;
MoveC X42.44 Y35.56;
MoveC X42.0 Y36.0;
MoveC X41.78 Y35.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X39.11 Y35.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.33 Y34.89;
MoveC X39.56 Y35.11;
MoveC X39.33 Y35.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X14.89 Y35.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X15.11 Y34.89;
MoveC X15.33 Y35.11;
MoveC X15.33 Y35.56;
MoveC X15.11 Y35.78;
MoveC X14.89 Y35.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X14.22 Y34.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X14.44 Y34.89;
MoveC X14.67 Y35.11;
MoveC X14.22 Y35.56;
MoveC X14.0 Y35.56;
MoveC X13.78 Y35.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X43.11 Y34.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X43.33 Y34.67;
MoveC X43.56 Y34.67;
MoveC X43.78 Y34.89;
MoveC X43.56 Y35.11;
MoveC X43.78 Y35.11;
MoveC X44.0 Y35.33;
MoveC X44.0 Y36.0;
MoveC X43.78 Y36.22;
MoveC X42.89 Y36.22;
MoveC X42.67 Y36.0;
MoveC X42.67 Y35.56;
MoveC X43.11 Y35.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X43.33 Y35.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X43.11 Y35.78;
MoveC X43.56 Y35.78;
MoveC X43.56 Y35.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X41.56 Y34.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X41.78 Y34.67;
MoveC X42.0 Y34.89;
MoveC X41.78 Y35.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X38.89 Y34.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.11 Y34.67;
MoveC X39.33 Y34.89;
MoveC X39.11 Y35.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X31.56 Y34.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X31.78 Y34.67;
MoveC X32.0 Y34.89;
MoveC X31.33 Y35.56;
MoveC X31.11 Y35.56;
MoveC X30.89 Y35.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X14.67 Y34.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X14.89 Y34.67;
MoveC X15.11 Y34.89;
MoveC X14.89 Y35.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X41.33 Y34.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X41.56 Y34.44;
MoveC X41.78 Y34.67;
MoveC X41.56 Y34.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X39.11 Y34.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.33 Y34.44;
MoveC X39.56 Y34.67;
MoveC X39.33 Y34.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X32.89 Y34.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X33.11 Y34.44;
MoveC X33.33 Y34.67;
MoveC X32.67 Y35.33;
MoveC X32.44 Y35.33;
MoveC X32.22 Y35.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X41.11 Y34.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X41.33 Y34.22;
MoveC X41.56 Y34.44;
MoveC X41.33 Y34.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X39.78 Y34.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X40.0 Y34.22;
MoveC X40.44 Y34.67;
MoveC X40.44 Y35.11;
MoveC X40.67 Y35.33;
MoveC X40.67 Y35.78;
MoveC X40.44 Y36.0;
MoveC X40.22 Y35.78;
MoveC X40.22 Y35.56;
MoveC X40.0 Y35.33;
MoveC X40.0 Y34.89;
MoveC X39.78 Y34.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X38.89 Y34.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.11 Y34.22;
MoveC X39.33 Y34.44;
MoveC X39.11 Y34.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X33.11 Y34.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X33.33 Y34.22;
MoveC X33.56 Y34.44;
MoveC X33.33 Y34.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X32.22 Y34.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X32.44 Y34.22;
MoveC X32.67 Y34.44;
MoveC X32.22 Y34.89;
MoveC X32.0 Y34.89;
MoveC X31.78 Y34.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X8.67 Y34.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.89 Y34.22;
MoveC X9.11 Y34.22;
MoveC X10.22 Y35.33;
MoveC X10.0 Y35.56;
MoveC X9.78 Y35.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X42.44 Y34.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X42.67 Y34.0;
MoveC X42.89 Y34.22;
MoveC X42.67 Y34.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X40.89 Y34.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X41.11 Y34.0;
MoveC X41.33 Y34.22;
MoveC X41.11 Y34.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X33.33 Y34.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X33.56 Y34.0;
MoveC X33.78 Y34.22;
MoveC X33.56 Y34.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X39.56 Y34.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.78 Y33.78;
MoveC X40.0 Y34.0;
MoveC X39.78 Y34.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X13.78 Y34.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X14.0 Y33.78;
MoveC X14.44 Y34.22;
MoveC X14.67 Y34.22;
MoveC X14.89 Y34.44;
MoveC X14.67 Y34.67;
MoveC X14.22 Y34.67;
MoveC X13.78 Y34.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X42.22 Y33.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X42.44 Y33.56;
MoveC X42.67 Y33.56;
MoveC X42.89 Y33.78;
MoveC X42.44 Y34.22;
MoveC X42.22 Y34.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X34.0 Y33.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X34.22 Y33.78;
MoveC X34.22 Y34.0;
MoveC X34.0 Y34.22;
MoveC X33.78 Y34.22;
MoveC X33.56 Y34.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X8.0 Y33.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.22 Y33.56;
MoveC X8.89 Y34.22;
MoveC X8.67 Y34.44;
MoveC X8.44 Y34.44;
MoveC X8.0 Y34.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X42.67 Y33.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X42.89 Y33.33;
MoveC X43.11 Y33.56;
MoveC X42.89 Y33.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X34.0 Y33.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X34.22 Y33.33;
MoveC X34.44 Y33.56;
MoveC X34.22 Y33.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X43.33 Y33.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X43.56 Y33.11;
MoveC X43.78 Y33.33;
MoveC X43.78 Y33.78;
MoveC X43.33 Y34.22;
MoveC X42.89 Y34.22;
MoveC X42.67 Y34.0;
MoveC X42.89 Y33.78;
MoveC X43.11 Y33.78;
MoveC X43.33 Y33.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X34.22 Y33.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X34.44 Y33.11;
MoveC X34.67 Y33.33;
MoveC X34.44 Y33.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X14.0 Y33.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X14.22 Y33.11;
MoveC X14.44 Y33.33;
MoveC X14.44 Y33.78;
MoveC X14.22 Y34.0;
MoveC X14.0 Y33.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X42.44 Y33.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X42.67 Y32.89;
MoveC X42.89 Y33.11;
MoveC X42.67 Y33.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X39.11 Y33.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.33 Y32.89;
MoveC X39.56 Y33.11;
MoveC X39.56 Y34.22;
MoveC X39.33 Y34.44;
MoveC X39.11 Y34.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X16.22 Y33.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X16.44 Y32.89;
MoveC X16.89 Y32.89;
MoveC X17.11 Y33.11;
MoveC X16.89 Y33.33;
MoveC X16.67 Y33.33;
MoveC X16.44 Y33.56;
MoveC X16.22 Y33.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X8.22 Y33.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.44 Y32.89;
MoveC X9.33 Y33.78;
MoveC X9.56 Y33.78;
MoveC X10.44 Y34.67;
MoveC X10.67 Y34.67;
MoveC X11.33 Y35.33;
MoveC X11.11 Y35.56;
MoveC X10.89 Y35.56;
MoveC X10.44 Y35.11;
MoveC X10.22 Y35.11;
MoveC X9.33 Y34.22;
MoveC X9.11 Y34.22;
MoveC X8.22 Y33.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X43.56 Y32.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X43.78 Y32.67;
MoveC X44.0 Y32.89;
MoveC X44.0 Y33.11;
MoveC X43.78 Y33.33;
MoveC X43.56 Y33.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X42.67 Y32.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X42.89 Y32.67;
MoveC X43.11 Y32.67;
MoveC X43.33 Y32.89;
MoveC X43.33 Y33.33;
MoveC X43.11 Y33.56;
MoveC X42.89 Y33.33;
MoveC X42.89 Y33.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X39.78 Y32.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X40.0 Y32.67;
MoveC X40.22 Y32.89;
MoveC X40.22 Y33.33;
MoveC X40.0 Y33.56;
MoveC X39.78 Y33.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X15.11 Y32.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X15.33 Y32.67;
MoveC X15.78 Y33.11;
MoveC X15.78 Y33.33;
MoveC X15.56 Y33.56;
MoveC X15.11 Y33.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X8.0 Y32.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.22 Y32.67;
MoveC X8.44 Y32.89;
MoveC X8.22 Y33.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X34.22 Y32.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X34.44 Y32.67;
MoveC X34.44 Y32.89;
MoveC X32.89 Y34.44;
MoveC X32.67 Y34.44;
MoveC X32.44 Y34.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X14.22 Y32.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X14.44 Y32.44;
MoveC X14.67 Y32.44;
MoveC X14.89 Y32.67;
MoveC X14.67 Y32.89;
MoveC X14.67 Y33.11;
MoveC X14.44 Y33.33;
MoveC X14.22 Y33.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X7.78 Y32.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.0 Y32.44;
MoveC X8.22 Y32.67;
MoveC X8.0 Y32.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X40.89 Y32.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X41.11 Y32.22;
MoveC X41.33 Y32.44;
MoveC X41.33 Y32.67;
MoveC X41.56 Y32.89;
MoveC X41.56 Y33.33;
MoveC X41.78 Y33.56;
MoveC X41.78 Y33.78;
MoveC X41.56 Y34.0;
MoveC X41.11 Y33.56;
MoveC X41.11 Y33.11;
MoveC X40.89 Y32.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X35.11 Y32.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X35.33 Y32.44;
MoveC X35.33 Y32.67;
MoveC X34.67 Y33.33;
MoveC X34.44 Y33.11;
MoveC X34.44 Y32.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X6.89 Y32.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X7.11 Y32.22;
MoveC X8.22 Y33.33;
MoveC X8.22 Y33.56;
MoveC X8.0 Y33.78;
MoveC X6.89 Y32.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X20.22 Y32.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X20.44 Y32.0;
MoveC X20.67 Y32.22;
MoveC X20.0 Y32.89;
MoveC X19.78 Y32.89;
MoveC X19.56 Y33.11;
MoveC X19.33 Y33.11;
MoveC X18.89 Y33.56;
MoveC X18.67 Y33.56;
MoveC X17.78 Y34.44;
MoveC X17.78 Y34.67;
MoveC X17.56 Y34.89;
MoveC X16.44 Y34.89;
MoveC X16.22 Y34.67;
MoveC X16.44 Y34.44;
MoveC X17.33 Y34.44;
MoveC X17.33 Y34.22;
MoveC X18.44 Y33.11;
MoveC X18.67 Y33.11;
MoveC X19.11 Y32.67;
MoveC X19.33 Y32.67;
MoveC X19.56 Y32.44;
MoveC X19.78 Y32.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X39.33 Y32.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.56 Y31.78;
MoveC X39.78 Y32.0;
MoveC X39.78 Y32.89;
MoveC X39.56 Y33.11;
MoveC X39.33 Y32.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X34.67 Y31.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X34.89 Y32.0;
MoveC X34.89 Y32.22;
MoveC X34.44 Y32.67;
MoveC X34.22 Y32.44;
MoveC X34.22 Y32.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X19.11 Y32.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X19.33 Y31.78;
MoveC X19.56 Y32.0;
MoveC X19.56 Y32.22;
MoveC X19.33 Y32.44;
MoveC X19.11 Y32.44;
MoveC X18.67 Y32.89;
MoveC X18.44 Y32.89;
MoveC X18.22 Y33.11;
MoveC X18.0 Y33.11;
MoveC X17.56 Y33.56;
MoveC X17.56 Y33.78;
MoveC X17.33 Y34.0;
MoveC X17.11 Y33.78;
MoveC X17.11 Y33.33;
MoveC X17.78 Y32.67;
MoveC X18.0 Y32.67;
MoveC X18.22 Y32.44;
MoveC X18.44 Y32.44;
MoveC X18.89 Y32.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X7.33 Y32.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X7.56 Y31.78;
MoveC X8.0 Y32.22;
MoveC X8.0 Y32.44;
MoveC X7.78 Y32.67;
MoveC X7.33 Y32.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X42.0 Y31.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X42.22 Y31.56;
MoveC X42.67 Y32.0;
MoveC X43.33 Y32.0;
MoveC X43.78 Y32.44;
MoveC X43.78 Y32.67;
MoveC X43.56 Y32.89;
MoveC X43.11 Y32.44;
MoveC X42.44 Y32.44;
MoveC X42.0 Y32.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X19.33 Y31.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X19.56 Y31.56;
MoveC X20.0 Y31.56;
MoveC X20.22 Y31.78;
MoveC X20.0 Y32.0;
MoveC X19.56 Y32.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X42.22 Y31.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X42.44 Y31.33;
MoveC X42.67 Y31.56;
MoveC X42.44 Y31.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X39.56 Y31.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.78 Y31.11;
MoveC X40.0 Y31.33;
MoveC X40.0 Y31.78;
MoveC X39.78 Y32.0;
MoveC X39.56 Y31.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X20.44 Y31.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X20.67 Y31.33;
MoveC X20.67 Y31.56;
MoveC X20.44 Y31.78;
MoveC X20.22 Y31.78;
MoveC X20.0 Y31.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X36.22 Y30.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X36.44 Y31.11;
MoveC X36.44 Y31.33;
MoveC X35.33 Y32.44;
MoveC X35.11 Y32.22;
MoveC X35.11 Y32.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X35.33 Y30.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X35.56 Y31.11;
MoveC X35.56 Y31.33;
MoveC X34.89 Y32.0;
MoveC X34.67 Y31.78;
MoveC X34.67 Y31.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X16.0 Y31.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X16.22 Y30.89;
MoveC X16.44 Y31.11;
MoveC X16.44 Y31.33;
MoveC X16.22 Y31.56;
MoveC X16.0 Y31.56;
MoveC X15.78 Y31.78;
MoveC X15.78 Y32.0;
MoveC X15.11 Y32.67;
MoveC X14.89 Y32.67;
MoveC X14.67 Y32.44;
MoveC X15.33 Y31.78;
MoveC X15.33 Y31.56;
MoveC X15.78 Y31.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X6.67 Y31.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X6.89 Y30.89;
MoveC X7.56 Y31.56;
MoveC X7.56 Y31.78;
MoveC X7.33 Y32.0;
MoveC X6.67 Y31.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X5.78 Y31.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X6.0 Y30.89;
MoveC X7.11 Y32.0;
MoveC X7.11 Y32.22;
MoveC X6.89 Y32.44;
MoveC X5.78 Y31.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X42.22 Y30.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X42.89 Y30.67;
MoveC X43.11 Y30.89;
MoveC X43.11 Y31.33;
MoveC X42.89 Y31.56;
MoveC X42.67 Y31.56;
MoveC X42.44 Y31.33;
MoveC X42.67 Y31.11;
MoveC X42.44 Y31.11;
MoveC X42.0 Y31.56;
MoveC X42.0 Y32.22;
MoveC X42.22 Y32.44;
MoveC X42.67 Y32.44;
MoveC X42.89 Y32.67;
MoveC X42.67 Y32.89;
MoveC X42.0 Y32.89;
MoveC X41.56 Y32.44;
MoveC X41.56 Y31.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X16.44 Y30.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X16.67 Y30.67;
MoveC X16.89 Y30.89;
MoveC X16.89 Y31.11;
MoveC X16.67 Y31.33;
MoveC X16.44 Y31.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X40.67 Y30.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X40.89 Y30.44;
MoveC X41.11 Y30.67;
MoveC X41.11 Y31.78;
MoveC X40.89 Y32.0;
MoveC X40.67 Y31.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X36.22 Y30.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X36.44 Y30.44;
MoveC X36.67 Y30.67;
MoveC X36.67 Y30.89;
MoveC X36.44 Y31.11;
MoveC X36.22 Y30.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X16.89 Y30.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X17.11 Y30.44;
MoveC X17.33 Y30.67;
MoveC X17.11 Y30.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X35.78 Y30.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X36.0 Y30.44;
MoveC X36.0 Y30.67;
MoveC X35.56 Y31.11;
MoveC X35.33 Y30.89;
MoveC X35.33 Y30.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X6.22 Y30.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X6.44 Y30.22;
MoveC X6.89 Y30.67;
MoveC X6.89 Y30.89;
MoveC X6.67 Y31.11;
MoveC X6.22 Y30.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X36.44 Y30.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X36.67 Y30.0;
MoveC X36.89 Y30.22;
MoveC X36.89 Y30.44;
MoveC X36.67 Y30.67;
MoveC X36.44 Y30.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X5.33 Y30.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X5.56 Y30.0;
MoveC X5.78 Y30.22;
MoveC X5.78 Y30.44;
MoveC X6.0 Y30.67;
MoveC X6.0 Y30.89;
MoveC X5.78 Y31.11;
MoveC X5.33 Y30.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X39.78 Y30.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X40.0 Y29.78;
MoveC X40.22 Y30.0;
MoveC X40.22 Y31.11;
MoveC X40.0 Y31.33;
MoveC X39.78 Y31.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X35.78 Y30.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X36.0 Y29.78;
MoveC X36.22 Y30.0;
MoveC X36.22 Y30.22;
MoveC X36.0 Y30.44;
MoveC X35.78 Y30.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X6.0 Y30.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X6.22 Y29.78;
MoveC X6.44 Y30.0;
MoveC X6.44 Y30.22;
MoveC X6.22 Y30.44;
MoveC X6.0 Y30.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X42.44 Y29.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X42.67 Y29.56;
MoveC X42.89 Y29.78;
MoveC X42.67 Y30.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X36.67 Y29.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X36.89 Y29.56;
MoveC X37.11 Y29.78;
MoveC X37.11 Y30.0;
MoveC X36.89 Y30.22;
MoveC X36.67 Y30.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X19.11 Y29.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X19.33 Y29.78;
MoveC X19.33 Y30.0;
MoveC X18.89 Y30.44;
MoveC X18.44 Y30.44;
MoveC X18.0 Y30.89;
MoveC X17.78 Y30.89;
MoveC X17.56 Y31.11;
MoveC X17.56 Y31.33;
MoveC X17.33 Y31.56;
MoveC X16.89 Y31.56;
MoveC X16.67 Y31.33;
MoveC X16.89 Y31.11;
MoveC X17.11 Y31.11;
MoveC X17.11 Y30.89;
MoveC X17.56 Y30.44;
MoveC X17.78 Y30.44;
MoveC X18.22 Y30.0;
MoveC X18.67 Y30.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X8.22 Y29.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.44 Y29.56;
MoveC X8.67 Y29.56;
MoveC X8.89 Y29.78;
MoveC X8.67 Y30.0;
MoveC X8.44 Y30.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X5.11 Y29.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X5.33 Y29.56;
MoveC X5.56 Y29.78;
MoveC X5.56 Y30.0;
MoveC X5.33 Y30.22;
MoveC X5.11 Y30.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X19.11 Y29.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X19.33 Y29.33;
MoveC X19.56 Y29.56;
MoveC X19.33 Y29.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X8.0 Y29.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.22 Y29.33;
MoveC X8.44 Y29.56;
MoveC X8.22 Y29.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X36.89 Y29.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X37.11 Y29.11;
MoveC X37.33 Y29.33;
MoveC X37.33 Y29.56;
MoveC X37.11 Y29.78;
MoveC X36.89 Y29.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X36.44 Y29.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X36.67 Y29.33;
MoveC X36.67 Y29.56;
MoveC X36.22 Y30.0;
MoveC X36.0 Y29.78;
MoveC X36.0 Y29.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X20.22 Y29.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X20.44 Y29.11;
MoveC X20.67 Y29.11;
MoveC X20.89 Y29.33;
MoveC X20.89 Y29.56;
MoveC X20.67 Y29.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X5.56 Y29.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X5.78 Y29.11;
MoveC X6.22 Y29.56;
MoveC X6.22 Y29.78;
MoveC X6.0 Y30.0;
MoveC X5.56 Y29.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.89 Y29.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X5.11 Y29.11;
MoveC X5.33 Y29.33;
MoveC X5.33 Y29.56;
MoveC X5.11 Y29.78;
MoveC X4.89 Y29.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X43.33 Y29.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X43.56 Y28.89;
MoveC X43.78 Y28.89;
MoveC X44.0 Y29.11;
MoveC X43.56 Y29.56;
MoveC X43.11 Y29.56;
MoveC X42.89 Y29.78;
MoveC X42.67 Y29.56;
MoveC X42.67 Y29.33;
MoveC X42.89 Y29.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X40.0 Y29.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X40.22 Y28.89;
MoveC X40.44 Y29.11;
MoveC X40.44 Y29.78;
MoveC X40.22 Y30.0;
MoveC X40.0 Y29.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X36.44 Y28.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X36.67 Y28.67;
MoveC X36.89 Y28.89;
MoveC X36.89 Y29.11;
MoveC X36.67 Y29.33;
MoveC X36.44 Y29.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X21.11 Y28.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X21.33 Y28.67;
MoveC X21.56 Y28.89;
MoveC X21.11 Y29.33;
MoveC X20.89 Y29.33;
MoveC X20.67 Y29.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X7.56 Y28.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X7.78 Y28.67;
MoveC X8.0 Y28.89;
MoveC X8.0 Y29.11;
MoveC X8.22 Y29.33;
MoveC X8.0 Y29.56;
MoveC X7.78 Y29.56;
MoveC X7.56 Y29.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X37.56 Y28.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X37.78 Y28.67;
MoveC X37.78 Y28.89;
MoveC X37.33 Y29.33;
MoveC X37.11 Y29.11;
MoveC X37.11 Y28.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X8.22 Y28.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.44 Y28.44;
MoveC X8.67 Y28.67;
MoveC X8.67 Y29.33;
MoveC X8.44 Y29.56;
MoveC X8.22 Y29.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.44 Y28.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X4.67 Y28.44;
MoveC X5.11 Y28.89;
MoveC X5.11 Y29.11;
MoveC X4.89 Y29.33;
MoveC X4.44 Y28.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X40.89 Y28.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X41.11 Y28.22;
MoveC X42.44 Y28.22;
MoveC X42.67 Y28.44;
MoveC X42.44 Y28.67;
MoveC X41.11 Y28.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X20.22 Y28.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X20.44 Y28.22;
MoveC X20.89 Y28.22;
MoveC X21.11 Y28.44;
MoveC X21.11 Y28.67;
MoveC X20.89 Y28.89;
MoveC X20.67 Y28.67;
MoveC X20.44 Y28.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X5.11 Y28.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X5.33 Y28.22;
MoveC X5.78 Y28.67;
MoveC X5.78 Y29.11;
MoveC X5.56 Y29.33;
MoveC X5.33 Y29.11;
MoveC X5.33 Y28.89;
MoveC X5.11 Y28.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X40.22 Y28.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X40.44 Y28.0;
MoveC X40.89 Y28.0;
MoveC X41.11 Y28.22;
MoveC X40.89 Y28.44;
MoveC X40.67 Y28.44;
MoveC X40.67 Y28.89;
MoveC X40.44 Y29.11;
MoveC X40.22 Y28.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X36.67 Y28.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X36.89 Y28.0;
MoveC X37.11 Y28.22;
MoveC X37.11 Y28.67;
MoveC X36.89 Y28.89;
MoveC X36.67 Y28.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X22.67 Y28.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X22.89 Y28.0;
MoveC X23.11 Y28.22;
MoveC X23.11 Y28.44;
MoveC X22.89 Y28.67;
MoveC X22.44 Y28.67;
MoveC X22.22 Y28.44;
MoveC X22.44 Y28.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X37.56 Y28.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X37.78 Y27.78;
MoveC X38.0 Y28.0;
MoveC X38.0 Y28.44;
MoveC X37.78 Y28.67;
MoveC X37.56 Y28.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.22 Y28.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X4.44 Y27.78;
MoveC X4.67 Y28.0;
MoveC X4.67 Y28.22;
MoveC X4.44 Y28.44;
MoveC X4.22 Y28.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X36.89 Y27.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X37.11 Y27.56;
MoveC X37.33 Y27.78;
MoveC X37.33 Y28.0;
MoveC X37.11 Y28.22;
MoveC X36.89 Y28.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.89 Y27.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X5.11 Y27.56;
MoveC X5.33 Y27.78;
MoveC X5.33 Y28.0;
MoveC X5.11 Y28.22;
MoveC X4.89 Y28.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X40.22 Y27.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X40.44 Y27.33;
MoveC X40.67 Y27.56;
MoveC X40.67 Y27.78;
MoveC X40.44 Y28.0;
MoveC X40.22 Y27.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X7.11 Y27.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X7.33 Y27.33;
MoveC X7.78 Y27.78;
MoveC X7.78 Y28.67;
MoveC X7.56 Y28.89;
MoveC X7.33 Y28.67;
MoveC X7.33 Y28.0;
MoveC X7.11 Y27.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.0 Y27.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X4.22 Y27.33;
MoveC X4.44 Y27.56;
MoveC X4.44 Y27.78;
MoveC X4.22 Y28.0;
MoveC X4.0 Y27.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X37.78 Y27.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X38.0 Y27.11;
MoveC X38.22 Y27.33;
MoveC X38.22 Y27.78;
MoveC X38.0 Y28.0;
MoveC X37.78 Y27.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.67 Y27.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X4.89 Y27.11;
MoveC X5.11 Y27.33;
MoveC X5.11 Y27.56;
MoveC X4.89 Y27.78;
MoveC X4.67 Y27.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X37.11 Y27.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X37.33 Y26.89;
MoveC X37.56 Y27.11;
MoveC X37.56 Y27.56;
MoveC X37.33 Y27.78;
MoveC X37.11 Y27.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X20.22 Y27.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X20.44 Y26.89;
MoveC X20.67 Y26.89;
MoveC X20.89 Y27.11;
MoveC X20.89 Y27.33;
MoveC X20.67 Y27.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X19.33 Y27.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X19.56 Y26.89;
MoveC X19.78 Y26.89;
MoveC X20.0 Y27.11;
MoveC X20.0 Y27.78;
MoveC X19.78 Y28.0;
MoveC X19.33 Y28.0;
MoveC X19.11 Y27.78;
MoveC X19.33 Y27.56;
MoveC X19.56 Y27.56;
MoveC X19.56 Y27.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X19.11 Y26.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X19.33 Y26.67;
MoveC X19.56 Y26.89;
MoveC X19.33 Y27.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X3.78 Y26.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X4.0 Y26.67;
MoveC X4.22 Y26.89;
MoveC X4.22 Y27.11;
MoveC X4.0 Y27.33;
MoveC X3.78 Y27.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X40.44 Y26.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X40.67 Y26.44;
MoveC X40.89 Y26.67;
MoveC X40.89 Y27.33;
MoveC X40.67 Y27.56;
MoveC X40.44 Y27.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X38.0 Y26.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X38.22 Y26.44;
MoveC X38.44 Y26.67;
MoveC X38.44 Y27.11;
MoveC X38.22 Y27.33;
MoveC X38.0 Y27.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X37.33 Y26.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X37.56 Y26.44;
MoveC X37.78 Y26.67;
MoveC X37.78 Y26.89;
MoveC X37.56 Y27.11;
MoveC X37.33 Y26.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X7.11 Y26.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X7.33 Y26.44;
MoveC X7.56 Y26.67;
MoveC X8.0 Y26.67;
MoveC X8.22 Y26.89;
MoveC X8.22 Y27.11;
MoveC X8.44 Y27.33;
MoveC X8.44 Y28.44;
MoveC X8.22 Y28.67;
MoveC X8.0 Y28.44;
MoveC X8.0 Y27.56;
MoveC X7.78 Y27.33;
MoveC X7.78 Y27.11;
MoveC X7.33 Y27.11;
MoveC X7.11 Y26.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X6.44 Y26.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X6.67 Y26.44;
MoveC X6.89 Y26.67;
MoveC X6.89 Y26.89;
MoveC X7.33 Y27.33;
MoveC X7.11 Y27.56;
MoveC X6.89 Y27.56;
MoveC X6.44 Y27.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.44 Y26.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X4.67 Y26.44;
MoveC X4.89 Y26.67;
MoveC X4.89 Y26.89;
MoveC X4.67 Y27.11;
MoveC X4.44 Y26.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X19.78 Y26.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X20.0 Y26.22;
MoveC X20.22 Y26.44;
MoveC X20.22 Y26.67;
MoveC X20.0 Y26.89;
MoveC X19.78 Y26.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X38.22 Y26.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X38.44 Y26.0;
MoveC X38.67 Y26.22;
MoveC X38.67 Y26.44;
MoveC X38.44 Y26.67;
MoveC X38.22 Y26.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X6.89 Y26.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X7.11 Y26.0;
MoveC X7.33 Y26.22;
MoveC X7.33 Y26.44;
MoveC X7.11 Y26.67;
MoveC X6.89 Y26.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X3.56 Y26.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X3.78 Y26.0;
MoveC X4.0 Y26.22;
MoveC X4.0 Y26.44;
MoveC X3.78 Y26.67;
MoveC X3.56 Y26.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X40.67 Y26.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X40.89 Y25.78;
MoveC X41.11 Y26.0;
MoveC X41.11 Y26.44;
MoveC X40.89 Y26.67;
MoveC X40.67 Y26.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X38.44 Y26.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X38.67 Y25.78;
MoveC X38.89 Y26.0;
MoveC X38.67 Y26.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X37.56 Y26.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X37.78 Y25.78;
MoveC X38.0 Y26.0;
MoveC X38.0 Y26.44;
MoveC X37.78 Y26.67;
MoveC X37.56 Y26.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X27.11 Y26.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X27.33 Y25.78;
MoveC X27.56 Y26.0;
MoveC X27.56 Y26.67;
MoveC X27.33 Y26.89;
MoveC X27.33 Y27.11;
MoveC X27.11 Y27.33;
MoveC X26.89 Y27.11;
MoveC X26.89 Y26.44;
MoveC X27.11 Y26.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.22 Y26.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X4.44 Y25.78;
MoveC X4.67 Y26.0;
MoveC X4.67 Y26.22;
MoveC X4.44 Y26.44;
MoveC X4.22 Y26.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X38.22 Y25.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X38.44 Y25.56;
MoveC X38.67 Y25.78;
MoveC X38.44 Y26.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X26.0 Y25.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X26.22 Y25.56;
MoveC X26.89 Y26.22;
MoveC X26.67 Y26.44;
MoveC X26.44 Y26.44;
MoveC X26.0 Y26.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X19.56 Y25.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X19.78 Y25.56;
MoveC X20.0 Y25.78;
MoveC X20.0 Y26.0;
MoveC X19.56 Y26.44;
MoveC X19.33 Y26.22;
MoveC X19.11 Y26.22;
MoveC X18.89 Y26.0;
MoveC X19.11 Y25.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X20.0 Y25.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X20.22 Y25.33;
MoveC X20.44 Y25.56;
MoveC X20.22 Y25.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X7.56 Y25.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X7.78 Y25.33;
MoveC X8.0 Y25.56;
MoveC X8.0 Y26.0;
MoveC X7.78 Y26.22;
MoveC X7.56 Y26.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X7.11 Y25.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X7.33 Y25.33;
MoveC X7.56 Y25.56;
MoveC X7.56 Y25.78;
MoveC X7.33 Y26.0;
MoveC X7.11 Y25.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X6.67 Y25.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X6.89 Y25.33;
MoveC X7.11 Y25.56;
MoveC X7.11 Y25.78;
MoveC X6.89 Y26.0;
MoveC X6.67 Y25.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X40.67 Y25.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X40.89 Y25.11;
MoveC X41.11 Y25.33;
MoveC X41.11 Y25.56;
MoveC X40.89 Y25.78;
MoveC X40.67 Y25.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X38.44 Y25.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X38.67 Y25.11;
MoveC X38.89 Y25.33;
MoveC X38.89 Y25.56;
MoveC X38.67 Y25.78;
MoveC X38.44 Y25.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X20.22 Y25.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X20.44 Y25.11;
MoveC X20.67 Y25.33;
MoveC X20.44 Y25.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.0 Y25.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X4.22 Y25.11;
MoveC X4.44 Y25.33;
MoveC X4.44 Y25.56;
MoveC X4.22 Y25.78;
MoveC X4.0 Y25.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X3.33 Y25.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X3.56 Y25.11;
MoveC X3.78 Y25.33;
MoveC X3.78 Y25.56;
MoveC X3.56 Y25.78;
MoveC X3.33 Y25.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X18.67 Y25.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X18.89 Y24.89;
MoveC X19.33 Y24.89;
MoveC X19.56 Y25.11;
MoveC X19.56 Y25.33;
MoveC X19.78 Y25.56;
MoveC X19.56 Y25.78;
MoveC X19.33 Y25.78;
MoveC X19.11 Y25.56;
MoveC X19.11 Y25.33;
MoveC X19.11 Y25.78;
MoveC X18.89 Y26.0;
MoveC X18.67 Y25.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X6.89 Y25.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X7.11 Y24.89;
MoveC X7.33 Y25.11;
MoveC X7.11 Y25.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X3.11 Y25.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X3.33 Y24.89;
MoveC X3.56 Y25.11;
MoveC X3.33 Y25.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X37.78 Y24.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X38.0 Y24.67;
MoveC X38.22 Y24.89;
MoveC X38.22 Y25.78;
MoveC X38.0 Y26.0;
MoveC X37.78 Y25.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X17.56 Y24.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X17.78 Y24.67;
MoveC X18.0 Y24.89;
MoveC X18.0 Y27.11;
MoveC X18.44 Y27.11;
MoveC X18.67 Y26.89;
MoveC X19.11 Y26.89;
MoveC X19.33 Y27.11;
MoveC X19.11 Y27.33;
MoveC X18.89 Y27.33;
MoveC X18.67 Y27.56;
MoveC X17.78 Y27.56;
MoveC X17.56 Y27.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X5.56 Y24.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X5.78 Y24.67;
MoveC X6.0 Y24.89;
MoveC X6.0 Y25.11;
MoveC X6.44 Y25.56;
MoveC X6.44 Y25.78;
MoveC X6.67 Y26.0;
MoveC X6.67 Y26.44;
MoveC X6.44 Y26.67;
MoveC X6.22 Y26.44;
MoveC X6.22 Y26.22;
MoveC X6.0 Y26.0;
MoveC X6.0 Y25.78;
MoveC X5.56 Y25.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X26.67 Y24.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X26.89 Y24.44;
MoveC X27.33 Y24.89;
MoveC X27.33 Y25.78;
MoveC X27.11 Y26.0;
MoveC X26.89 Y25.78;
MoveC X26.89 Y25.11;
MoveC X26.67 Y24.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X7.11 Y24.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X7.33 Y24.44;
MoveC X7.56 Y24.67;
MoveC X7.33 Y24.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X6.67 Y24.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X6.89 Y24.67;
MoveC X6.89 Y25.33;
MoveC X6.67 Y25.56;
MoveC X6.22 Y25.11;
MoveC X6.22 Y24.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X38.67 Y24.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X38.89 Y24.22;
MoveC X39.11 Y24.44;
MoveC X39.11 Y25.11;
MoveC X38.89 Y25.33;
MoveC X38.67 Y25.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X24.67 Y24.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X24.89 Y24.22;
MoveC X25.11 Y24.44;
MoveC X25.56 Y24.44;
MoveC X25.78 Y24.67;
MoveC X25.56 Y24.89;
MoveC X25.11 Y24.89;
MoveC X25.33 Y25.11;
MoveC X25.11 Y25.33;
MoveC X24.89 Y25.33;
MoveC X24.67 Y25.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X17.11 Y24.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X17.33 Y24.22;
MoveC X17.56 Y24.22;
MoveC X17.78 Y24.44;
MoveC X17.78 Y24.67;
MoveC X17.56 Y24.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X6.67 Y24.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X6.89 Y24.22;
MoveC X7.11 Y24.44;
MoveC X6.89 Y24.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X5.78 Y24.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X6.0 Y24.22;
MoveC X6.22 Y24.44;
MoveC X6.0 Y24.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X3.11 Y24.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X3.33 Y24.22;
MoveC X3.56 Y24.44;
MoveC X3.56 Y24.67;
MoveC X3.33 Y24.89;
MoveC X3.11 Y24.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X38.89 Y24.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.11 Y24.0;
MoveC X39.33 Y24.22;
MoveC X39.11 Y24.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X6.89 Y24.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X7.11 Y23.78;
MoveC X7.33 Y24.0;
MoveC X7.33 Y24.22;
MoveC X7.11 Y24.44;
MoveC X6.89 Y24.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X40.89 Y23.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X41.11 Y23.56;
MoveC X41.33 Y23.78;
MoveC X41.33 Y25.11;
MoveC X41.11 Y25.33;
MoveC X40.89 Y25.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X5.78 Y23.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X6.0 Y23.56;
MoveC X6.67 Y24.22;
MoveC X6.67 Y24.44;
MoveC X6.44 Y24.67;
MoveC X5.78 Y24.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X5.33 Y23.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X5.56 Y23.56;
MoveC X5.78 Y23.78;
MoveC X5.56 Y24.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X38.67 Y23.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X38.89 Y23.33;
MoveC X39.11 Y23.56;
MoveC X39.11 Y24.0;
MoveC X38.89 Y24.22;
MoveC X38.67 Y24.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X38.0 Y23.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X38.22 Y23.33;
MoveC X38.44 Y23.56;
MoveC X38.44 Y24.67;
MoveC X38.22 Y24.89;
MoveC X38.0 Y24.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X8.22 Y23.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.44 Y23.33;
MoveC X8.67 Y23.56;
MoveC X8.67 Y23.78;
MoveC X8.44 Y24.0;
MoveC X8.22 Y23.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X6.67 Y23.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X6.89 Y23.11;
MoveC X7.11 Y23.33;
MoveC X7.11 Y23.78;
MoveC X6.89 Y24.0;
MoveC X6.67 Y23.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X3.78 Y23.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X4.0 Y23.11;
MoveC X4.22 Y23.33;
MoveC X4.22 Y25.11;
MoveC X4.0 Y25.33;
MoveC X3.78 Y25.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X26.67 Y23.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X26.89 Y22.89;
MoveC X27.11 Y23.11;
MoveC X27.11 Y23.78;
MoveC X26.89 Y24.0;
MoveC X26.44 Y23.56;
MoveC X26.67 Y23.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X5.11 Y23.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X5.33 Y22.89;
MoveC X5.56 Y23.11;
MoveC X5.33 Y23.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X41.11 Y22.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X41.33 Y22.67;
MoveC X41.56 Y22.89;
MoveC X41.56 Y23.56;
MoveC X41.33 Y23.78;
MoveC X41.11 Y23.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X38.89 Y22.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.11 Y22.67;
MoveC X39.33 Y22.89;
MoveC X39.33 Y23.33;
MoveC X39.11 Y23.56;
MoveC X38.89 Y23.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X7.78 Y22.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.0 Y22.67;
MoveC X8.44 Y23.11;
MoveC X8.44 Y23.33;
MoveC X8.22 Y23.56;
MoveC X7.78 Y23.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X5.56 Y22.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X5.78 Y22.67;
MoveC X6.0 Y22.89;
MoveC X6.0 Y23.56;
MoveC X5.78 Y23.78;
MoveC X5.56 Y23.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.67 Y22.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X4.89 Y22.67;
MoveC X5.11 Y22.89;
MoveC X5.11 Y23.11;
MoveC X5.33 Y23.33;
MoveC X5.33 Y23.78;
MoveC X5.56 Y24.0;
MoveC X5.56 Y24.22;
MoveC X5.78 Y24.44;
MoveC X5.78 Y24.67;
MoveC X5.56 Y24.89;
MoveC X5.11 Y24.44;
MoveC X5.11 Y24.22;
MoveC X4.89 Y24.0;
MoveC X4.89 Y23.56;
MoveC X4.67 Y23.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X3.56 Y22.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X3.78 Y22.67;
MoveC X4.0 Y22.89;
MoveC X4.0 Y23.11;
MoveC X3.78 Y23.33;
MoveC X3.56 Y23.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X2.89 Y22.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X3.11 Y22.67;
MoveC X3.33 Y22.89;
MoveC X3.33 Y23.11;
MoveC X3.11 Y23.33;
MoveC X2.89 Y23.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X5.33 Y22.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X5.56 Y22.22;
MoveC X5.78 Y22.44;
MoveC X5.78 Y22.67;
MoveC X5.56 Y22.89;
MoveC X5.33 Y22.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.89 Y22.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X5.11 Y22.22;
MoveC X5.33 Y22.44;
MoveC X5.11 Y22.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X16.89 Y22.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X17.11 Y22.0;
MoveC X17.33 Y22.22;
MoveC X17.33 Y23.11;
MoveC X17.56 Y23.33;
MoveC X17.56 Y23.56;
MoveC X17.78 Y23.78;
MoveC X17.78 Y24.0;
MoveC X17.56 Y24.22;
MoveC X17.11 Y23.78;
MoveC X17.11 Y23.56;
MoveC X16.89 Y23.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X6.44 Y22.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X6.67 Y22.0;
MoveC X6.89 Y22.22;
MoveC X6.89 Y23.11;
MoveC X6.67 Y23.33;
MoveC X6.44 Y23.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.44 Y22.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X4.67 Y21.78;
MoveC X4.89 Y22.0;
MoveC X4.89 Y22.67;
MoveC X4.67 Y22.89;
MoveC X4.44 Y22.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X3.33 Y22.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X3.56 Y21.78;
MoveC X3.78 Y22.0;
MoveC X3.78 Y22.67;
MoveC X3.56 Y22.89;
MoveC X3.33 Y22.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X42.0 Y21.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X42.22 Y21.33;
MoveC X42.44 Y21.56;
MoveC X42.44 Y22.0;
MoveC X42.22 Y22.22;
MoveC X42.0 Y22.22;
MoveC X41.78 Y22.44;
MoveC X41.78 Y22.67;
MoveC X41.56 Y22.89;
MoveC X41.33 Y22.67;
MoveC X41.33 Y22.0;
MoveC X41.56 Y21.78;
MoveC X42.0 Y21.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X6.22 Y21.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X6.44 Y21.33;
MoveC X6.67 Y21.56;
MoveC X6.67 Y22.0;
MoveC X6.44 Y22.22;
MoveC X6.22 Y22.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X39.11 Y21.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.33 Y21.11;
MoveC X39.56 Y21.33;
MoveC X39.56 Y22.67;
MoveC X39.33 Y22.89;
MoveC X39.11 Y22.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X5.11 Y21.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X5.33 Y21.11;
MoveC X5.56 Y21.33;
MoveC X5.56 Y22.22;
MoveC X5.33 Y22.44;
MoveC X5.11 Y22.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X3.56 Y21.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X3.78 Y21.11;
MoveC X4.0 Y21.33;
MoveC X4.0 Y21.78;
MoveC X3.78 Y22.0;
MoveC X3.56 Y21.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X16.67 Y21.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X16.89 Y20.89;
MoveC X17.11 Y21.11;
MoveC X17.11 Y22.0;
MoveC X16.89 Y22.22;
MoveC X16.67 Y22.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.67 Y21.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X4.89 Y20.89;
MoveC X5.11 Y21.11;
MoveC X5.11 Y21.56;
MoveC X4.89 Y21.78;
MoveC X4.67 Y21.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.22 Y21.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X4.44 Y20.89;
MoveC X4.67 Y21.11;
MoveC X4.67 Y21.78;
MoveC X4.44 Y22.0;
MoveC X4.22 Y21.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X38.89 Y20.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.11 Y20.44;
MoveC X39.33 Y20.67;
MoveC X39.33 Y21.11;
MoveC X39.11 Y21.33;
MoveC X38.89 Y21.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X6.0 Y20.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X6.22 Y20.44;
MoveC X6.44 Y20.67;
MoveC X6.44 Y21.33;
MoveC X6.22 Y21.56;
MoveC X6.0 Y21.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X39.11 Y20.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.33 Y20.22;
MoveC X39.56 Y20.44;
MoveC X39.33 Y20.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X15.78 Y20.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X16.0 Y20.0;
MoveC X16.22 Y20.22;
MoveC X15.33 Y21.11;
MoveC X15.11 Y21.11;
MoveC X14.89 Y21.33;
MoveC X14.67 Y21.33;
MoveC X14.44 Y21.11;
MoveC X14.89 Y20.67;
MoveC X15.11 Y20.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X8.22 Y20.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.44 Y20.0;
MoveC X8.67 Y20.22;
MoveC X8.44 Y20.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X41.56 Y20.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X41.78 Y19.78;
MoveC X42.22 Y19.78;
MoveC X42.67 Y20.22;
MoveC X42.67 Y21.33;
MoveC X42.44 Y21.56;
MoveC X42.22 Y21.33;
MoveC X42.0 Y21.33;
MoveC X41.78 Y21.11;
MoveC X41.78 Y20.67;
MoveC X42.0 Y20.44;
MoveC X42.22 Y20.67;
MoveC X42.22 Y20.89;
MoveC X42.22 Y20.44;
MoveC X42.0 Y20.22;
MoveC X41.78 Y20.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X5.33 Y20.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X5.56 Y19.78;
MoveC X5.78 Y20.0;
MoveC X5.78 Y21.11;
MoveC X5.56 Y21.33;
MoveC X5.33 Y21.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.89 Y20.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X5.11 Y19.78;
MoveC X5.33 Y20.0;
MoveC X5.33 Y20.89;
MoveC X5.11 Y21.11;
MoveC X4.89 Y20.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X3.33 Y20.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X3.56 Y19.78;
MoveC X3.78 Y20.0;
MoveC X3.78 Y21.11;
MoveC X3.56 Y21.33;
MoveC X3.33 Y21.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X8.0 Y19.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.22 Y19.56;
MoveC X8.44 Y19.78;
MoveC X8.44 Y20.0;
MoveC X8.22 Y20.22;
MoveC X8.0 Y20.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X41.33 Y19.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X41.56 Y19.33;
MoveC X41.78 Y19.56;
MoveC X41.78 Y19.78;
MoveC X41.56 Y20.0;
MoveC X41.33 Y19.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X41.56 Y19.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X41.78 Y18.89;
MoveC X42.0 Y19.11;
MoveC X42.0 Y19.33;
MoveC X41.78 Y19.56;
MoveC X41.56 Y19.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X38.22 Y19.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X38.44 Y18.89;
MoveC X38.67 Y19.11;
MoveC X38.67 Y23.33;
MoveC X38.44 Y23.56;
MoveC X38.22 Y23.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X38.89 Y18.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.11 Y18.67;
MoveC X39.33 Y18.89;
MoveC X39.33 Y20.22;
MoveC X39.11 Y20.44;
MoveC X38.89 Y20.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X41.78 Y18.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X42.0 Y18.44;
MoveC X42.22 Y18.67;
MoveC X42.22 Y18.89;
MoveC X42.0 Y19.11;
MoveC X41.78 Y18.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.0 Y18.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X4.22 Y18.44;
MoveC X4.44 Y18.67;
MoveC X4.44 Y20.89;
MoveC X4.22 Y21.11;
MoveC X4.0 Y20.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X3.78 Y18.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X4.0 Y18.22;
MoveC X4.22 Y18.44;
MoveC X4.0 Y18.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X18.22 Y18.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X18.44 Y18.0;
MoveC X18.67 Y18.22;
MoveC X18.67 Y18.44;
MoveC X18.44 Y18.67;
MoveC X18.22 Y18.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X5.78 Y18.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X6.0 Y18.0;
MoveC X6.22 Y18.22;
MoveC X6.22 Y20.22;
MoveC X6.0 Y20.44;
MoveC X5.78 Y20.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X43.11 Y18.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X43.33 Y17.78;
MoveC X43.56 Y18.0;
MoveC X43.56 Y18.22;
MoveC X43.33 Y18.44;
MoveC X43.11 Y18.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X12.22 Y18.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X12.44 Y17.78;
MoveC X12.89 Y18.22;
MoveC X12.89 Y18.44;
MoveC X12.67 Y18.67;
MoveC X12.22 Y18.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X8.0 Y18.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.22 Y17.78;
MoveC X8.44 Y18.0;
MoveC X8.44 Y18.22;
MoveC X8.22 Y18.44;
MoveC X8.0 Y18.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X2.89 Y18.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X3.11 Y17.78;
MoveC X3.33 Y18.0;
MoveC X3.33 Y19.33;
MoveC X2.89 Y19.78;
MoveC X2.67 Y19.56;
MoveC X2.67 Y19.33;
MoveC X2.89 Y19.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X38.0 Y17.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X38.22 Y17.56;
MoveC X38.44 Y17.78;
MoveC X38.44 Y18.89;
MoveC X38.22 Y19.11;
MoveC X38.0 Y18.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X8.22 Y17.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.44 Y17.56;
MoveC X8.67 Y17.78;
MoveC X8.44 Y18.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.67 Y17.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X4.89 Y17.56;
MoveC X5.11 Y17.78;
MoveC X4.89 Y18.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X38.67 Y17.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X38.89 Y17.33;
MoveC X39.11 Y17.56;
MoveC X39.11 Y18.67;
MoveC X38.89 Y18.89;
MoveC X38.67 Y18.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.0 Y17.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X4.22 Y17.33;
MoveC X4.67 Y17.33;
MoveC X4.89 Y17.56;
MoveC X4.67 Y17.78;
MoveC X4.44 Y17.78;
MoveC X4.44 Y18.22;
MoveC X4.22 Y18.44;
MoveC X4.0 Y18.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X3.11 Y17.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X3.33 Y17.33;
MoveC X3.56 Y17.56;
MoveC X3.56 Y17.78;
MoveC X3.33 Y18.0;
MoveC X3.11 Y17.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.89 Y17.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X5.11 Y17.11;
MoveC X5.33 Y17.33;
MoveC X5.33 Y17.56;
MoveC X5.11 Y17.78;
MoveC X4.89 Y17.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X41.56 Y17.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X41.78 Y16.89;
MoveC X42.0 Y17.11;
MoveC X42.0 Y18.44;
MoveC X41.78 Y18.67;
MoveC X41.56 Y18.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X43.56 Y16.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X43.78 Y16.67;
MoveC X44.0 Y16.89;
MoveC X44.0 Y17.78;
MoveC X43.78 Y18.0;
MoveC X43.56 Y17.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X18.44 Y16.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X18.67 Y16.67;
MoveC X18.89 Y16.89;
MoveC X18.44 Y17.33;
MoveC X18.44 Y17.78;
MoveC X17.11 Y19.11;
MoveC X17.11 Y19.33;
MoveC X16.67 Y19.78;
MoveC X16.67 Y20.0;
MoveC X16.44 Y20.22;
MoveC X16.22 Y20.22;
MoveC X16.0 Y20.0;
MoveC X16.22 Y19.78;
MoveC X16.22 Y19.56;
MoveC X16.67 Y19.11;
MoveC X16.67 Y18.89;
MoveC X18.0 Y17.56;
MoveC X18.0 Y17.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X12.67 Y16.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X12.89 Y16.67;
MoveC X13.11 Y16.89;
MoveC X13.33 Y16.89;
MoveC X13.56 Y17.11;
MoveC X13.56 Y17.33;
MoveC X13.33 Y17.56;
MoveC X13.11 Y17.33;
MoveC X12.89 Y17.33;
MoveC X12.67 Y17.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X10.67 Y16.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X10.89 Y16.67;
MoveC X11.11 Y16.89;
MoveC X10.89 Y17.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.0 Y16.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X4.22 Y16.67;
MoveC X4.44 Y16.89;
MoveC X4.44 Y17.11;
MoveC X4.22 Y17.33;
MoveC X4.0 Y17.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X38.44 Y16.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X38.67 Y16.44;
MoveC X38.89 Y16.67;
MoveC X38.89 Y17.33;
MoveC X38.67 Y17.56;
MoveC X38.44 Y17.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X37.78 Y16.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X38.0 Y16.44;
MoveC X38.22 Y16.67;
MoveC X38.22 Y17.56;
MoveC X38.0 Y17.78;
MoveC X37.78 Y17.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X10.22 Y16.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X10.44 Y16.44;
MoveC X10.67 Y16.67;
MoveC X10.67 Y17.56;
MoveC X11.11 Y18.0;
MoveC X11.33 Y18.0;
MoveC X11.33 Y17.78;
MoveC X11.11 Y17.56;
MoveC X11.11 Y17.33;
MoveC X10.89 Y17.11;
MoveC X11.11 Y16.89;
MoveC X11.33 Y16.89;
MoveC X11.56 Y17.11;
MoveC X11.56 Y17.33;
MoveC X11.78 Y17.56;
MoveC X12.0 Y17.56;
MoveC X12.22 Y17.78;
MoveC X12.22 Y18.0;
MoveC X12.0 Y18.22;
MoveC X11.78 Y18.0;
MoveC X11.78 Y18.22;
MoveC X11.56 Y18.44;
MoveC X10.89 Y18.44;
MoveC X10.22 Y17.78;
MoveC X10.22 Y17.33;
MoveC X10.0 Y17.11;
MoveC X10.22 Y16.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X43.33 Y16.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X43.56 Y16.22;
MoveC X43.78 Y16.44;
MoveC X43.78 Y16.67;
MoveC X43.56 Y16.89;
MoveC X43.33 Y16.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X10.44 Y16.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X10.67 Y16.22;
MoveC X10.89 Y16.44;
MoveC X10.67 Y16.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X9.56 Y16.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X9.78 Y16.22;
MoveC X10.0 Y16.44;
MoveC X10.0 Y16.67;
MoveC X9.78 Y16.89;
MoveC X9.56 Y16.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X8.22 Y16.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.44 Y16.22;
MoveC X8.67 Y16.44;
MoveC X8.67 Y16.89;
MoveC X8.44 Y17.11;
MoveC X8.44 Y17.56;
MoveC X8.22 Y17.78;
MoveC X8.0 Y17.78;
MoveC X7.78 Y18.0;
MoveC X7.56 Y17.78;
MoveC X7.56 Y17.56;
MoveC X8.0 Y17.11;
MoveC X8.0 Y16.89;
MoveC X8.22 Y16.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X5.11 Y16.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X5.33 Y16.22;
MoveC X5.56 Y16.44;
MoveC X5.33 Y16.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X12.22 Y16.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X12.44 Y16.0;
MoveC X12.67 Y16.22;
MoveC X12.67 Y16.44;
MoveC X12.89 Y16.67;
MoveC X12.67 Y16.89;
MoveC X12.44 Y16.89;
MoveC X12.22 Y16.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X9.78 Y16.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X10.0 Y16.0;
MoveC X10.22 Y16.0;
MoveC X10.44 Y16.22;
MoveC X10.22 Y16.44;
MoveC X10.0 Y16.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X8.0 Y16.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.22 Y16.0;
MoveC X8.44 Y16.22;
MoveC X8.22 Y16.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X6.0 Y16.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X6.22 Y16.0;
MoveC X6.44 Y16.22;
MoveC X6.44 Y18.0;
MoveC X6.22 Y18.22;
MoveC X6.0 Y18.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X37.56 Y16.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X37.78 Y15.78;
MoveC X38.0 Y16.0;
MoveC X38.0 Y16.44;
MoveC X37.78 Y16.67;
MoveC X37.56 Y16.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X11.11 Y16.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X11.33 Y15.78;
MoveC X12.0 Y15.78;
MoveC X12.22 Y16.0;
MoveC X12.0 Y16.22;
MoveC X12.0 Y16.44;
MoveC X11.78 Y16.67;
MoveC X11.56 Y16.44;
MoveC X11.56 Y16.22;
MoveC X11.56 Y16.44;
MoveC X11.78 Y16.67;
MoveC X11.56 Y16.89;
MoveC X11.33 Y16.89;
MoveC X11.11 Y16.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.22 Y16.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X4.44 Y15.78;
MoveC X4.67 Y16.0;
MoveC X4.67 Y16.44;
MoveC X4.89 Y16.67;
MoveC X4.89 Y16.89;
MoveC X5.11 Y17.11;
MoveC X4.89 Y17.33;
MoveC X4.67 Y17.33;
MoveC X4.44 Y17.11;
MoveC X4.44 Y16.89;
MoveC X4.22 Y16.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X41.33 Y15.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X41.56 Y15.56;
MoveC X41.78 Y15.78;
MoveC X41.78 Y16.89;
MoveC X41.56 Y17.11;
MoveC X41.33 Y16.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X38.22 Y15.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X38.44 Y15.56;
MoveC X38.67 Y15.78;
MoveC X38.67 Y16.44;
MoveC X38.44 Y16.67;
MoveC X38.22 Y16.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X8.22 Y15.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.44 Y15.56;
MoveC X8.67 Y15.78;
MoveC X8.67 Y16.0;
MoveC X8.44 Y16.22;
MoveC X8.22 Y16.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X3.78 Y15.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X4.0 Y15.78;
MoveC X4.0 Y16.0;
MoveC X3.78 Y16.22;
MoveC X3.78 Y17.33;
MoveC X3.56 Y17.56;
MoveC X3.33 Y17.33;
MoveC X3.33 Y16.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X34.22 Y15.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X34.44 Y15.11;
MoveC X34.89 Y15.11;
MoveC X35.11 Y15.33;
MoveC X35.11 Y16.0;
MoveC X34.89 Y16.22;
MoveC X34.44 Y16.22;
MoveC X34.22 Y16.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X34.67 Y15.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X34.67 Y15.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X12.44 Y15.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X12.67 Y15.11;
MoveC X13.11 Y15.56;
MoveC X12.89 Y15.78;
MoveC X12.67 Y15.78;
MoveC X12.44 Y15.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X8.89 Y15.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X9.11 Y15.11;
MoveC X9.33 Y15.33;
MoveC X9.33 Y16.0;
MoveC X9.56 Y16.22;
MoveC X9.33 Y16.44;
MoveC X9.11 Y16.44;
MoveC X8.89 Y16.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X41.11 Y15.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X41.33 Y14.89;
MoveC X41.56 Y15.11;
MoveC X41.56 Y15.56;
MoveC X41.33 Y15.78;
MoveC X41.11 Y15.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X38.0 Y15.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X38.22 Y14.89;
MoveC X38.44 Y15.11;
MoveC X38.44 Y15.56;
MoveC X38.22 Y15.78;
MoveC X38.0 Y15.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X37.33 Y15.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X37.56 Y14.89;
MoveC X37.78 Y15.11;
MoveC X37.78 Y15.78;
MoveC X37.56 Y16.0;
MoveC X37.33 Y15.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X10.44 Y14.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X10.67 Y15.11;
MoveC X10.67 Y15.33;
MoveC X10.0 Y16.0;
MoveC X9.56 Y16.0;
MoveC X9.33 Y15.78;
MoveC X9.56 Y15.56;
MoveC X9.78 Y15.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X9.33 Y15.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X9.56 Y14.89;
MoveC X9.78 Y15.11;
MoveC X9.78 Y15.33;
MoveC X9.56 Y15.56;
MoveC X9.33 Y15.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.44 Y15.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X4.67 Y14.89;
MoveC X4.89 Y15.11;
MoveC X4.89 Y15.78;
MoveC X4.67 Y16.0;
MoveC X4.44 Y15.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X3.78 Y15.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X4.0 Y14.89;
MoveC X4.22 Y15.11;
MoveC X4.22 Y15.56;
MoveC X4.0 Y15.78;
MoveC X3.78 Y15.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X38.67 Y14.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X38.89 Y14.67;
MoveC X39.11 Y14.89;
MoveC X39.11 Y15.11;
MoveC X38.89 Y15.33;
MoveC X38.67 Y15.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X9.56 Y14.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X9.78 Y14.67;
MoveC X10.0 Y14.89;
MoveC X9.78 Y15.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X7.56 Y14.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X7.78 Y14.67;
MoveC X8.0 Y14.67;
MoveC X8.44 Y15.11;
MoveC X8.44 Y15.56;
MoveC X8.22 Y15.78;
MoveC X8.0 Y15.56;
MoveC X8.0 Y15.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X40.89 Y14.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X41.11 Y14.44;
MoveC X41.33 Y14.67;
MoveC X41.33 Y14.89;
MoveC X41.11 Y15.11;
MoveC X40.89 Y14.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X38.44 Y14.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X38.67 Y14.44;
MoveC X38.89 Y14.67;
MoveC X38.67 Y14.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X37.11 Y14.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X37.33 Y14.44;
MoveC X37.56 Y14.67;
MoveC X37.56 Y14.89;
MoveC X37.33 Y15.11;
MoveC X37.11 Y14.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X12.0 Y14.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X12.22 Y14.44;
MoveC X12.44 Y14.44;
MoveC X12.67 Y14.67;
MoveC X12.22 Y15.11;
MoveC X12.0 Y15.11;
MoveC X11.78 Y15.33;
MoveC X11.56 Y15.33;
MoveC X10.67 Y16.22;
MoveC X10.44 Y16.22;
MoveC X10.22 Y16.0;
MoveC X11.33 Y14.89;
MoveC X11.56 Y14.89;
MoveC X11.78 Y14.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X11.33 Y14.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X11.56 Y14.44;
MoveC X11.78 Y14.67;
MoveC X11.56 Y14.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X10.89 Y14.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X11.11 Y14.44;
MoveC X11.33 Y14.67;
MoveC X11.11 Y14.89;
MoveC X11.11 Y15.11;
MoveC X10.89 Y15.33;
MoveC X10.44 Y14.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X9.11 Y14.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X9.33 Y14.44;
MoveC X9.56 Y14.67;
MoveC X9.33 Y14.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X7.33 Y14.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X7.56 Y14.44;
MoveC X7.78 Y14.67;
MoveC X7.56 Y14.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.67 Y14.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X4.89 Y14.44;
MoveC X5.11 Y14.67;
MoveC X5.11 Y14.89;
MoveC X4.89 Y15.11;
MoveC X4.67 Y14.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X37.78 Y14.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X38.0 Y14.22;
MoveC X38.22 Y14.44;
MoveC X38.22 Y14.89;
MoveC X38.0 Y15.11;
MoveC X37.78 Y14.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X20.22 Y14.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X20.44 Y14.22;
MoveC X20.67 Y14.44;
MoveC X20.67 Y14.89;
MoveC X20.44 Y15.11;
MoveC X20.22 Y14.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X11.11 Y14.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X11.33 Y14.22;
MoveC X11.56 Y14.44;
MoveC X11.33 Y14.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X9.33 Y14.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X9.56 Y14.22;
MoveC X9.78 Y14.44;
MoveC X9.56 Y14.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.0 Y14.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X4.22 Y14.22;
MoveC X4.44 Y14.44;
MoveC X4.44 Y14.89;
MoveC X4.22 Y15.11;
MoveC X4.0 Y14.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X2.67 Y14.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X2.89 Y14.22;
MoveC X3.33 Y14.67;
MoveC X3.11 Y14.89;
MoveC X2.89 Y14.89;
MoveC X2.67 Y14.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X40.67 Y14.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X40.89 Y14.0;
MoveC X41.11 Y14.22;
MoveC X41.11 Y14.44;
MoveC X40.89 Y14.67;
MoveC X40.67 Y14.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X36.89 Y14.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X37.11 Y14.0;
MoveC X37.33 Y14.22;
MoveC X37.33 Y14.44;
MoveC X37.11 Y14.67;
MoveC X36.89 Y14.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.89 Y14.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X5.11 Y14.0;
MoveC X5.33 Y14.22;
MoveC X5.33 Y14.44;
MoveC X5.11 Y14.67;
MoveC X4.89 Y14.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X3.33 Y14.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X3.56 Y14.0;
MoveC X3.78 Y14.0;
MoveC X4.0 Y14.22;
MoveC X4.0 Y14.44;
MoveC X3.78 Y14.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X2.89 Y14.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X3.11 Y14.0;
MoveC X3.33 Y14.22;
MoveC X3.11 Y14.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X37.56 Y14.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X37.78 Y13.78;
MoveC X38.0 Y14.0;
MoveC X38.0 Y14.22;
MoveC X37.78 Y14.44;
MoveC X37.56 Y14.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X10.44 Y13.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X10.67 Y13.78;
MoveC X10.89 Y14.0;
MoveC X10.0 Y14.89;
MoveC X9.78 Y14.67;
MoveC X9.78 Y14.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.22 Y14.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X4.44 Y13.78;
MoveC X4.67 Y14.0;
MoveC X4.67 Y14.22;
MoveC X4.44 Y14.44;
MoveC X4.22 Y14.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X3.11 Y14.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X3.33 Y13.78;
MoveC X3.56 Y14.0;
MoveC X3.33 Y14.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X38.0 Y13.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X38.22 Y13.56;
MoveC X38.44 Y13.78;
MoveC X38.22 Y14.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X20.22 Y13.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X20.44 Y13.56;
MoveC X20.67 Y13.78;
MoveC X20.67 Y14.0;
MoveC X20.44 Y14.22;
MoveC X20.22 Y14.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X36.67 Y13.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X36.89 Y13.33;
MoveC X37.11 Y13.56;
MoveC X37.11 Y14.0;
MoveC X36.89 Y14.22;
MoveC X36.67 Y14.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X5.11 Y13.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X5.33 Y13.33;
MoveC X5.56 Y13.56;
MoveC X5.56 Y14.0;
MoveC X5.33 Y14.22;
MoveC X5.11 Y14.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X40.44 Y13.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X40.67 Y13.11;
MoveC X40.89 Y13.33;
MoveC X40.89 Y14.0;
MoveC X40.67 Y14.22;
MoveC X40.44 Y14.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X19.56 Y13.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X19.78 Y13.11;
MoveC X20.22 Y13.11;
MoveC X20.44 Y13.33;
MoveC X20.44 Y13.56;
MoveC X20.22 Y13.78;
MoveC X20.0 Y13.56;
MoveC X19.78 Y13.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X18.0 Y13.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X18.22 Y13.11;
MoveC X18.44 Y13.11;
MoveC X18.67 Y13.33;
MoveC X18.89 Y13.33;
MoveC X19.11 Y13.56;
MoveC X19.11 Y13.78;
MoveC X19.33 Y14.0;
MoveC X19.33 Y16.0;
MoveC X19.11 Y16.22;
MoveC X19.11 Y16.67;
MoveC X18.89 Y16.89;
MoveC X18.67 Y16.67;
MoveC X18.67 Y16.0;
MoveC X18.89 Y15.78;
MoveC X18.89 Y14.22;
MoveC X18.67 Y14.0;
MoveC X18.67 Y13.78;
MoveC X18.44 Y13.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X37.11 Y13.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X37.33 Y12.89;
MoveC X37.78 Y13.33;
MoveC X37.78 Y13.78;
MoveC X37.56 Y14.0;
MoveC X37.33 Y13.78;
MoveC X37.33 Y13.56;
MoveC X37.11 Y13.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X36.44 Y13.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X36.67 Y12.89;
MoveC X36.89 Y13.11;
MoveC X36.89 Y13.33;
MoveC X36.67 Y13.56;
MoveC X36.44 Y13.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X17.78 Y13.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X18.0 Y12.89;
MoveC X18.22 Y13.11;
MoveC X18.0 Y13.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X5.33 Y13.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X5.56 Y12.89;
MoveC X5.78 Y13.11;
MoveC X5.78 Y13.33;
MoveC X5.56 Y13.56;
MoveC X5.33 Y13.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.89 Y12.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X5.11 Y13.11;
MoveC X5.11 Y13.33;
MoveC X4.89 Y13.56;
MoveC X4.89 Y13.78;
MoveC X4.67 Y14.0;
MoveC X4.44 Y13.78;
MoveC X4.44 Y13.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X2.44 Y12.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X2.67 Y13.11;
MoveC X2.67 Y13.56;
MoveC X2.22 Y14.0;
MoveC X1.78 Y14.0;
MoveC X1.56 Y14.22;
MoveC X1.33 Y14.22;
MoveC X1.11 Y14.0;
MoveC X1.33 Y13.78;
MoveC X1.33 Y13.56;
MoveC X1.56 Y13.33;
MoveC X1.78 Y13.56;
MoveC X2.0 Y13.56;
MoveC X2.0 Y13.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X8.44 Y12.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.67 Y12.67;
MoveC X8.89 Y12.67;
MoveC X9.11 Y12.89;
MoveC X8.89 Y13.11;
MoveC X8.89 Y13.56;
MoveC X9.33 Y14.0;
MoveC X9.11 Y14.22;
MoveC X8.89 Y14.22;
MoveC X8.44 Y13.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X6.22 Y12.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X6.44 Y12.67;
MoveC X6.67 Y12.89;
MoveC X6.67 Y16.0;
MoveC X6.44 Y16.22;
MoveC X6.22 Y16.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X3.78 Y12.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X4.0 Y12.67;
MoveC X4.22 Y12.89;
MoveC X4.0 Y13.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X40.22 Y12.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X40.44 Y12.44;
MoveC X40.67 Y12.67;
MoveC X40.67 Y13.11;
MoveC X40.44 Y13.33;
MoveC X40.22 Y13.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X37.56 Y12.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X37.78 Y12.44;
MoveC X38.0 Y12.67;
MoveC X37.78 Y12.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X36.89 Y12.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X37.11 Y12.44;
MoveC X37.33 Y12.67;
MoveC X37.33 Y12.89;
MoveC X37.11 Y13.11;
MoveC X36.89 Y12.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X8.22 Y12.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.44 Y12.67;
MoveC X8.44 Y12.89;
MoveC X8.22 Y13.11;
MoveC X8.22 Y13.33;
MoveC X8.0 Y13.56;
MoveC X8.22 Y13.56;
MoveC X8.44 Y13.78;
MoveC X8.22 Y14.0;
MoveC X7.78 Y14.0;
MoveC X7.56 Y13.78;
MoveC X7.56 Y13.33;
MoveC X7.78 Y13.11;
MoveC X7.78 Y12.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X4.89 Y12.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X5.11 Y12.44;
MoveC X5.33 Y12.67;
MoveC X5.33 Y12.89;
MoveC X5.11 Y13.11;
MoveC X4.89 Y12.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X2.89 Y12.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X3.11 Y12.44;
MoveC X3.78 Y13.11;
MoveC X3.78 Y13.78;
MoveC X3.56 Y14.0;
MoveC X3.33 Y13.78;
MoveC X3.33 Y13.33;
MoveC X2.89 Y12.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X2.44 Y12.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X2.67 Y12.44;
MoveC X2.89 Y12.67;
MoveC X2.89 Y12.89;
MoveC X2.67 Y13.11;
MoveC X2.44 Y12.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X36.0 Y12.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X36.22 Y12.22;
MoveC X36.67 Y12.67;
MoveC X36.67 Y12.89;
MoveC X36.44 Y13.11;
MoveC X36.0 Y12.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X6.0 Y12.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X6.22 Y12.44;
MoveC X6.22 Y12.67;
MoveC X5.78 Y13.11;
MoveC X5.56 Y12.89;
MoveC X5.56 Y12.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X37.56 Y12.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X37.78 Y12.0;
MoveC X38.0 Y12.0;
MoveC X38.22 Y12.22;
MoveC X38.0 Y12.44;
MoveC X37.78 Y12.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X36.67 Y12.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X36.89 Y12.0;
MoveC X37.11 Y12.22;
MoveC X37.11 Y12.44;
MoveC X36.89 Y12.67;
MoveC X36.67 Y12.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X6.44 Y12.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X6.67 Y12.0;
MoveC X6.89 Y12.22;
MoveC X6.89 Y12.67;
MoveC X6.67 Y12.89;
MoveC X6.44 Y12.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X5.11 Y12.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X5.33 Y12.0;
MoveC X5.56 Y12.22;
MoveC X5.56 Y12.44;
MoveC X5.33 Y12.67;
MoveC X5.11 Y12.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X35.78 Y12.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X36.0 Y11.78;
MoveC X36.22 Y12.0;
MoveC X36.22 Y12.22;
MoveC X36.0 Y12.44;
MoveC X35.78 Y12.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X6.0 Y12.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X6.22 Y11.78;
MoveC X6.44 Y12.0;
MoveC X6.44 Y12.22;
MoveC X6.22 Y12.44;
MoveC X6.0 Y12.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X0.89 Y12.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X1.11 Y11.78;
MoveC X1.33 Y11.78;
MoveC X1.56 Y12.0;
MoveC X1.33 Y12.22;
MoveC X1.33 Y12.44;
MoveC X1.11 Y12.67;
MoveC X0.89 Y12.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X36.44 Y11.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X36.67 Y11.56;
MoveC X36.89 Y11.78;
MoveC X36.89 Y12.0;
MoveC X36.67 Y12.22;
MoveC X36.44 Y12.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X10.44 Y11.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X10.67 Y11.78;
MoveC X10.67 Y12.0;
MoveC X10.22 Y12.44;
MoveC X9.78 Y12.44;
MoveC X9.33 Y12.89;
MoveC X9.11 Y12.89;
MoveC X8.89 Y12.67;
MoveC X9.56 Y12.0;
MoveC X10.0 Y12.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X6.67 Y11.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X6.89 Y11.56;
MoveC X7.11 Y11.78;
MoveC X6.89 Y12.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X5.33 Y11.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X5.56 Y11.56;
MoveC X5.78 Y11.78;
MoveC X5.78 Y12.0;
MoveC X5.56 Y12.22;
MoveC X5.33 Y12.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X1.56 Y11.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X1.78 Y11.33;
MoveC X2.0 Y11.56;
MoveC X2.0 Y12.44;
MoveC X2.22 Y12.67;
MoveC X2.0 Y12.89;
MoveC X2.0 Y13.33;
MoveC X1.78 Y13.56;
MoveC X1.56 Y13.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X39.78 Y11.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X40.0 Y11.11;
MoveC X40.22 Y11.33;
MoveC X40.22 Y11.56;
MoveC X40.44 Y11.78;
MoveC X40.44 Y12.44;
MoveC X40.22 Y12.67;
MoveC X40.0 Y12.44;
MoveC X40.0 Y12.0;
MoveC X39.78 Y11.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X37.33 Y11.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X37.56 Y11.11;
MoveC X37.78 Y11.33;
MoveC X37.56 Y11.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X35.33 Y11.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X35.56 Y11.11;
MoveC X36.0 Y11.56;
MoveC X36.0 Y11.78;
MoveC X35.78 Y12.0;
MoveC X35.33 Y11.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X10.89 Y11.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X11.11 Y11.11;
MoveC X11.33 Y11.33;
MoveC X11.11 Y11.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X6.67 Y11.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X6.89 Y11.33;
MoveC X6.89 Y11.56;
MoveC X6.44 Y12.0;
MoveC X6.22 Y11.78;
MoveC X6.22 Y11.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X1.78 Y11.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X2.0 Y11.11;
MoveC X2.22 Y11.33;
MoveC X2.0 Y11.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X37.11 Y11.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X37.33 Y10.89;
MoveC X37.56 Y11.11;
MoveC X37.33 Y11.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X36.0 Y11.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X36.22 Y10.89;
MoveC X36.67 Y11.33;
MoveC X36.67 Y11.56;
MoveC X36.44 Y11.78;
MoveC X36.0 Y11.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X6.0 Y10.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X6.22 Y11.11;
MoveC X6.22 Y11.33;
MoveC X5.78 Y11.78;
MoveC X5.56 Y11.56;
MoveC X5.56 Y11.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X2.44 Y11.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X2.67 Y10.89;
MoveC X2.89 Y11.11;
MoveC X2.67 Y11.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X11.56 Y10.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X12.0 Y10.67;
MoveC X12.22 Y10.89;
MoveC X12.0 Y11.11;
MoveC X11.78 Y11.11;
MoveC X11.56 Y11.33;
MoveC X11.33 Y11.33;
MoveC X11.11 Y11.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X34.89 Y10.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X35.11 Y10.44;
MoveC X35.56 Y10.89;
MoveC X35.56 Y11.11;
MoveC X35.33 Y11.33;
MoveC X34.89 Y10.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X10.67 Y10.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X10.89 Y10.44;
MoveC X11.11 Y10.67;
MoveC X10.89 Y10.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X9.78 Y10.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X10.22 Y10.44;
MoveC X10.44 Y10.67;
MoveC X10.22 Y10.89;
MoveC X10.0 Y10.89;
MoveC X9.78 Y11.11;
MoveC X9.78 Y11.33;
MoveC X9.56 Y11.56;
MoveC X9.33 Y11.56;
MoveC X9.11 Y11.78;
MoveC X8.89 Y11.78;
MoveC X8.67 Y12.0;
MoveC X8.67 Y12.44;
MoveC X8.44 Y12.67;
MoveC X8.22 Y12.44;
MoveC X8.22 Y11.78;
MoveC X8.67 Y11.33;
MoveC X8.89 Y11.33;
MoveC X9.11 Y11.11;
MoveC X9.33 Y11.11;
MoveC X9.33 Y10.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X7.11 Y10.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X7.33 Y10.67;
MoveC X7.33 Y10.89;
MoveC X6.89 Y11.33;
MoveC X6.67 Y11.11;
MoveC X6.67 Y10.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X10.22 Y10.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X10.44 Y10.22;
MoveC X10.67 Y10.22;
MoveC X10.89 Y10.44;
MoveC X10.67 Y10.67;
MoveC X10.44 Y10.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X2.22 Y10.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X2.44 Y10.22;
MoveC X2.67 Y10.44;
MoveC X2.67 Y10.67;
MoveC X2.44 Y10.89;
MoveC X2.22 Y10.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X35.33 Y10.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X35.56 Y10.0;
MoveC X36.22 Y10.67;
MoveC X36.22 Y10.89;
MoveC X36.0 Y11.11;
MoveC X35.33 Y10.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X12.89 Y10.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X13.11 Y10.0;
MoveC X13.33 Y10.0;
MoveC X13.56 Y10.22;
MoveC X13.11 Y10.67;
MoveC X12.89 Y10.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X12.67 Y10.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X12.89 Y10.22;
MoveC X12.89 Y10.44;
MoveC X12.44 Y10.89;
MoveC X12.22 Y10.89;
MoveC X12.0 Y10.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X6.67 Y10.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X6.89 Y10.22;
MoveC X6.89 Y10.44;
MoveC X6.22 Y11.11;
MoveC X6.0 Y10.89;
MoveC X6.0 Y10.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X36.0 Y10.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X36.22 Y9.78;
MoveC X36.44 Y9.78;
MoveC X36.89 Y10.22;
MoveC X36.89 Y10.44;
MoveC X37.33 Y10.89;
MoveC X37.11 Y11.11;
MoveC X36.89 Y11.11;
MoveC X36.44 Y10.67;
MoveC X36.44 Y10.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X1.33 Y10.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X1.56 Y9.78;
MoveC X1.78 Y10.0;
MoveC X1.78 Y10.44;
MoveC X2.0 Y10.67;
MoveC X2.0 Y11.11;
MoveC X1.78 Y11.33;
MoveC X1.56 Y11.11;
MoveC X1.56 Y10.89;
MoveC X1.33 Y10.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X13.78 Y9.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X14.67 Y9.56;
MoveC X14.89 Y9.78;
MoveC X14.67 Y10.0;
MoveC X14.0 Y10.0;
MoveC X13.78 Y10.22;
MoveC X13.56 Y10.22;
MoveC X13.33 Y10.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X2.0 Y9.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X2.22 Y9.56;
MoveC X2.44 Y9.78;
MoveC X2.44 Y10.22;
MoveC X2.22 Y10.44;
MoveC X2.0 Y10.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X38.0 Y9.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X38.22 Y9.33;
MoveC X38.44 Y9.56;
MoveC X38.67 Y9.56;
MoveC X38.89 Y9.78;
MoveC X38.44 Y10.22;
MoveC X38.0 Y9.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X35.78 Y9.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X36.0 Y9.33;
MoveC X36.22 Y9.56;
MoveC X36.22 Y9.78;
MoveC X36.0 Y10.0;
MoveC X35.78 Y9.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X34.0 Y9.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X34.22 Y9.33;
MoveC X35.11 Y10.22;
MoveC X35.11 Y10.44;
MoveC X34.89 Y10.67;
MoveC X34.0 Y9.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X14.67 Y9.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X14.89 Y9.33;
MoveC X15.11 Y9.33;
MoveC X15.33 Y9.56;
MoveC X15.11 Y9.78;
MoveC X14.89 Y9.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X8.0 Y9.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.22 Y9.56;
MoveC X8.22 Y9.78;
MoveC X7.33 Y10.67;
MoveC X7.11 Y10.44;
MoveC X7.11 Y10.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X2.22 Y9.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X2.44 Y9.33;
MoveC X2.67 Y9.56;
MoveC X2.44 Y9.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X1.11 Y9.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X1.33 Y9.33;
MoveC X1.56 Y9.56;
MoveC X1.56 Y9.78;
MoveC X1.33 Y10.0;
MoveC X1.11 Y9.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X38.89 Y9.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X39.11 Y9.11;
MoveC X39.56 Y9.56;
MoveC X39.56 Y10.0;
MoveC X39.78 Y10.22;
MoveC X39.78 Y10.44;
MoveC X40.0 Y10.67;
MoveC X40.0 Y11.11;
MoveC X39.78 Y11.33;
MoveC X39.56 Y11.11;
MoveC X39.56 Y10.89;
MoveC X39.33 Y10.67;
MoveC X39.33 Y10.44;
MoveC X39.11 Y10.22;
MoveC X39.11 Y9.78;
MoveC X38.89 Y9.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X8.0 Y9.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.22 Y9.11;
MoveC X8.44 Y9.33;
MoveC X8.22 Y9.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X1.56 Y9.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X1.78 Y8.89;
MoveC X2.0 Y8.89;
MoveC X2.22 Y9.11;
MoveC X2.0 Y9.33;
MoveC X1.78 Y9.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X34.22 Y8.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X34.44 Y8.67;
MoveC X35.56 Y9.78;
MoveC X35.56 Y10.0;
MoveC X35.33 Y10.22;
MoveC X34.22 Y9.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X34.0 Y8.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X34.22 Y8.44;
MoveC X34.44 Y8.67;
MoveC X34.22 Y8.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X8.0 Y8.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.22 Y8.67;
MoveC X8.22 Y8.89;
MoveC X6.89 Y10.22;
MoveC X6.67 Y10.0;
MoveC X6.67 Y9.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X0.89 Y8.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X1.11 Y8.44;
MoveC X1.33 Y8.67;
MoveC X1.33 Y9.33;
MoveC X1.11 Y9.56;
MoveC X0.89 Y9.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X32.89 Y8.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X33.11 Y8.22;
MoveC X33.33 Y8.22;
MoveC X34.22 Y9.11;
MoveC X34.22 Y9.33;
MoveC X34.0 Y9.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X33.56 Y8.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X33.78 Y8.0;
MoveC X34.0 Y8.0;
MoveC X34.22 Y8.22;
MoveC X34.22 Y8.44;
MoveC X34.0 Y8.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X0.67 Y8.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X0.89 Y8.0;
MoveC X1.11 Y8.22;
MoveC X1.11 Y8.44;
MoveC X0.89 Y8.67;
MoveC X0.67 Y8.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X32.44 Y8.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X32.67 Y7.78;
MoveC X32.89 Y7.78;
MoveC X33.11 Y8.0;
MoveC X33.11 Y8.22;
MoveC X32.89 Y8.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X8.44 Y7.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.67 Y7.78;
MoveC X8.89 Y8.0;
MoveC X8.22 Y8.67;
MoveC X8.0 Y8.44;
MoveC X8.0 Y8.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X33.11 Y7.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X33.33 Y7.56;
MoveC X33.78 Y8.0;
MoveC X33.56 Y8.22;
MoveC X33.33 Y8.22;
MoveC X33.11 Y8.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X31.78 Y7.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X32.0 Y7.33;
MoveC X32.22 Y7.33;
MoveC X32.67 Y7.78;
MoveC X32.44 Y8.0;
MoveC X32.22 Y8.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X32.22 Y7.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X32.44 Y6.89;
MoveC X32.67 Y6.89;
MoveC X33.33 Y7.56;
MoveC X33.11 Y7.78;
MoveC X32.89 Y7.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X0.67 Y7.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X0.89 Y6.89;
MoveC X1.11 Y6.89;
MoveC X1.33 Y7.11;
MoveC X1.33 Y8.0;
MoveC X1.11 Y8.22;
MoveC X0.89 Y8.0;
MoveC X0.89 Y7.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X30.89 Y6.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X31.11 Y6.67;
MoveC X31.33 Y6.67;
MoveC X32.0 Y7.33;
MoveC X31.78 Y7.56;
MoveC X31.56 Y7.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X9.78 Y6.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X10.0 Y6.67;
MoveC X10.22 Y6.89;
MoveC X9.11 Y8.0;
MoveC X8.89 Y8.0;
MoveC X8.67 Y7.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X30.22 Y6.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X30.44 Y6.22;
MoveC X30.67 Y6.22;
MoveC X31.11 Y6.67;
MoveC X30.89 Y6.89;
MoveC X30.67 Y6.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X11.56 Y6.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X11.78 Y6.22;
MoveC X12.0 Y6.44;
MoveC X11.33 Y7.11;
MoveC X11.11 Y7.11;
MoveC X10.67 Y7.56;
MoveC X10.44 Y7.56;
MoveC X9.56 Y8.44;
MoveC X9.33 Y8.44;
MoveC X8.44 Y9.33;
MoveC X8.22 Y9.11;
MoveC X8.22 Y8.89;
MoveC X9.11 Y8.0;
MoveC X9.33 Y8.0;
MoveC X10.22 Y7.11;
MoveC X10.44 Y7.11;
MoveC X10.89 Y6.67;
MoveC X11.11 Y6.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X29.78 Y6.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X30.0 Y6.0;
MoveC X30.22 Y6.0;
MoveC X30.44 Y6.22;
MoveC X30.22 Y6.44;
MoveC X30.0 Y6.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X10.67 Y6.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X10.89 Y6.0;
MoveC X11.11 Y6.22;
MoveC X10.44 Y6.89;
MoveC X10.22 Y6.89;
MoveC X10.0 Y6.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X7.56 Y6.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X7.78 Y6.0;
MoveC X8.0 Y6.0;
MoveC X8.22 Y6.22;
MoveC X8.0 Y6.44;
MoveC X8.0 Y8.0;
MoveC X7.78 Y8.22;
MoveC X7.56 Y8.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X30.89 Y6.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X31.11 Y5.78;
MoveC X31.33 Y5.78;
MoveC X32.44 Y6.89;
MoveC X32.22 Y7.11;
MoveC X32.0 Y7.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X10.89 Y6.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X11.11 Y5.78;
MoveC X11.33 Y5.78;
MoveC X11.56 Y6.0;
MoveC X11.33 Y6.22;
MoveC X11.11 Y6.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X8.44 Y6.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.67 Y5.78;
MoveC X8.89 Y6.0;
MoveC X8.89 Y6.22;
MoveC X8.67 Y6.44;
MoveC X8.44 Y6.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X8.0 Y6.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.22 Y5.78;
MoveC X8.44 Y6.0;
MoveC X8.22 Y6.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X7.33 Y6.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X7.56 Y5.78;
MoveC X7.78 Y6.0;
MoveC X7.56 Y6.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X30.44 Y5.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X30.67 Y5.56;
MoveC X30.89 Y5.56;
MoveC X31.11 Y5.78;
MoveC X30.89 Y6.0;
MoveC X30.67 Y6.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X29.11 Y5.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X29.33 Y5.56;
MoveC X29.56 Y5.56;
MoveC X30.0 Y6.0;
MoveC X29.78 Y6.22;
MoveC X29.56 Y6.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X12.67 Y5.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X12.89 Y5.56;
MoveC X13.11 Y5.78;
MoveC X12.44 Y6.44;
MoveC X12.0 Y6.44;
MoveC X11.78 Y6.22;
MoveC X12.0 Y6.0;
MoveC X12.22 Y6.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X0.44 Y5.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X0.67 Y5.56;
MoveC X0.89 Y5.78;
MoveC X0.89 Y6.0;
MoveC X0.67 Y6.22;
MoveC X0.44 Y6.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X30.0 Y5.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X30.22 Y5.33;
MoveC X30.44 Y5.33;
MoveC X30.67 Y5.56;
MoveC X30.44 Y5.78;
MoveC X30.22 Y5.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X28.67 Y5.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X28.89 Y5.33;
MoveC X29.11 Y5.33;
MoveC X29.33 Y5.56;
MoveC X29.11 Y5.78;
MoveC X28.89 Y5.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X11.78 Y5.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X12.0 Y5.33;
MoveC X12.22 Y5.56;
MoveC X11.78 Y6.0;
MoveC X11.56 Y6.0;
MoveC X11.33 Y5.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X7.78 Y5.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.0 Y5.33;
MoveC X8.22 Y5.56;
MoveC X8.22 Y5.78;
MoveC X8.0 Y6.0;
MoveC X7.78 Y5.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X29.56 Y5.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X29.78 Y5.11;
MoveC X30.0 Y5.11;
MoveC X30.22 Y5.33;
MoveC X30.0 Y5.56;
MoveC X29.78 Y5.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X28.22 Y5.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X28.44 Y5.11;
MoveC X28.67 Y5.11;
MoveC X28.89 Y5.33;
MoveC X28.67 Y5.56;
MoveC X28.44 Y5.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X13.78 Y5.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X14.0 Y5.11;
MoveC X14.22 Y5.33;
MoveC X14.0 Y5.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X13.33 Y5.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X13.56 Y5.11;
MoveC X13.78 Y5.33;
MoveC X13.33 Y5.78;
MoveC X13.11 Y5.78;
MoveC X12.89 Y5.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X12.0 Y5.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X12.22 Y5.11;
MoveC X12.44 Y5.11;
MoveC X12.67 Y5.33;
MoveC X12.44 Y5.56;
MoveC X12.22 Y5.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X0.67 Y5.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X0.89 Y5.11;
MoveC X1.11 Y5.33;
MoveC X1.11 Y5.56;
MoveC X0.89 Y5.78;
MoveC X0.67 Y5.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X29.11 Y5.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X29.33 Y4.89;
MoveC X29.56 Y4.89;
MoveC X29.78 Y5.11;
MoveC X29.56 Y5.33;
MoveC X29.33 Y5.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X27.78 Y5.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X28.0 Y4.89;
MoveC X28.22 Y4.89;
MoveC X28.44 Y5.11;
MoveC X28.22 Y5.33;
MoveC X28.0 Y5.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X14.0 Y5.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X14.22 Y4.89;
MoveC X14.44 Y4.89;
MoveC X14.67 Y5.11;
MoveC X14.44 Y5.33;
MoveC X14.22 Y5.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X13.56 Y5.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X13.78 Y4.89;
MoveC X14.0 Y5.11;
MoveC X13.78 Y5.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X12.44 Y5.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X12.67 Y4.89;
MoveC X12.89 Y4.89;
MoveC X13.11 Y5.11;
MoveC X12.89 Y5.33;
MoveC X12.67 Y5.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X26.89 Y4.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X27.11 Y4.67;
MoveC X27.78 Y4.67;
MoveC X28.0 Y4.89;
MoveC X27.78 Y5.11;
MoveC X27.11 Y5.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X14.44 Y4.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X14.67 Y4.67;
MoveC X14.89 Y4.67;
MoveC X15.11 Y4.89;
MoveC X14.89 Y5.11;
MoveC X14.67 Y5.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X8.0 Y4.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.22 Y4.67;
MoveC X8.44 Y4.89;
MoveC X8.44 Y5.33;
MoveC X8.22 Y5.56;
MoveC X8.0 Y5.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X28.44 Y4.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X28.67 Y4.44;
MoveC X28.89 Y4.44;
MoveC X29.33 Y4.89;
MoveC X29.11 Y5.11;
MoveC X28.89 Y5.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X26.44 Y4.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X26.67 Y4.44;
MoveC X26.89 Y4.44;
MoveC X27.11 Y4.67;
MoveC X26.89 Y4.89;
MoveC X26.67 Y4.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X15.56 Y4.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X15.78 Y4.44;
MoveC X16.0 Y4.67;
MoveC X15.78 Y4.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X14.89 Y4.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X15.11 Y4.44;
MoveC X15.33 Y4.44;
MoveC X15.56 Y4.67;
MoveC X15.33 Y4.89;
MoveC X15.11 Y4.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X13.33 Y4.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X13.56 Y4.44;
MoveC X13.78 Y4.67;
MoveC X13.33 Y5.11;
MoveC X13.11 Y5.11;
MoveC X12.89 Y4.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X7.56 Y4.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X7.78 Y4.44;
MoveC X8.0 Y4.67;
MoveC X8.0 Y5.11;
MoveC X7.78 Y5.33;
MoveC X7.56 Y5.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X1.11 Y4.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X1.33 Y4.67;
MoveC X1.33 Y5.11;
MoveC X1.11 Y5.33;
MoveC X0.67 Y4.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X27.78 Y4.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X28.0 Y4.22;
MoveC X28.44 Y4.22;
MoveC X28.67 Y4.44;
MoveC X28.44 Y4.67;
MoveC X28.0 Y4.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X25.78 Y4.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X26.0 Y4.22;
MoveC X26.44 Y4.22;
MoveC X26.67 Y4.44;
MoveC X26.44 Y4.67;
MoveC X26.0 Y4.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X15.78 Y4.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X16.0 Y4.22;
MoveC X16.44 Y4.22;
MoveC X16.67 Y4.44;
MoveC X16.44 Y4.67;
MoveC X16.0 Y4.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X15.33 Y4.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X15.56 Y4.22;
MoveC X15.78 Y4.44;
MoveC X15.56 Y4.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X13.56 Y4.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X13.78 Y4.22;
MoveC X14.22 Y4.22;
MoveC X14.44 Y4.44;
MoveC X14.22 Y4.67;
MoveC X13.78 Y4.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X9.33 Y4.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X9.56 Y4.22;
MoveC X9.78 Y4.22;
MoveC X10.0 Y4.44;
MoveC X9.78 Y4.67;
MoveC X9.56 Y4.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X27.33 Y4.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X27.56 Y4.0;
MoveC X27.78 Y4.0;
MoveC X28.0 Y4.22;
MoveC X27.78 Y4.44;
MoveC X27.56 Y4.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X25.11 Y4.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X25.33 Y4.0;
MoveC X25.78 Y4.0;
MoveC X26.0 Y4.22;
MoveC X25.78 Y4.44;
MoveC X25.33 Y4.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X16.44 Y4.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X16.67 Y4.0;
MoveC X16.89 Y4.0;
MoveC X17.11 Y4.22;
MoveC X16.89 Y4.44;
MoveC X16.67 Y4.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X14.22 Y4.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X14.44 Y4.0;
MoveC X14.89 Y4.0;
MoveC X15.11 Y4.22;
MoveC X14.89 Y4.44;
MoveC X14.44 Y4.44;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X26.67 Y4.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X26.89 Y3.78;
MoveC X27.33 Y3.78;
MoveC X27.56 Y4.0;
MoveC X27.33 Y4.22;
MoveC X26.89 Y4.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X24.0 Y4.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X24.22 Y3.78;
MoveC X25.11 Y3.78;
MoveC X25.33 Y4.0;
MoveC X25.11 Y4.22;
MoveC X24.22 Y4.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X23.33 Y4.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X23.56 Y3.78;
MoveC X23.78 Y4.0;
MoveC X23.56 Y4.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X16.89 Y4.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X17.11 Y3.78;
MoveC X18.0 Y3.78;
MoveC X18.22 Y4.0;
MoveC X18.0 Y4.22;
MoveC X17.11 Y4.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X14.89 Y4.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X15.11 Y3.78;
MoveC X15.33 Y3.78;
MoveC X15.56 Y4.0;
MoveC X15.33 Y4.22;
MoveC X15.11 Y4.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X10.67 Y4.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X10.89 Y3.78;
MoveC X11.11 Y4.0;
MoveC X10.89 Y4.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X10.0 Y4.0;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X10.22 Y3.78;
MoveC X10.44 Y4.0;
MoveC X10.67 Y4.0;
MoveC X10.89 Y4.22;
MoveC X10.67 Y4.44;
MoveC X10.22 Y4.44;
MoveC X10.0 Y4.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X25.56 Y3.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X25.78 Y3.56;
MoveC X26.67 Y3.56;
MoveC X26.89 Y3.78;
MoveC X26.67 Y4.0;
MoveC X25.78 Y4.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X23.56 Y3.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X23.78 Y3.56;
MoveC X24.0 Y3.56;
MoveC X24.22 Y3.78;
MoveC X24.0 Y4.0;
MoveC X23.78 Y4.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X22.67 Y3.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X22.89 Y3.56;
MoveC X23.33 Y3.56;
MoveC X23.56 Y3.78;
MoveC X23.33 Y4.0;
MoveC X22.89 Y4.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X21.11 Y3.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X21.33 Y3.56;
MoveC X22.22 Y3.56;
MoveC X22.44 Y3.78;
MoveC X22.22 Y4.0;
MoveC X21.33 Y4.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X18.0 Y3.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X18.22 Y3.56;
MoveC X19.56 Y3.56;
MoveC X19.78 Y3.78;
MoveC X19.56 Y4.0;
MoveC X18.22 Y4.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X15.33 Y3.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X15.56 Y3.56;
MoveC X16.0 Y3.56;
MoveC X16.22 Y3.78;
MoveC X16.0 Y4.0;
MoveC X15.56 Y4.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X25.11 Y3.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X25.33 Y3.33;
MoveC X25.56 Y3.33;
MoveC X25.78 Y3.56;
MoveC X25.56 Y3.78;
MoveC X25.33 Y3.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X22.22 Y3.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X22.44 Y3.33;
MoveC X22.67 Y3.33;
MoveC X22.89 Y3.56;
MoveC X22.67 Y3.78;
MoveC X22.44 Y3.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X19.56 Y3.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X19.78 Y3.33;
MoveC X21.11 Y3.33;
MoveC X21.33 Y3.56;
MoveC X21.11 Y3.78;
MoveC X19.78 Y3.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X16.0 Y3.56;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X16.22 Y3.33;
MoveC X16.89 Y3.33;
MoveC X17.11 Y3.56;
MoveC X16.89 Y3.78;
MoveC X16.22 Y3.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X11.33 Y3.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X11.56 Y3.56;
MoveC X11.56 Y3.78;
MoveC X11.33 Y4.0;
MoveC X11.11 Y4.0;
MoveC X10.89 Y3.78;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X23.56 Y3.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X23.78 Y3.11;
MoveC X25.11 Y3.11;
MoveC X25.33 Y3.33;
MoveC X25.11 Y3.56;
MoveC X23.78 Y3.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X16.89 Y3.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X17.11 Y3.11;
MoveC X17.78 Y3.11;
MoveC X18.0 Y3.33;
MoveC X17.78 Y3.56;
MoveC X17.11 Y3.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X11.33 Y3.33;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X11.56 Y3.11;
MoveC X11.78 Y3.33;
MoveC X11.56 Y3.56;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X22.67 Y3.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X22.89 Y2.89;
MoveC X23.56 Y2.89;
MoveC X23.78 Y3.11;
MoveC X23.56 Y3.33;
MoveC X22.89 Y3.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X20.22 Y3.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X20.44 Y2.89;
MoveC X21.56 Y2.89;
MoveC X21.78 Y3.11;
MoveC X21.56 Y3.33;
MoveC X20.44 Y3.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X17.78 Y3.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X18.0 Y2.89;
MoveC X19.33 Y2.89;
MoveC X19.56 Y3.11;
MoveC X19.33 Y3.33;
MoveC X18.0 Y3.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X8.89 Y3.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X9.11 Y2.89;
MoveC X9.33 Y2.89;
MoveC X9.56 Y3.11;
MoveC X9.56 Y3.56;
MoveC X9.78 Y3.56;
MoveC X10.0 Y3.78;
MoveC X9.78 Y4.0;
MoveC X9.33 Y4.0;
MoveC X9.11 Y3.78;
MoveC X9.11 Y3.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X21.56 Y2.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X21.78 Y2.67;
MoveC X22.67 Y2.67;
MoveC X22.89 Y2.89;
MoveC X22.67 Y3.11;
MoveC X21.78 Y3.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X19.33 Y2.89;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X19.56 Y2.67;
MoveC X20.22 Y2.67;
MoveC X20.44 Y2.89;
MoveC X20.22 Y3.11;
MoveC X19.56 Y3.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X8.44 Y2.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X8.67 Y2.67;
MoveC X8.89 Y2.89;
MoveC X8.44 Y3.33;
MoveC X8.44 Y4.22;
MoveC X8.0 Y4.67;
MoveC X7.78 Y4.44;
MoveC X7.78 Y4.22;
MoveC X8.0 Y4.0;
MoveC X8.0 Y3.11;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X0.22 Y0.22;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X0.22 Y2.89;
MoveC X0.44 Y2.67;
MoveC X0.67 Y2.67;
MoveC X1.11 Y2.22;
MoveC X1.33 Y2.22;
MoveC X2.0 Y1.56;
MoveC X2.0 Y1.33;
MoveC X2.44 Y0.89;
MoveC X2.67 Y0.89;
MoveC X2.89 Y0.67;
MoveC X2.89 Y0.44;
MoveC X2.67 Y0.22;
MoveC X2.44 Y0.22;
MoveC X2.22 Y0.44;
MoveC X2.0 Y0.22;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X0.89 Y1.78;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X1.11 Y1.56;
MoveC X1.33 Y1.78;
MoveC X1.11 Y2.0;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X1.56 Y1.11;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X1.78 Y0.89;
MoveC X2.0 Y1.11;
MoveC X1.78 Y1.33;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X2.44 Y0.67;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X2.67 Y0.44;
MoveC X2.89 Y0.67;
MoveC X2.67 Y0.89;
Output OFF;
MoveZ Z0.00; ! Move pen up

MoveC X2.22 Y0.44;
Output ON;
MoveZ Z2.00; ! Move pen down
MoveC X2.44 Y0.22;
MoveC X2.67 Y0.44;
MoveC X2.44 Y0.67;
Output OFF;
MoveZ Z0.00; ! Move pen up

Output OFF;
MoveZ Z0.00; ! Move pen up

! Move DexTAR to its home configuration
MoveZ L0.0;
MoveJ A0.0 B0.0;
END;
