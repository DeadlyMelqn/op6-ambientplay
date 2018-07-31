.class public abstract Landroid/location/ILocationManager$Stub;
.super Landroid/os/Binder;
.source "ILocationManager.java"

# interfaces
.implements Landroid/location/ILocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationManager"

.field static final TRANSACTION_addGnssBatchingCallback:I = 0x12

.field static final TRANSACTION_addGnssMeasurementsListener:I = 0xc

.field static final TRANSACTION_addGnssNavigationMessageListener:I = 0xe

.field static final TRANSACTION_addTestProvider:I = 0x1e

.field static final TRANSACTION_clearAllPendingBroadcastsLocked:I = 0x2b

.field static final TRANSACTION_clearTestProviderEnabled:I = 0x23

.field static final TRANSACTION_clearTestProviderLocation:I = 0x21

.field static final TRANSACTION_clearTestProviderStatus:I = 0x25

.field static final TRANSACTION_flushGnssBatch:I = 0x15

.field static final TRANSACTION_geocoderIsPresent:I = 0x8

.field static final TRANSACTION_getAllProviders:I = 0x17

.field static final TRANSACTION_getBackgroundThrottlingWhitelist:I = 0x2a

.field static final TRANSACTION_getBestProvider:I = 0x19

.field static final TRANSACTION_getCurrentProviderPackageList:I = 0x2d

.field static final TRANSACTION_getCurrentProviderPackageListsForInteger:I = 0x2e

.field static final TRANSACTION_getFromLocation:I = 0x9

.field static final TRANSACTION_getFromLocationName:I = 0xa

.field static final TRANSACTION_getGnssBatchSize:I = 0x11

.field static final TRANSACTION_getGnssYearOfHardware:I = 0x10

.field static final TRANSACTION_getLastKnownLocation:I = 0x2c

.field static final TRANSACTION_getLastLocation:I = 0x5

.field static final TRANSACTION_getNetworkProviderPackage:I = 0x1c

.field static final TRANSACTION_getProviderProperties:I = 0x1b

.field static final TRANSACTION_getProviders:I = 0x18

.field static final TRANSACTION_isProviderEnabled:I = 0x1d

.field static final TRANSACTION_locationCallbackFinished:I = 0x29

.field static final TRANSACTION_providerMeetsCriteria:I = 0x1a

.field static final TRANSACTION_registerGnssStatusCallback:I = 0x6

.field static final TRANSACTION_removeGeofence:I = 0x4

.field static final TRANSACTION_removeGnssBatchingCallback:I = 0x13

.field static final TRANSACTION_removeGnssMeasurementsListener:I = 0xd

.field static final TRANSACTION_removeGnssNavigationMessageListener:I = 0xf

.field static final TRANSACTION_removeTestProvider:I = 0x1f

.field static final TRANSACTION_removeUpdates:I = 0x2

.field static final TRANSACTION_reportLocation:I = 0x27

.field static final TRANSACTION_reportLocationBatch:I = 0x28

.field static final TRANSACTION_requestGeofence:I = 0x3

.field static final TRANSACTION_requestLocationUpdates:I = 0x1

.field static final TRANSACTION_sendExtraCommand:I = 0x26

.field static final TRANSACTION_sendNiResponse:I = 0xb

.field static final TRANSACTION_setTestProviderEnabled:I = 0x22

.field static final TRANSACTION_setTestProviderLocation:I = 0x20

.field static final TRANSACTION_setTestProviderStatus:I = 0x24

.field static final TRANSACTION_startGnssBatch:I = 0x14

.field static final TRANSACTION_stopGnssBatch:I = 0x16

