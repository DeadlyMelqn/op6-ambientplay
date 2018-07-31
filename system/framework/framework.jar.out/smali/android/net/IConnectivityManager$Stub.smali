.class public abstract Landroid/net/IConnectivityManager$Stub;
.super Landroid/os/Binder;
.source "IConnectivityManager.java"

# interfaces
.implements Landroid/net/IConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManager"

.field static final TRANSACTION_addVpnAddress:I = 0x45

.field static final TRANSACTION_checkMobileProvisioning:I = 0x32

.field static final TRANSACTION_establishVpn:I = 0x29

.field static final TRANSACTION_factoryReset:I = 0x48

.field static final TRANSACTION_getActiveLinkProperties:I = 0xc

.field static final TRANSACTION_getActiveNetwork:I = 0x1

.field static final TRANSACTION_getActiveNetworkForUid:I = 0x2

.field static final TRANSACTION_getActiveNetworkInfo:I = 0x3

.field static final TRANSACTION_getActiveNetworkInfoForUid:I = 0x4

.field static final TRANSACTION_getActiveNetworkQuotaInfo:I = 0x11

.field static final TRANSACTION_getAllNetworkInfo:I = 0x7

.field static final TRANSACTION_getAllNetworkState:I = 0x10

.field static final TRANSACTION_getAllNetworks:I = 0x9

.field static final TRANSACTION_getAllVpnInfo:I = 0x2d

.field static final TRANSACTION_getAlwaysOnVpnPackage:I = 0x31

.field static final TRANSACTION_getCaptivePortalServerUrl:I = 0x4b

.field static final TRANSACTION_getDefaultNetworkCapabilitiesForUser:I = 0xa

.field static final TRANSACTION_getGlobalProxy:I = 0x24

.field static final TRANSACTION_getLastTetherError:I = 0x16

.field static final TRANSACTION_getLegacyVpnInfo:I = 0x2c

.field static final TRANSACTION_getLinkProperties:I = 0xe

.field static final TRANSACTION_getLinkPropertiesForType:I = 0xd

.field static final TRANSACTION_getMobileProvisioningUrl:I = 0x33

.field static final TRANSACTION_getMultipathPreference:I = 0x43

.field static final TRANSACTION_getNetworkCapabilities:I = 0xf

.field static final TRANSACTION_getNetworkForType:I = 0x8

.field static final TRANSACTION_getNetworkInfo:I = 0x5

.field static final TRANSACTION_getNetworkInfoForUid:I = 0x6

.field static final TRANSACTION_getProxyForNetwork:I = 0x26

.field static final TRANSACTION_getRestoreDefaultNetworkDelay:I = 0x44

.field static final TRANSACTION_getTetherableBluetoothRegexs:I = 0x20

.field static final TRANSACTION_getTetherableIfaces:I = 0x1a

.field static final TRANSACTION_getTetherableUsbRegexs:I = 0x1e

.field static final TRANSACTION_getTetherableWifiRegexs:I = 0x1f

.field static final TRANSACTION_getTetheredDhcpRanges:I = 0x1d

.field static final TRANSACTION_getTetheredIfaces:I = 0x1b

.field static final TRANSACTION_getTetheringErroredIfaces:I = 0x1c

.field static final TRANSACTION_getVpnConfig:I = 0x2a

.field static final TRANSACTION_isActiveNetworkMetered:I = 0x12

.field static final TRANSACTION_isAlwaysOnVpnPackageSupported:I = 0x2f

.field static final TRANSACTION_isNetworkSupported:I = 0xb

.field static final TRANSACTION_isTetheringSupported:I = 0x17

.field static final TRANSACTION_listenForNetwork:I = 0x3d

.field static final TRANSACTION_pendingListenForNetwork:I = 0x3e

.field static final TRANSACTION_pendingRequestForNetwork:I = 0x3b

.field static final TRANSACTION_prepareVpn:I = 0x27

.field static final TRANSACTION_registerNetworkAgent:I = 0x39

.field static final TRANSACTION_registerNetworkFactory:I = 0x36

.field static final TRANSACTION_releaseNetworkRequest:I = 0x3f

.field static final TRANSACTION_releasePendingNetworkRequest:I = 0x3c

.field static final TRANSACTION_removeVpnAddress:I = 0x46

.field static final TRANSACTION_reportInetCondition:I = 0x22

.field static final TRANSACTION_reportNetworkConnectivity:I = 0x23

.field static final TRANSACTION_requestBandwidthUpdate:I = 0x37

.field static final TRANSACTION_requestNetwork:I = 0x3a

.field static final TRANSACTION_requestRouteToHostAddress:I = 0x13

.field static final TRANSACTION_setAcceptUnvalidated:I = 0x40

.field static final TRANSACTION_setAirplaneMode:I = 0x35

.field static final TRANSACTION_setAlwaysOnVpnPackage:I = 0x30

.field static final TRANSACTION_setAvoidUnvalidated:I = 0x41

.field static final TRANSACTION_setGlobalProxy:I = 0x25

.field static final TRANSACTION_setProvisioningNotificationVisible:I = 0x34

.field static final TRANSACTION_setUnderlyingNetworksForVpn:I = 0x47

.field static final TRANSACTION_setUsbTethering:I = 0x21

.field static final TRANSACTION_setVpnPackageAuthorization:I = 0x28

.field static final TRANSACTION_showSoftApClientsNotification:I = 0x4c

.field static final TRANSACTION_startCaptivePortalApp:I = 0x42

.field static final TRANSACTION_startLegacyVpn:I = 0x2b

.field static final TRANSACTION_startNattKeepalive:I = 0x49

.field static final TRANSACTION_startTethering:I = 0x18

.field static final TRANSACTION_stopKeepalive:I = 0x4a

.field static final TRANSACTION_stopTethering:I = 0x19