.field static final TRANSACTION_unregisterGnssStatusCallback:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.location.ILocationManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/ILocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.location.ILocationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/ILocationManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/location/ILocationManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/location/ILocationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/ILocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 65
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 692
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    .line 47
    :sswitch_0
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v7, 0x1

    return v7

    .line 52
    :sswitch_1
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    .line 55
    sget-object v7, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/location/LocationRequest;

    .line 61
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v50

    .line 63
    .local v50, "_arg1":Landroid/location/ILocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    .line 64
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/app/PendingIntent;

    .line 70
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v57

    .line 71
    .local v57, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v50

    move-object/from16 v3, v55

    move-object/from16 v4, v57

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/location/ILocationManager$Stub;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    const/4 v7, 0x1

    return v7

    .line 58
    .end local v50    # "_arg1":Landroid/location/ILocationListener;
    .end local v57    # "_arg3":Ljava/lang/String;
    :cond_0
    const/16 v45, 0x0

    .local v45, "_arg0":Landroid/location/LocationRequest;
    goto :goto_0

    .line 67
    .end local v45    # "_arg0":Landroid/location/LocationRequest;
    .restart local v50    # "_arg1":Landroid/location/ILocationListener;
    :cond_1
    const/16 v55, 0x0

    .local v55, "_arg2":Landroid/app/PendingIntent;
    goto :goto_1

    .line 77
    .end local v50    # "_arg1":Landroid/location/ILocationListener;
    .end local v55    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_2
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v43

    .line 81
    .local v43, "_arg0":Landroid/location/ILocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    .line 82
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/app/PendingIntent;

    .line 88
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v56

    .line 89
    .local v56, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v47

    move-object/from16 v3, v56

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    const/4 v7, 0x1

    return v7

    .line 85
    .end local v56    # "_arg2":Ljava/lang/String;
    :cond_2
    const/16 v47, 0x0

    .local v47, "_arg1":Landroid/app/PendingIntent;
    goto :goto_2

    .line 95
    .end local v43    # "_arg0":Landroid/location/ILocationListener;
    .end local v47    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_3
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    .line 98
    sget-object v7, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/location/LocationRequest;

    .line 104
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    .line 105
    sget-object v7, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/location/Geofence;

    .line 111
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    .line 112
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/app/PendingIntent;

    .line 118
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v57

    .line 119
    .restart local v57    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v49

    move-object/from16 v3, v55

    move-object/from16 v4, v57

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/location/ILocationManager$Stub;->requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    const/4 v7, 0x1

    return v7

    .line 101
    .end local v57    # "_arg3":Ljava/lang/String;
    :cond_3
    const/16 v45, 0x0

    .restart local v45    # "_arg0":Landroid/location/LocationRequest;
    goto :goto_3

    .line 108
    .end local v45    # "_arg0":Landroid/location/LocationRequest;
    :cond_4
    const/16 v49, 0x0

    .local v49, "_arg1":Landroid/location/Geofence;
    goto :goto_4

    .line 115
    .end local v49    # "_arg1":Landroid/location/Geofence;
    :cond_5
    const/16 v55, 0x0

    .restart local v55    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_5

    .line 125
    .end local v55    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_4
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6

    .line 128
    sget-object v7, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/location/Geofence;

    .line 134
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7

    .line 135
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/app/PendingIntent;

    .line 141
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v56

    .line 142
    .restart local v56    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v47

    move-object/from16 v3, v56

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    const/4 v7, 0x1

    return v7

    .line 131
    .end local v56    # "_arg2":Ljava/lang/String;
    :cond_6
    const/16 v29, 0x0

    .local v29, "_arg0":Landroid/location/Geofence;
    goto :goto_6

    .line 138
    .end local v29    # "_arg0":Landroid/location/Geofence;
    :cond_7
    const/16 v47, 0x0

    .restart local v47    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_7

    .line 148
    .end local v47    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_5
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_8

    .line 151
    sget-object v7, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/location/LocationRequest;

    .line 157
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 158
    .local v53, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v59

    .line 159
    .local v59, "_result":Landroid/location/Location;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v59, :cond_9

    .line 161
    const/4 v7, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    const/4 v7, 0x1

    move-object/from16 v0, v59

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v7}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    .line 167
    :goto_9
    const/4 v7, 0x1

    return v7

    .line 154
    .end local v53    # "_arg1":Ljava/lang/String;
    .end local v59    # "_result":Landroid/location/Location;
    :cond_8
    const/16 v45, 0x0

    .restart local v45    # "_arg0":Landroid/location/LocationRequest;
    goto :goto_8

    .line 165
    .end local v45    # "_arg0":Landroid/location/LocationRequest;
    .restart local v53    # "_arg1":Ljava/lang/String;
    .restart local v59    # "_result":Landroid/location/Location;
    :cond_9
    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 171
    .end local v53    # "_arg1":Ljava/lang/String;
    .end local v59    # "_result":Landroid/location/Location;
    :sswitch_6
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/IGnssStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssStatusListener;

    move-result-object v42

    .line 175
    .local v42, "_arg0":Landroid/location/IGnssStatusListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 176
    .restart local v53    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;)Z

    move-result v63

    .line 177
    .local v63, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v63, :cond_a

    const/4 v7, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    const/4 v7, 0x1

    return v7

    .line 178
    :cond_a
    const/4 v7, 0x0

    goto :goto_a

    .line 183
    .end local v42    # "_arg0":Landroid/location/IGnssStatusListener;
    .end local v53    # "_arg1":Ljava/lang/String;
    .end local v63    # "_result":Z
    :sswitch_7
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/IGnssStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssStatusListener;

    move-result-object v42

    .line 186
    .restart local v42    # "_arg0":Landroid/location/IGnssStatusListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V

    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    const/4 v7, 0x1

    return v7

    .line 192
    .end local v42    # "_arg0":Landroid/location/IGnssStatusListener;
    :sswitch_8
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->geocoderIsPresent()Z

    move-result v63

    .line 194
    .restart local v63    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    if-eqz v63, :cond_b

    const/4 v7, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    const/4 v7, 0x1

    return v7

    .line 195
    :cond_b
    const/4 v7, 0x0

    goto :goto_b

    .line 200
    .end local v63    # "_result":Z
    :sswitch_9
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .line 204
    .local v8, "_arg0":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v10

    .line 206
    .local v10, "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 208
    .local v12, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_c

    .line 209
    sget-object v7, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/location/GeocoderParams;

    .line 215
    :goto_c
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .local v14, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v7, p0

    .line 216
    invoke-virtual/range {v7 .. v14}, Landroid/location/ILocationManager$Stub;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v61

    .line 217
    .local v61, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    move-object/from16 v0, p3

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 220
    const/4 v7, 0x1

    return v7

    .line 212
    .end local v14    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v61    # "_result":Ljava/lang/String;
    :cond_c
    const/4 v13, 0x0

    .local v13, "_arg3":Landroid/location/GeocoderParams;
    goto :goto_c

    .line 224
    .end local v8    # "_arg0":D
    .end local v10    # "_arg1":D
    .end local v12    # "_arg2":I
    .end local v13    # "_arg3":Landroid/location/GeocoderParams;
    :sswitch_a
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 228
    .local v17, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v10

    .line 230
    .restart local v10    # "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v20

    .line 232
    .local v20, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v22

    .line 234
    .local v22, "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v24

    .line 236
    .local v24, "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 238
    .local v26, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_d

    .line 239
    sget-object v7, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/location/GeocoderParams;

    .line 245
    :goto_d
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .local v28, "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v16, p0

    move-wide/from16 v18, v10

    .line 246
    invoke-virtual/range {v16 .. v28}, Landroid/location/ILocationManager$Stub;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v61

    .line 247
    .restart local v61    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    move-object/from16 v0, p3

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 250
    const/4 v7, 0x1

    return v7

    .line 242
    .end local v28    # "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v61    # "_result":Ljava/lang/String;
    :cond_d
    const/16 v27, 0x0

    .local v27, "_arg6":Landroid/location/GeocoderParams;
    goto :goto_d

    .line 254
    .end local v10    # "_arg1":D
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg2":D
    .end local v22    # "_arg3":D
    .end local v24    # "_arg4":D
    .end local v26    # "_arg5":I
    .end local v27    # "_arg6":Landroid/location/GeocoderParams;
    :sswitch_b
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 258
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 259
    .local v32, "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v6, v1}, Landroid/location/ILocationManager$Stub;->sendNiResponse(II)Z

    move-result v63

    .line 260
    .restart local v63    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    if-eqz v63, :cond_e

    const/4 v7, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    const/4 v7, 0x1

    return v7

    .line 261
    :cond_e
    const/4 v7, 0x0

    goto :goto_e

    .line 266
    .end local v6    # "_arg0":I
    .end local v32    # "_arg1":I
    .end local v63    # "_result":Z
    :sswitch_c
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/IGnssMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssMeasurementsListener;

    move-result-object v40

    .line 270
    .local v40, "_arg0":Landroid/location/IGnssMeasurementsListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 271
    .restart local v53    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->addGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;)Z

    move-result v63

    .line 272
    .restart local v63    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    if-eqz v63, :cond_f

    const/4 v7, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    const/4 v7, 0x1

    return v7

    .line 273
    :cond_f
    const/4 v7, 0x0

    goto :goto_f

    .line 278
    .end local v40    # "_arg0":Landroid/location/IGnssMeasurementsListener;
    .end local v53    # "_arg1":Ljava/lang/String;
    .end local v63    # "_result":Z
    :sswitch_d
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/IGnssMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssMeasurementsListener;

    move-result-object v40

    .line 281
    .restart local v40    # "_arg0":Landroid/location/IGnssMeasurementsListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V

    .line 282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    const/4 v7, 0x1

    return v7

    .line 287
    .end local v40    # "_arg0":Landroid/location/IGnssMeasurementsListener;
    :sswitch_e
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/IGnssNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNavigationMessageListener;

    move-result-object v41

    .line 291
    .local v41, "_arg0":Landroid/location/IGnssNavigationMessageListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 292
    .restart local v53    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;)Z

    move-result v63

    .line 293
    .restart local v63    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    if-eqz v63, :cond_10

    const/4 v7, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    const/4 v7, 0x1

    return v7

    .line 294
    :cond_10
    const/4 v7, 0x0

    goto :goto_10

    .line 299
    .end local v41    # "_arg0":Landroid/location/IGnssNavigationMessageListener;
    .end local v53    # "_arg1":Ljava/lang/String;
    .end local v63    # "_result":Z
    :sswitch_f
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/IGnssNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNavigationMessageListener;

    move-result-object v41

    .line 302
    .restart local v41    # "_arg0":Landroid/location/IGnssNavigationMessageListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V

    .line 303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    const/4 v7, 0x1

    return v7

    .line 308
    .end local v41    # "_arg0":Landroid/location/IGnssNavigationMessageListener;
    :sswitch_10
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getGnssYearOfHardware()I

    move-result v58

    .line 310
    .local v58, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    move-object/from16 v0, p3

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    const/4 v7, 0x1

    return v7

    .line 316
    .end local v58    # "_result":I
    :sswitch_11
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 319
    .restart local v17    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->getGnssBatchSize(Ljava/lang/String;)I

    move-result v58

    .line 320
    .restart local v58    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    move-object/from16 v0, p3

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    const/4 v7, 0x1

    return v7

    .line 326
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v58    # "_result":I
    :sswitch_12
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/IBatchedLocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IBatchedLocationCallback;

    move-result-object v37

    .line 330
    .local v37, "_arg0":Landroid/location/IBatchedLocationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 331
    .restart local v53    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->addGnssBatchingCallback(Landroid/location/IBatchedLocationCallback;Ljava/lang/String;)Z

    move-result v63

    .line 332
    .restart local v63    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    if-eqz v63, :cond_11

    const/4 v7, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    const/4 v7, 0x1

    return v7

    .line 333
    :cond_11
    const/4 v7, 0x0

    goto :goto_11

    .line 338
    .end local v37    # "_arg0":Landroid/location/IBatchedLocationCallback;
    .end local v53    # "_arg1":Ljava/lang/String;
    .end local v63    # "_result":Z
    :sswitch_13
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->removeGnssBatchingCallback()V

    .line 340
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    const/4 v7, 0x1

    return v7

    .line 345
    :sswitch_14
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v38

    .line 349
    .local v38, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_12

    const/16 v54, 0x1

    .line 351
    .local v54, "_arg1":Z
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v56

    .line 352
    .restart local v56    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    move/from16 v3, v54

    move-object/from16 v4, v56

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/location/ILocationManager$Stub;->startGnssBatch(JZLjava/lang/String;)Z

    move-result v63

    .line 353
    .restart local v63    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    if-eqz v63, :cond_13

    const/4 v7, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    const/4 v7, 0x1

    return v7

    .line 349
    .end local v54    # "_arg1":Z
    .end local v56    # "_arg2":Ljava/lang/String;
    .end local v63    # "_result":Z
    :cond_12
    const/16 v54, 0x0

    .restart local v54    # "_arg1":Z
    goto :goto_12

    .line 354
    .restart local v56    # "_arg2":Ljava/lang/String;
    .restart local v63    # "_result":Z
    :cond_13
    const/4 v7, 0x0

    goto :goto_13

    .line 359
    .end local v38    # "_arg0":J
    .end local v54    # "_arg1":Z
    .end local v56    # "_arg2":Ljava/lang/String;
    .end local v63    # "_result":Z
    :sswitch_15
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 362
    .restart local v17    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->flushGnssBatch(Ljava/lang/String;)V

    .line 363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    const/4 v7, 0x1

    return v7

    .line 368
    .end local v17    # "_arg0":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->stopGnssBatch()Z

    move-result v63

    .line 370
    .restart local v63    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    if-eqz v63, :cond_14

    const/4 v7, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    const/4 v7, 0x1

    return v7

    .line 371
    :cond_14
    const/4 v7, 0x0

    goto :goto_14

    .line 376
    .end local v63    # "_result":Z
    :sswitch_17
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getAllProviders()Ljava/util/List;

    move-result-object v62

    .line 378
    .local v62, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    move-object/from16 v0, p3

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 380
    const/4 v7, 0x1

    return v7

    .line 384
    .end local v62    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_18
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_15

    .line 387
    sget-object v7, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/location/Criteria;

    .line 393
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_16

    const/16 v54, 0x1

    .line 394
    .restart local v54    # "_arg1":Z
    :goto_16
    move-object/from16 v0, p0

    move/from16 v1, v54

    invoke-virtual {v0, v15, v1}, Landroid/location/ILocationManager$Stub;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v62

    .line 395
    .restart local v62    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    move-object/from16 v0, p3

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 397
    const/4 v7, 0x1

    return v7

    .line 390
    .end local v54    # "_arg1":Z
    .end local v62    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_15
    const/4 v15, 0x0

    .local v15, "_arg0":Landroid/location/Criteria;
    goto :goto_15

    .line 393
    .end local v15    # "_arg0":Landroid/location/Criteria;
    :cond_16
    const/16 v54, 0x0

    .restart local v54    # "_arg1":Z
    goto :goto_16

    .line 401
    .end local v54    # "_arg1":Z
    :sswitch_19
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_17

    .line 404
    sget-object v7, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/location/Criteria;

    .line 410
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_18

    const/16 v54, 0x1

    .line 411
    .restart local v54    # "_arg1":Z
    :goto_18
    move-object/from16 v0, p0

    move/from16 v1, v54

    invoke-virtual {v0, v15, v1}, Landroid/location/ILocationManager$Stub;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v61

    .line 412
    .restart local v61    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    move-object/from16 v0, p3

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 414
    const/4 v7, 0x1

    return v7

    .line 407
    .end local v54    # "_arg1":Z
    .end local v61    # "_result":Ljava/lang/String;
    :cond_17
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/location/Criteria;
    goto :goto_17

    .line 410
    .end local v15    # "_arg0":Landroid/location/Criteria;
    :cond_18
    const/16 v54, 0x0

    .restart local v54    # "_arg1":Z
    goto :goto_18

    .line 418
    .end local v54    # "_arg1":Z
    :sswitch_1a
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 422
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_19

    .line 423
    sget-object v7, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/location/Criteria;

    .line 428
    :goto_19
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->providerMeetsCriteria(Ljava/lang/String;Landroid/location/Criteria;)Z

    move-result v63

    .line 429
    .restart local v63    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    if-eqz v63, :cond_1a

    const/4 v7, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    const/4 v7, 0x1

    return v7

    .line 426
    .end local v63    # "_result":Z
    :cond_19
    const/16 v48, 0x0

    .local v48, "_arg1":Landroid/location/Criteria;
    goto :goto_19

    .line 430
    .end local v48    # "_arg1":Landroid/location/Criteria;
    .restart local v63    # "_result":Z
    :cond_1a
    const/4 v7, 0x0

    goto :goto_1a

    .line 435
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v63    # "_result":Z
    :sswitch_1b
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 438
    .restart local v17    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;

    move-result-object v60

    .line 439
    .local v60, "_result":Lcom/android/internal/location/ProviderProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    if-eqz v60, :cond_1b

    .line 441
    const/4 v7, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    const/4 v7, 0x1

    move-object/from16 v0, v60

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/location/ProviderProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 447
    :goto_1b
    const/4 v7, 0x1

    return v7

    .line 445
    :cond_1b
    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    .line 451
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v60    # "_result":Lcom/android/internal/location/ProviderProperties;
    :sswitch_1c
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getNetworkProviderPackage()Ljava/lang/String;

    move-result-object v61

    .line 453
    .restart local v61    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    move-object/from16 v0, p3

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 455
    const/4 v7, 0x1

    return v7

    .line 459
    .end local v61    # "_result":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 462
    .restart local v17    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v63

    .line 463
    .restart local v63    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    if-eqz v63, :cond_1c

    const/4 v7, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    const/4 v7, 0x1

    return v7

    .line 464
    :cond_1c
    const/4 v7, 0x0

    goto :goto_1c

    .line 469
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v63    # "_result":Z
    :sswitch_1e
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 473
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1d

    .line 474
    sget-object v7, Lcom/android/internal/location/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/internal/location/ProviderProperties;

    .line 480
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v56

    .line 481
    .restart local v56    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v52

    move-object/from16 v3, v56

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Ljava/lang/String;)V

    .line 482
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    const/4 v7, 0x1

    return v7

    .line 477
    .end local v56    # "_arg2":Ljava/lang/String;
    :cond_1d
    const/16 v52, 0x0

    .local v52, "_arg1":Lcom/android/internal/location/ProviderProperties;
    goto :goto_1d

    .line 487
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v52    # "_arg1":Lcom/android/internal/location/ProviderProperties;
    :sswitch_1f
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 491
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 492
    .restart local v53    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->removeTestProvider(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    const/4 v7, 0x1

    return v7

    .line 498
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v53    # "_arg1":Ljava/lang/String;
    :sswitch_20
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 502
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1e

    .line 503
    sget-object v7, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/location/Location;

    .line 509
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v56

    .line 510
    .restart local v56    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v51

    move-object/from16 v3, v56

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    const/4 v7, 0x1

    return v7

    .line 506
    .end local v56    # "_arg2":Ljava/lang/String;
    :cond_1e
    const/16 v51, 0x0

    .local v51, "_arg1":Landroid/location/Location;
    goto :goto_1e

    .line 516
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v51    # "_arg1":Landroid/location/Location;
    :sswitch_21
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 520
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 521
    .restart local v53    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->clearTestProviderLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    const/4 v7, 0x1

    return v7

    .line 527
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v53    # "_arg1":Ljava/lang/String;
    :sswitch_22
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 531
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1f

    const/16 v54, 0x1

    .line 533
    .restart local v54    # "_arg1":Z
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v56

    .line 534
    .restart local v56    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v54

    move-object/from16 v3, v56

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;)V

    .line 535
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    const/4 v7, 0x1

    return v7

    .line 531
    .end local v54    # "_arg1":Z
    .end local v56    # "_arg2":Ljava/lang/String;
    :cond_1f
    const/16 v54, 0x0

    .restart local v54    # "_arg1":Z
    goto :goto_1f

    .line 540
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v54    # "_arg1":Z
    :sswitch_23
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 544
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 545
    .restart local v53    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->clearTestProviderEnabled(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    const/4 v7, 0x1

    return v7

    .line 551
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v53    # "_arg1":Ljava/lang/String;
    :sswitch_24
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 555
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 557
    .restart local v32    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_20

    .line 558
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/os/Bundle;

    .line 564
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    .line 566
    .local v34, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .local v36, "_arg4":Ljava/lang/String;
    move-object/from16 v30, p0

    move-object/from16 v31, v17

    .line 567
    invoke-virtual/range {v30 .. v36}, Landroid/location/ILocationManager$Stub;->setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;JLjava/lang/String;)V

    .line 568
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    const/4 v7, 0x1

    return v7

    .line 561
    .end local v34    # "_arg3":J
    .end local v36    # "_arg4":Ljava/lang/String;
    :cond_20
    const/16 v33, 0x0

    .local v33, "_arg2":Landroid/os/Bundle;
    goto :goto_20

    .line 573
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v32    # "_arg1":I
    .end local v33    # "_arg2":Landroid/os/Bundle;
    :sswitch_25
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 577
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 578
    .restart local v53    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->clearTestProviderStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    const/4 v7, 0x1

    return v7

    .line 584
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v53    # "_arg1":Ljava/lang/String;
    :sswitch_26
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 588
    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 590
    .restart local v53    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_21

    .line 591
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/os/Bundle;

    .line 596
    :goto_21
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v53

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v63

    .line 597
    .restart local v63    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    if-eqz v63, :cond_22

    const/4 v7, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    if-eqz v33, :cond_23

    .line 600
    const/4 v7, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    const/4 v7, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 606
    :goto_23
    const/4 v7, 0x1

    return v7

    .line 594
    .end local v63    # "_result":Z
    :cond_21
    const/16 v33, 0x0

    .restart local v33    # "_arg2":Landroid/os/Bundle;
    goto :goto_21

    .line 598
    .end local v33    # "_arg2":Landroid/os/Bundle;
    .restart local v63    # "_result":Z
    :cond_22
    const/4 v7, 0x0

    goto :goto_22

    .line 604
    :cond_23
    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_23

    .line 610
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v53    # "_arg1":Ljava/lang/String;
    .end local v63    # "_result":Z
    :sswitch_27
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_24

    .line 613
    sget-object v7, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/location/Location;

    .line 619
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_25

    const/16 v54, 0x1

    .line 620
    .restart local v54    # "_arg1":Z
    :goto_25
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->reportLocation(Landroid/location/Location;Z)V

    .line 621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    const/4 v7, 0x1

    return v7

    .line 616
    .end local v54    # "_arg1":Z
    :cond_24
    const/16 v44, 0x0

    .local v44, "_arg0":Landroid/location/Location;
    goto :goto_24

    .line 619
    .end local v44    # "_arg0":Landroid/location/Location;
    :cond_25
    const/16 v54, 0x0

    .restart local v54    # "_arg1":Z
    goto :goto_25

    .line 626
    .end local v54    # "_arg1":Z
    :sswitch_28
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    sget-object v7, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v46

    .line 629
    .local v46, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->reportLocationBatch(Ljava/util/List;)V

    .line 630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    const/4 v7, 0x1

    return v7

    .line 635
    .end local v46    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    :sswitch_29
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v43

    .line 638
    .restart local v43    # "_arg0":Landroid/location/ILocationListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->locationCallbackFinished(Landroid/location/ILocationListener;)V

    .line 639
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    const/4 v7, 0x1

    return v7

    .line 644
    .end local v43    # "_arg0":Landroid/location/ILocationListener;
    :sswitch_2a
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getBackgroundThrottlingWhitelist()[Ljava/lang/String;

    move-result-object v64

    .line 646
    .local v64, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    move-object/from16 v0, p3

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 648
    const/4 v7, 0x1

    return v7

    .line 652
    .end local v64    # "_result":[Ljava/lang/String;
    :sswitch_2b
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->clearAllPendingBroadcastsLocked()V

    .line 654
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    const/4 v7, 0x1

    return v7

    .line 659
    :sswitch_2c
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v59

    .line 661
    .restart local v59    # "_result":Landroid/location/Location;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    if-eqz v59, :cond_26

    .line 663
    const/4 v7, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    const/4 v7, 0x1

    move-object/from16 v0, v59

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v7}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    .line 669
    :goto_26
    const/4 v7, 0x1

    return v7

    .line 667
    :cond_26
    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 673
    .end local v59    # "_result":Landroid/location/Location;
    :sswitch_2d
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 676
    .restart local v17    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->getCurrentProviderPackageList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v62

    .line 677
    .restart local v62    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    move-object/from16 v0, p3

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 679
    const/4 v7, 0x1

    return v7

    .line 683
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v62    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2e
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 686
    .restart local v17    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->getCurrentProviderPackageListsForInteger(Ljava/lang/String;)Ljava/util/List;

    move-result-object v62

    .line 687
    .restart local v62    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    move-object/from16 v0, p3

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 689
    const/4 v7, 0x1

    return v7

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