.field static final TRANSACTION_tether:I = 0x14

.field static final TRANSACTION_unregisterNetworkFactory:I = 0x38

.field static final TRANSACTION_untether:I = 0x15

.field static final TRANSACTION_updateLockdownVpn:I = 0x2e


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "android.net.IConnectivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "android.net.IConnectivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/net/IConnectivityManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/IConnectivityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IConnectivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 62
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 1133
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 46
    :sswitch_0
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v5, 0x1

    return v5

    .line 51
    :sswitch_1
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetwork()Landroid/net/Network;

    move-result-object v45

    .line 53
    .local v45, "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v45, :cond_0

    .line 55
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v5, 0x1

    move-object/from16 v0, v45

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    .line 61
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 59
    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 65
    .end local v45    # "_result":Landroid/net/Network;
    :sswitch_2
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 69
    .local v25, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/16 v37, 0x1

    .line 70
    .local v37, "_arg1":Z
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkForUid(IZ)Landroid/net/Network;

    move-result-object v45

    .line 71
    .restart local v45    # "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v45, :cond_2

    .line 73
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    const/4 v5, 0x1

    move-object/from16 v0, v45

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    .line 79
    :goto_2
    const/4 v5, 0x1

    return v5

    .line 69
    .end local v37    # "_arg1":Z
    .end local v45    # "_result":Landroid/net/Network;
    :cond_1
    const/16 v37, 0x0

    .restart local v37    # "_arg1":Z
    goto :goto_1

    .line 77
    .restart local v45    # "_result":Landroid/net/Network;
    :cond_2
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 83
    .end local v25    # "_arg0":I
    .end local v37    # "_arg1":Z
    .end local v45    # "_result":Landroid/net/Network;
    :sswitch_3
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v47

    .line 85
    .local v47, "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v47, :cond_3

    .line 87
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    const/4 v5, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 93
    :goto_3
    const/4 v5, 0x1

    return v5

    .line 91
    :cond_3
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 97
    .end local v47    # "_result":Landroid/net/NetworkInfo;
    :sswitch_4
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 101
    .restart local v25    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/16 v37, 0x1

    .line 102
    .restart local v37    # "_arg1":Z
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;

    move-result-object v47

    .line 103
    .restart local v47    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v47, :cond_5

    .line 105
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    const/4 v5, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 111
    :goto_5
    const/4 v5, 0x1

    return v5

    .line 101
    .end local v37    # "_arg1":Z
    .end local v47    # "_result":Landroid/net/NetworkInfo;
    :cond_4
    const/16 v37, 0x0

    .restart local v37    # "_arg1":Z
    goto :goto_4

    .line 109
    .restart local v47    # "_result":Landroid/net/NetworkInfo;
    :cond_5
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 115
    .end local v25    # "_arg0":I
    .end local v37    # "_arg1":Z
    .end local v47    # "_result":Landroid/net/NetworkInfo;
    :sswitch_5
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 118
    .restart local v25    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v47

    .line 119
    .restart local v47    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v47, :cond_6

    .line 121
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    const/4 v5, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 127
    :goto_6
    const/4 v5, 0x1

    return v5

    .line 125
    :cond_6
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 131
    .end local v25    # "_arg0":I
    .end local v47    # "_result":Landroid/net/NetworkInfo;
    :sswitch_6
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 134
    sget-object v5, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/Network;

    .line 140
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 142
    .local v19, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    const/16 v41, 0x1

    .line 143
    .local v41, "_arg2":Z
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;

    move-result-object v47

    .line 144
    .restart local v47    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v47, :cond_9

    .line 146
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/4 v5, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 152
    :goto_9
    const/4 v5, 0x1

    return v5

    .line 137
    .end local v19    # "_arg1":I
    .end local v41    # "_arg2":Z
    .end local v47    # "_result":Landroid/net/NetworkInfo;
    :cond_7
    const/16 v18, 0x0

    .local v18, "_arg0":Landroid/net/Network;
    goto :goto_7

    .line 142
    .end local v18    # "_arg0":Landroid/net/Network;
    .restart local v19    # "_arg1":I
    :cond_8
    const/16 v41, 0x0

    .restart local v41    # "_arg2":Z
    goto :goto_8

    .line 150
    .restart local v47    # "_result":Landroid/net/NetworkInfo;
    :cond_9
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 156
    .end local v19    # "_arg1":I
    .end local v41    # "_arg2":Z
    .end local v47    # "_result":Landroid/net/NetworkInfo;
    :sswitch_7
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v58

    .line 158
    .local v58, "_result":[Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 160
    const/4 v5, 0x1

    return v5

    .line 164
    .end local v58    # "_result":[Landroid/net/NetworkInfo;
    :sswitch_8
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 167
    .restart local v25    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v45

    .line 168
    .restart local v45    # "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v45, :cond_a

    .line 170
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    const/4 v5, 0x1

    move-object/from16 v0, v45

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    .line 176
    :goto_a
    const/4 v5, 0x1

    return v5

    .line 174
    :cond_a
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 180
    .end local v25    # "_arg0":I
    .end local v45    # "_result":Landroid/net/Network;
    :sswitch_9
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworks()[Landroid/net/Network;

    move-result-object v56

    .line 182
    .local v56, "_result":[Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v56

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 184
    const/4 v5, 0x1

    return v5

    .line 188
    .end local v56    # "_result":[Landroid/net/Network;
    :sswitch_a
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 191
    .restart local v25    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;

    move-result-object v57

    .line 192
    .local v57, "_result":[Landroid/net/NetworkCapabilities;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 194
    const/4 v5, 0x1

    return v5

    .line 198
    .end local v25    # "_arg0":I
    .end local v57    # "_result":[Landroid/net/NetworkCapabilities;
    :sswitch_b
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 201
    .restart local v25    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->isNetworkSupported(I)Z

    move-result v55

    .line 202
    .local v55, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v55, :cond_b

    const/4 v5, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    const/4 v5, 0x1

    return v5

    .line 203
    :cond_b
    const/4 v5, 0x0

    goto :goto_b

    .line 208
    .end local v25    # "_arg0":I
    .end local v55    # "_result":Z
    :sswitch_c
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v44

    .line 210
    .local v44, "_result":Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    if-eqz v44, :cond_c

    .line 212
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    const/4 v5, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 218
    :goto_c
    const/4 v5, 0x1

    return v5

    .line 216
    :cond_c
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 222
    .end local v44    # "_result":Landroid/net/LinkProperties;
    :sswitch_d
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 225
    .restart local v25    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v44

    .line 226
    .restart local v44    # "_result":Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    if-eqz v44, :cond_d

    .line 228
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/4 v5, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 234
    :goto_d
    const/4 v5, 0x1

    return v5

    .line 232
    :cond_d
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 238
    .end local v25    # "_arg0":I
    .end local v44    # "_result":Landroid/net/LinkProperties;
    :sswitch_e
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    .line 241
    sget-object v5, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/Network;

    .line 246
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v44

    .line 247
    .restart local v44    # "_result":Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v44, :cond_f

    .line 249
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    const/4 v5, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 255
    :goto_f
    const/4 v5, 0x1

    return v5

    .line 244
    .end local v44    # "_result":Landroid/net/LinkProperties;
    :cond_e
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/net/Network;
    goto :goto_e

    .line 253
    .end local v18    # "_arg0":Landroid/net/Network;
    .restart local v44    # "_result":Landroid/net/LinkProperties;
    :cond_f
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 259
    .end local v44    # "_result":Landroid/net/LinkProperties;
    :sswitch_f
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    .line 262
    sget-object v5, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/Network;

    .line 267
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v46

    .line 268
    .local v46, "_result":Landroid/net/NetworkCapabilities;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    if-eqz v46, :cond_11

    .line 270
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    const/4 v5, 0x1

    move-object/from16 v0, v46

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/NetworkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    .line 276
    :goto_11
    const/4 v5, 0x1

    return v5

    .line 265
    .end local v46    # "_result":Landroid/net/NetworkCapabilities;
    :cond_10
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/net/Network;
    goto :goto_10

    .line 274
    .end local v18    # "_arg0":Landroid/net/Network;
    .restart local v46    # "_result":Landroid/net/NetworkCapabilities;
    :cond_11
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 280
    .end local v46    # "_result":Landroid/net/NetworkCapabilities;
    :sswitch_10
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v59

    .line 282
    .local v59, "_result":[Landroid/net/NetworkState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 284
    const/4 v5, 0x1

    return v5

    .line 288
    .end local v59    # "_result":[Landroid/net/NetworkState;
    :sswitch_11
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;

    move-result-object v48

    .line 290
    .local v48, "_result":Landroid/net/NetworkQuotaInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    if-eqz v48, :cond_12

    .line 292
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/4 v5, 0x1

    move-object/from16 v0, v48

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/NetworkQuotaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 298
    :goto_12
    const/4 v5, 0x1

    return v5

    .line 296
    :cond_12
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 302
    .end local v48    # "_result":Landroid/net/NetworkQuotaInfo;
    :sswitch_12
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->isActiveNetworkMetered()Z

    move-result v55

    .line 304
    .restart local v55    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    if-eqz v55, :cond_13

    const/4 v5, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    const/4 v5, 0x1

    return v5

    .line 305
    :cond_13
    const/4 v5, 0x0

    goto :goto_13

    .line 310
    .end local v55    # "_result":Z
    :sswitch_13
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 314
    .restart local v25    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v38

    .line 315
    .local v38, "_arg1":[B
    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHostAddress(I[B)Z

    move-result v55

    .line 316
    .restart local v55    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    if-eqz v55, :cond_14

    const/4 v5, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    const/4 v5, 0x1

    return v5

    .line 317
    :cond_14
    const/4 v5, 0x0

    goto :goto_14

    .line 322
    .end local v25    # "_arg0":I
    .end local v38    # "_arg1":[B
    .end local v55    # "_result":Z
    :sswitch_14
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 326
    .local v31, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 327
    .local v36, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->tether(Ljava/lang/String;Ljava/lang/String;)I

    move-result v43

    .line 328
    .local v43, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    const/4 v5, 0x1

    return v5

    .line 334
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":Ljava/lang/String;
    .end local v43    # "_result":I
    :sswitch_15
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 338
    .restart local v31    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 339
    .restart local v36    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->untether(Ljava/lang/String;Ljava/lang/String;)I

    move-result v43

    .line 340
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    const/4 v5, 0x1

    return v5

    .line 346
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":Ljava/lang/String;
    .end local v43    # "_result":I
    :sswitch_16
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 349
    .restart local v31    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLastTetherError(Ljava/lang/String;)I

    move-result v43

    .line 350
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    const/4 v5, 0x1

    return v5

    .line 356
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v43    # "_result":I
    :sswitch_17
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 359
    .restart local v31    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->isTetheringSupported(Ljava/lang/String;)Z

    move-result v55

    .line 360
    .restart local v55    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    if-eqz v55, :cond_15

    const/4 v5, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    const/4 v5, 0x1

    return v5

    .line 361
    :cond_15
    const/4 v5, 0x0

    goto :goto_15

    .line 366
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v55    # "_result":Z
    :sswitch_18
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 370
    .restart local v25    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    .line 371
    sget-object v5, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/ResultReceiver;

    .line 377
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17

    const/16 v41, 0x1

    .line 379
    .restart local v41    # "_arg2":Z
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v42

    .line 380
    .local v42, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v35

    move/from16 v3, v41

    move-object/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/IConnectivityManager$Stub;->startTethering(ILandroid/os/ResultReceiver;ZLjava/lang/String;)V

    .line 381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    const/4 v5, 0x1

    return v5

    .line 374
    .end local v41    # "_arg2":Z
    .end local v42    # "_arg3":Ljava/lang/String;
    :cond_16
    const/16 v35, 0x0

    .local v35, "_arg1":Landroid/os/ResultReceiver;
    goto :goto_16

    .line 377
    .end local v35    # "_arg1":Landroid/os/ResultReceiver;
    :cond_17
    const/16 v41, 0x0

    .restart local v41    # "_arg2":Z
    goto :goto_17

    .line 386
    .end local v25    # "_arg0":I
    .end local v41    # "_arg2":Z
    :sswitch_19
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 390
    .restart local v25    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 391
    .restart local v36    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->stopTethering(ILjava/lang/String;)V

    .line 392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    const/4 v5, 0x1

    return v5

    .line 397
    .end local v25    # "_arg0":I
    .end local v36    # "_arg1":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v61

    .line 399
    .local v61, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    move-object/from16 v0, p3

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 401
    const/4 v5, 0x1

    return v5

    .line 405
    .end local v61    # "_result":[Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v61

    .line 407
    .restart local v61    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    move-object/from16 v0, p3

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 409
    const/4 v5, 0x1

    return v5

    .line 413
    .end local v61    # "_result":[Ljava/lang/String;
    :sswitch_1c
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v61

    .line 415
    .restart local v61    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    move-object/from16 v0, p3

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 417
    const/4 v5, 0x1

    return v5

    .line 421
    .end local v61    # "_result":[Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredDhcpRanges()[Ljava/lang/String;

    move-result-object v61

    .line 423
    .restart local v61    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    move-object/from16 v0, p3

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 425
    const/4 v5, 0x1

    return v5

    .line 429
    .end local v61    # "_result":[Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v61

    .line 431
    .restart local v61    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    move-object/from16 v0, p3

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 433
    const/4 v5, 0x1

    return v5

    .line 437
    .end local v61    # "_result":[Ljava/lang/String;
    :sswitch_1f
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v61

    .line 439
    .restart local v61    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    move-object/from16 v0, p3

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 441
    const/4 v5, 0x1

    return v5

    .line 445
    .end local v61    # "_result":[Ljava/lang/String;
    :sswitch_20
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v61

    .line 447
    .restart local v61    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    move-object/from16 v0, p3

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 449
    const/4 v5, 0x1

    return v5

    .line 453
    .end local v61    # "_result":[Ljava/lang/String;
    :sswitch_21
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_18

    const/16 v32, 0x1

    .line 457
    .local v32, "_arg0":Z
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 458
    .restart local v36    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setUsbTethering(ZLjava/lang/String;)I

    move-result v43

    .line 459
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    const/4 v5, 0x1

    return v5

    .line 455
    .end local v32    # "_arg0":Z
    .end local v36    # "_arg1":Ljava/lang/String;
    .end local v43    # "_result":I
    :cond_18
    const/16 v32, 0x0

    .restart local v32    # "_arg0":Z
    goto :goto_18

    .line 465
    .end local v32    # "_arg0":Z
    :sswitch_22
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 469
    .restart local v25    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 470
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->reportInetCondition(II)V

    .line 471
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    const/4 v5, 0x1

    return v5

    .line 476
    .end local v19    # "_arg1":I
    .end local v25    # "_arg0":I
    :sswitch_23
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    .line 479
    sget-object v5, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/Network;

    .line 485
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a

    const/16 v37, 0x1

    .line 486
    .restart local v37    # "_arg1":Z
    :goto_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    const/4 v5, 0x1

    return v5

    .line 482
    .end local v37    # "_arg1":Z
    :cond_19
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/net/Network;
    goto :goto_19

    .line 485
    .end local v18    # "_arg0":Landroid/net/Network;
    :cond_1a
    const/16 v37, 0x0

    .restart local v37    # "_arg1":Z
    goto :goto_1a

    .line 492
    .end local v37    # "_arg1":Z
    :sswitch_24
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v50

    .line 494
    .local v50, "_result":Landroid/net/ProxyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    if-eqz v50, :cond_1b

    .line 496
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    const/4 v5, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 502
    :goto_1b
    const/4 v5, 0x1

    return v5

    .line 500
    :cond_1b
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    .line 506
    .end local v50    # "_result":Landroid/net/ProxyInfo;
    :sswitch_25
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    .line 509
    sget-object v5, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/ProxyInfo;

    .line 514
    :goto_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 515
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    const/4 v5, 0x1

    return v5

    .line 512
    :cond_1c
    const/16 v28, 0x0

    .local v28, "_arg0":Landroid/net/ProxyInfo;
    goto :goto_1c

    .line 520
    .end local v28    # "_arg0":Landroid/net/ProxyInfo;
    :sswitch_26
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    .line 523
    sget-object v5, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/Network;

    .line 528
    :goto_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v50

    .line 529
    .restart local v50    # "_result":Landroid/net/ProxyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    if-eqz v50, :cond_1e

    .line 531
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    const/4 v5, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 537
    :goto_1e
    const/4 v5, 0x1

    return v5

    .line 526
    .end local v50    # "_result":Landroid/net/ProxyInfo;
    :cond_1d
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/net/Network;
    goto :goto_1d

    .line 535
    .end local v18    # "_arg0":Landroid/net/Network;
    .restart local v50    # "_result":Landroid/net/ProxyInfo;
    :cond_1e
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 541
    .end local v50    # "_result":Landroid/net/ProxyInfo;
    :sswitch_27
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 545
    .restart local v31    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 547
    .restart local v36    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 548
    .local v15, "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2, v15}, Landroid/net/IConnectivityManager$Stub;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v55

    .line 549
    .restart local v55    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    if-eqz v55, :cond_1f

    const/4 v5, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 551
    const/4 v5, 0x1

    return v5

    .line 550
    :cond_1f
    const/4 v5, 0x0

    goto :goto_1f

    .line 555
    .end local v15    # "_arg2":I
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":Ljava/lang/String;
    .end local v55    # "_result":Z
    :sswitch_28
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 559
    .restart local v31    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 561
    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_20

    const/16 v41, 0x1

    .line 562
    .restart local v41    # "_arg2":Z
    :goto_20
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v19

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V

    .line 563
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    const/4 v5, 0x1

    return v5

    .line 561
    .end local v41    # "_arg2":Z
    :cond_20
    const/16 v41, 0x0

    .restart local v41    # "_arg2":Z
    goto :goto_20

    .line 568
    .end local v19    # "_arg1":I
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v41    # "_arg2":Z
    :sswitch_29
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_21

    .line 571
    sget-object v5, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/internal/net/VpnConfig;

    .line 576
    :goto_21
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v51

    .line 577
    .local v51, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    if-eqz v51, :cond_22

    .line 579
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    const/4 v5, 0x1

    move-object/from16 v0, v51

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 585
    :goto_22
    const/4 v5, 0x1

    return v5

    .line 574
    .end local v51    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_21
    const/16 v29, 0x0

    .local v29, "_arg0":Lcom/android/internal/net/VpnConfig;
    goto :goto_21

    .line 583
    .end local v29    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .restart local v51    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_22
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    .line 589
    .end local v51    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_2a
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 592
    .restart local v25    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v53

    .line 593
    .local v53, "_result":Lcom/android/internal/net/VpnConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    if-eqz v53, :cond_23

    .line 595
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    const/4 v5, 0x1

    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/net/VpnConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 601
    :goto_23
    const/4 v5, 0x1

    return v5

    .line 599
    :cond_23
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_23

    .line 605
    .end local v25    # "_arg0":I
    .end local v53    # "_result":Lcom/android/internal/net/VpnConfig;
    :sswitch_2b
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_24

    .line 608
    sget-object v5, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/internal/net/VpnProfile;

    .line 613
    :goto_24
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V

    .line 614
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    const/4 v5, 0x1

    return v5

    .line 611
    :cond_24
    const/16 v30, 0x0

    .local v30, "_arg0":Lcom/android/internal/net/VpnProfile;
    goto :goto_24

    .line 619
    .end local v30    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :sswitch_2c
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 622
    .restart local v25    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v52

    .line 623
    .local v52, "_result":Lcom/android/internal/net/LegacyVpnInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    if-eqz v52, :cond_25

    .line 625
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    const/4 v5, 0x1

    move-object/from16 v0, v52

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/net/LegacyVpnInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 631
    :goto_25
    const/4 v5, 0x1

    return v5

    .line 629
    :cond_25
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 635
    .end local v25    # "_arg0":I
    .end local v52    # "_result":Lcom/android/internal/net/LegacyVpnInfo;
    :sswitch_2d
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;

    move-result-object v60

    .line 637
    .local v60, "_result":[Lcom/android/internal/net/VpnInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v60

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 639
    const/4 v5, 0x1

    return v5

    .line 643
    .end local v60    # "_result":[Lcom/android/internal/net/VpnInfo;
    :sswitch_2e
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->updateLockdownVpn()Z

    move-result v55

    .line 645
    .restart local v55    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    if-eqz v55, :cond_26

    const/4 v5, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 647
    const/4 v5, 0x1

    return v5

    .line 646
    :cond_26
    const/4 v5, 0x0

    goto :goto_26

    .line 651
    .end local v55    # "_result":Z
    :sswitch_2f
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 655
    .restart local v25    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 656
    .restart local v36    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->isAlwaysOnVpnPackageSupported(ILjava/lang/String;)Z

    move-result v55

    .line 657
    .restart local v55    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    if-eqz v55, :cond_27

    const/4 v5, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    const/4 v5, 0x1

    return v5

    .line 658
    :cond_27
    const/4 v5, 0x0

    goto :goto_27

    .line 663
    .end local v25    # "_arg0":I
    .end local v36    # "_arg1":Ljava/lang/String;
    .end local v55    # "_result":Z
    :sswitch_30
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 667
    .restart local v25    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 669
    .restart local v36    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_28

    const/16 v41, 0x1

    .line 670
    .restart local v41    # "_arg2":Z
    :goto_28
    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v36

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setAlwaysOnVpnPackage(ILjava/lang/String;Z)Z

    move-result v55

    .line 671
    .restart local v55    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    if-eqz v55, :cond_29

    const/4 v5, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 673
    const/4 v5, 0x1

    return v5

    .line 669
    .end local v41    # "_arg2":Z
    .end local v55    # "_result":Z
    :cond_28
    const/16 v41, 0x0

    .restart local v41    # "_arg2":Z
    goto :goto_28

    .line 672
    .restart local v55    # "_result":Z
    :cond_29
    const/4 v5, 0x0

    goto :goto_29

    .line 677
    .end local v25    # "_arg0":I
    .end local v36    # "_arg1":Ljava/lang/String;
    .end local v41    # "_arg2":Z
    .end local v55    # "_result":Z
    :sswitch_31
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 680
    .restart local v25    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getAlwaysOnVpnPackage(I)Ljava/lang/String;

    move-result-object v54

    .line 681
    .local v54, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    move-object/from16 v0, p3

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 683
    const/4 v5, 0x1

    return v5

    .line 687
    .end local v25    # "_arg0":I
    .end local v54    # "_result":Ljava/lang/String;
    :sswitch_32
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 690
    .restart local v25    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->checkMobileProvisioning(I)I

    move-result v43

    .line 691
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 693
    const/4 v5, 0x1

    return v5

    .line 697
    .end local v25    # "_arg0":I
    .end local v43    # "_result":I
    :sswitch_33
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v54

    .line 699
    .restart local v54    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    move-object/from16 v0, p3

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 701
    const/4 v5, 0x1

    return v5

    .line 705
    .end local v54    # "_result":Ljava/lang/String;
    :sswitch_34
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    const/16 v32, 0x1

    .line 709
    .restart local v32    # "_arg0":Z
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 711
    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .line 712
    .local v40, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v19

    move-object/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setProvisioningNotificationVisible(ZILjava/lang/String;)V

    .line 713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    const/4 v5, 0x1

    return v5

    .line 707
    .end local v19    # "_arg1":I
    .end local v32    # "_arg0":Z
    .end local v40    # "_arg2":Ljava/lang/String;
    :cond_2a
    const/16 v32, 0x0

    .restart local v32    # "_arg0":Z
    goto :goto_2a

    .line 718
    .end local v32    # "_arg0":Z
    :sswitch_35
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2b

    const/16 v32, 0x1

    .line 721
    .restart local v32    # "_arg0":Z
    :goto_2b
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setAirplaneMode(Z)V

    .line 722
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    const/4 v5, 0x1

    return v5

    .line 720
    .end local v32    # "_arg0":Z
    :cond_2b
    const/16 v32, 0x0

    .restart local v32    # "_arg0":Z
    goto :goto_2b

    .line 727
    .end local v32    # "_arg0":Z
    :sswitch_36
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2c

    .line 730
    sget-object v5, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Messenger;

    .line 736
    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 737
    .restart local v36    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v6, v1}, Landroid/net/IConnectivityManager$Stub;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V

    .line 738
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    const/4 v5, 0x1

    return v5

    .line 733
    .end local v36    # "_arg1":Ljava/lang/String;
    :cond_2c
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/os/Messenger;
    goto :goto_2c

    .line 743
    .end local v6    # "_arg0":Landroid/os/Messenger;
    :sswitch_37
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2d

    .line 746
    sget-object v5, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/Network;

    .line 751
    :goto_2d
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->requestBandwidthUpdate(Landroid/net/Network;)Z

    move-result v55

    .line 752
    .restart local v55    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    if-eqz v55, :cond_2e

    const/4 v5, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 754
    const/4 v5, 0x1

    return v5

    .line 749
    .end local v55    # "_result":Z
    :cond_2d
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/net/Network;
    goto :goto_2d

    .line 753
    .end local v18    # "_arg0":Landroid/net/Network;
    .restart local v55    # "_result":Z
    :cond_2e
    const/4 v5, 0x0

    goto :goto_2e

    .line 758
    .end local v55    # "_result":Z
    :sswitch_38
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2f

    .line 761
    sget-object v5, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Messenger;

    .line 766
    :goto_2f
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/net/IConnectivityManager$Stub;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    .line 767
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    const/4 v5, 0x1

    return v5

    .line 764
    :cond_2f
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/os/Messenger;
    goto :goto_2f

    .line 772
    .end local v6    # "_arg0":Landroid/os/Messenger;
    :sswitch_39
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_30

    .line 775
    sget-object v5, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Messenger;

    .line 781
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_31

    .line 782
    sget-object v5, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkInfo;

    .line 788
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_32

    .line 789
    sget-object v5, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkProperties;

    .line 795
    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_33

    .line 796
    sget-object v5, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkCapabilities;

    .line 802
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 804
    .local v10, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_34

    .line 805
    sget-object v5, Landroid/net/NetworkMisc;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkMisc;

    :goto_34
    move-object/from16 v5, p0

    .line 810
    invoke-virtual/range {v5 .. v11}, Landroid/net/IConnectivityManager$Stub;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I

    move-result v43

    .line 811
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 813
    const/4 v5, 0x1

    return v5

    .line 778
    .end local v10    # "_arg4":I
    .end local v43    # "_result":I
    :cond_30
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/os/Messenger;
    goto :goto_30

    .line 785
    .end local v6    # "_arg0":Landroid/os/Messenger;
    :cond_31
    const/4 v7, 0x0

    .local v7, "_arg1":Landroid/net/NetworkInfo;
    goto :goto_31

    .line 792
    .end local v7    # "_arg1":Landroid/net/NetworkInfo;
    :cond_32
    const/4 v8, 0x0

    .local v8, "_arg2":Landroid/net/LinkProperties;
    goto :goto_32

    .line 799
    .end local v8    # "_arg2":Landroid/net/LinkProperties;
    :cond_33
    const/4 v9, 0x0

    .local v9, "_arg3":Landroid/net/NetworkCapabilities;
    goto :goto_33

    .line 808
    .end local v9    # "_arg3":Landroid/net/NetworkCapabilities;
    .restart local v10    # "_arg4":I
    :cond_34
    const/4 v11, 0x0

    .local v11, "_arg5":Landroid/net/NetworkMisc;
    goto :goto_34

    .line 817
    .end local v10    # "_arg4":I
    .end local v11    # "_arg5":Landroid/net/NetworkMisc;
    :sswitch_3a
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_35

    .line 820
    sget-object v5, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/NetworkCapabilities;

    .line 826
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_36

    .line 827
    sget-object v5, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Messenger;

    .line 833
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 835
    .restart local v15    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 837
    .local v16, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg4":I
    move-object/from16 v12, p0

    move/from16 v17, v10

    .line 838
    invoke-virtual/range {v12 .. v17}, Landroid/net/IConnectivityManager$Stub;->requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;

    move-result-object v49

    .line 839
    .local v49, "_result":Landroid/net/NetworkRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    if-eqz v49, :cond_37

    .line 841
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 842
    const/4 v5, 0x1

    move-object/from16 v0, v49

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 847
    :goto_37
    const/4 v5, 0x1

    return v5

    .line 823
    .end local v10    # "_arg4":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Landroid/os/IBinder;
    .end local v49    # "_result":Landroid/net/NetworkRequest;
    :cond_35
    const/4 v13, 0x0

    .local v13, "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_35

    .line 830
    .end local v13    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_36
    const/4 v14, 0x0

    .local v14, "_arg1":Landroid/os/Messenger;
    goto :goto_36

    .line 845
    .end local v14    # "_arg1":Landroid/os/Messenger;
    .restart local v10    # "_arg4":I
    .restart local v15    # "_arg2":I
    .restart local v16    # "_arg3":Landroid/os/IBinder;
    .restart local v49    # "_result":Landroid/net/NetworkRequest;
    :cond_37
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_37

    .line 851
    .end local v10    # "_arg4":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Landroid/os/IBinder;
    .end local v49    # "_result":Landroid/net/NetworkRequest;
    :sswitch_3b
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 853
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_38

    .line 854
    sget-object v5, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/NetworkCapabilities;

    .line 860
    :goto_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_39

    .line 861
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/app/PendingIntent;

    .line 866
    :goto_39
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v13, v1}, Landroid/net/IConnectivityManager$Stub;->pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;

    move-result-object v49

    .line 867
    .restart local v49    # "_result":Landroid/net/NetworkRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    if-eqz v49, :cond_3a

    .line 869
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 870
    const/4 v5, 0x1

    move-object/from16 v0, v49

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 875
    :goto_3a
    const/4 v5, 0x1

    return v5

    .line 857
    .end local v49    # "_result":Landroid/net/NetworkRequest;
    :cond_38
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_38

    .line 864
    .end local v13    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_39
    const/16 v34, 0x0

    .local v34, "_arg1":Landroid/app/PendingIntent;
    goto :goto_39

    .line 873
    .end local v34    # "_arg1":Landroid/app/PendingIntent;
    .restart local v49    # "_result":Landroid/net/NetworkRequest;
    :cond_3a
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3a

    .line 879
    .end local v49    # "_result":Landroid/net/NetworkRequest;
    :sswitch_3c
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 881
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3b

    .line 882
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/app/PendingIntent;

    .line 887
    :goto_3b
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->releasePendingNetworkRequest(Landroid/app/PendingIntent;)V

    .line 888
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    const/4 v5, 0x1

    return v5

    .line 885
    :cond_3b
    const/16 v26, 0x0

    .local v26, "_arg0":Landroid/app/PendingIntent;
    goto :goto_3b

    .line 893
    .end local v26    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_3d
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3c

    .line 896
    sget-object v5, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/NetworkCapabilities;

    .line 902
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3d

    .line 903
    sget-object v5, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Messenger;

    .line 909
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 910
    .local v39, "_arg2":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v13, v14, v1}, Landroid/net/IConnectivityManager$Stub;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    move-result-object v49

    .line 911
    .restart local v49    # "_result":Landroid/net/NetworkRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    if-eqz v49, :cond_3e

    .line 913
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 914
    const/4 v5, 0x1

    move-object/from16 v0, v49

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 919
    :goto_3e
    const/4 v5, 0x1

    return v5

    .line 899
    .end local v39    # "_arg2":Landroid/os/IBinder;
    .end local v49    # "_result":Landroid/net/NetworkRequest;
    :cond_3c
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_3c

    .line 906
    .end local v13    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_3d
    const/4 v14, 0x0

    .restart local v14    # "_arg1":Landroid/os/Messenger;
    goto :goto_3d

    .line 917
    .end local v14    # "_arg1":Landroid/os/Messenger;
    .restart local v39    # "_arg2":Landroid/os/IBinder;
    .restart local v49    # "_result":Landroid/net/NetworkRequest;
    :cond_3e
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3e

    .line 923
    .end local v39    # "_arg2":Landroid/os/IBinder;
    .end local v49    # "_result":Landroid/net/NetworkRequest;
    :sswitch_3e
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 925
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3f

    .line 926
    sget-object v5, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/NetworkCapabilities;

    .line 932
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_40

    .line 933
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/app/PendingIntent;

    .line 938
    :goto_40
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v13, v1}, Landroid/net/IConnectivityManager$Stub;->pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V

    .line 939
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    const/4 v5, 0x1

    return v5

    .line 929
    :cond_3f
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_3f

    .line 936
    .end local v13    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_40
    const/16 v34, 0x0

    .restart local v34    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_40

    .line 944
    .end local v34    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_3f
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 946
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_41

    .line 947
    sget-object v5, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/net/NetworkRequest;

    .line 952
    :goto_41
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V

    .line 953
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    const/4 v5, 0x1

    return v5

    .line 950
    :cond_41
    const/16 v27, 0x0

    .local v27, "_arg0":Landroid/net/NetworkRequest;
    goto :goto_41

    .line 958
    .end local v27    # "_arg0":Landroid/net/NetworkRequest;
    :sswitch_40
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 960
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_42

    .line 961
    sget-object v5, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/Network;

    .line 967
    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_43

    const/16 v37, 0x1

    .line 969
    .restart local v37    # "_arg1":Z
    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_44

    const/16 v41, 0x1

    .line 970
    .restart local v41    # "_arg2":Z
    :goto_44
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v37

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    .line 971
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    const/4 v5, 0x1

    return v5

    .line 964
    .end local v37    # "_arg1":Z
    .end local v41    # "_arg2":Z
    :cond_42
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/net/Network;
    goto :goto_42

    .line 967
    .end local v18    # "_arg0":Landroid/net/Network;
    :cond_43
    const/16 v37, 0x0

    .restart local v37    # "_arg1":Z
    goto :goto_43

    .line 969
    :cond_44
    const/16 v41, 0x0

    .restart local v41    # "_arg2":Z
    goto :goto_44

    .line 976
    .end local v37    # "_arg1":Z
    .end local v41    # "_arg2":Z
    :sswitch_41
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 978
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_45

    .line 979
    sget-object v5, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/Network;

    .line 984
    :goto_45
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setAvoidUnvalidated(Landroid/net/Network;)V

    .line 985
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    const/4 v5, 0x1

    return v5

    .line 982
    :cond_45
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/net/Network;
    goto :goto_45

    .line 990
    .end local v18    # "_arg0":Landroid/net/Network;
    :sswitch_42
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 992
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_46

    .line 993
    sget-object v5, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/Network;

    .line 998
    :goto_46
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->startCaptivePortalApp(Landroid/net/Network;)V

    .line 999
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1000
    const/4 v5, 0x1

    return v5

    .line 996
    :cond_46
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/net/Network;
    goto :goto_46

    .line 1004
    .end local v18    # "_arg0":Landroid/net/Network;
    :sswitch_43
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_47

    .line 1007
    sget-object v5, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/Network;

    .line 1012
    :goto_47
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getMultipathPreference(Landroid/net/Network;)I

    move-result v43

    .line 1013
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1014
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1015
    const/4 v5, 0x1

    return v5

    .line 1010
    .end local v43    # "_result":I
    :cond_47
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/net/Network;
    goto :goto_47

    .line 1019
    .end local v18    # "_arg0":Landroid/net/Network;
    :sswitch_44
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1021
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 1022
    .restart local v25    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getRestoreDefaultNetworkDelay(I)I

    move-result v43

    .line 1023
    .restart local v43    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1025
    const/4 v5, 0x1

    return v5

    .line 1029
    .end local v25    # "_arg0":I
    .end local v43    # "_result":I
    :sswitch_45
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1031
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1033
    .restart local v31    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1034
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->addVpnAddress(Ljava/lang/String;I)Z

    move-result v55

    .line 1035
    .restart local v55    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1036
    if-eqz v55, :cond_48

    const/4 v5, 0x1

    :goto_48
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1037
    const/4 v5, 0x1

    return v5

    .line 1036
    :cond_48
    const/4 v5, 0x0

    goto :goto_48

    .line 1041
    .end local v19    # "_arg1":I
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v55    # "_result":Z
    :sswitch_46
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1045
    .restart local v31    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1046
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->removeVpnAddress(Ljava/lang/String;I)Z

    move-result v55

    .line 1047
    .restart local v55    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1048
    if-eqz v55, :cond_49

    const/4 v5, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1049
    const/4 v5, 0x1

    return v5

    .line 1048
    :cond_49
    const/4 v5, 0x0

    goto :goto_49

    .line 1053
    .end local v19    # "_arg1":I
    .end local v31    # "_arg0":Ljava/lang/String;
    .end local v55    # "_result":Z
    :sswitch_47
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1055
    sget-object v5, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [Landroid/net/Network;

    .line 1056
    .local v33, "_arg0":[Landroid/net/Network;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setUnderlyingNetworksForVpn([Landroid/net/Network;)Z

    move-result v55

    .line 1057
    .restart local v55    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    if-eqz v55, :cond_4a

    const/4 v5, 0x1

    :goto_4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1059
    const/4 v5, 0x1

    return v5

    .line 1058
    :cond_4a
    const/4 v5, 0x0

    goto :goto_4a

    .line 1063
    .end local v33    # "_arg0":[Landroid/net/Network;
    .end local v55    # "_result":Z
    :sswitch_48
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1064
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->factoryReset()V

    .line 1065
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    const/4 v5, 0x1

    return v5

    .line 1070
    :sswitch_49
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4b

    .line 1073
    sget-object v5, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/Network;

    .line 1079
    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1081
    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4c

    .line 1082
    sget-object v5, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/Messenger;

    .line 1088
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 1090
    .restart local v16    # "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1092
    .local v22, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1094
    .local v23, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .local v24, "_arg6":Ljava/lang/String;
    move-object/from16 v17, p0

    move-object/from16 v21, v16

    .line 1095
    invoke-virtual/range {v17 .. v24}, Landroid/net/IConnectivityManager$Stub;->startNattKeepalive(Landroid/net/Network;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;)V

    .line 1096
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    const/4 v5, 0x1

    return v5

    .line 1076
    .end local v16    # "_arg3":Landroid/os/IBinder;
    .end local v19    # "_arg1":I
    .end local v22    # "_arg4":Ljava/lang/String;
    .end local v23    # "_arg5":I
    .end local v24    # "_arg6":Ljava/lang/String;
    :cond_4b
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/net/Network;
    goto :goto_4b

    .line 1085
    .end local v18    # "_arg0":Landroid/net/Network;
    .restart local v19    # "_arg1":I
    :cond_4c
    const/16 v20, 0x0

    .local v20, "_arg2":Landroid/os/Messenger;
    goto :goto_4c

    .line 1101
    .end local v19    # "_arg1":I
    .end local v20    # "_arg2":Landroid/os/Messenger;
    :sswitch_4a
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4d

    .line 1104
    sget-object v5, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/Network;

    .line 1110
    :goto_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1111
    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->stopKeepalive(Landroid/net/Network;I)V

    .line 1112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    const/4 v5, 0x1

    return v5

    .line 1107
    .end local v19    # "_arg1":I
    :cond_4d
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Landroid/net/Network;
    goto :goto_4d

    .line 1117
    .end local v18    # "_arg0":Landroid/net/Network;
    :sswitch_4b
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1118
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getCaptivePortalServerUrl()Ljava/lang/String;

    move-result-object v54

    .line 1119
    .restart local v54    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1120
    move-object/from16 v0, p3

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1121
    const/4 v5, 0x1

    return v5

    .line 1125
    .end local v54    # "_result":Ljava/lang/String;
    :sswitch_4c
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 1128
    .restart local v25    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->showSoftApClientsNotification(I)V

    .line 1129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    const/4 v5, 0x1

    return v5

    .line 42
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
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
