.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_acquireMulticastLock:I = 0x25

.field static final TRANSACTION_acquireWifiLock:I = 0x20

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x8

.field static final TRANSACTION_addOrUpdatePasspointConfiguration:I = 0x9

.field static final TRANSACTION_blackListWifiDevice:I = 0x47

.field static final TRANSACTION_deauthenticateNetwork:I = 0xe

.field static final TRANSACTION_disableEphemeralNetwork:I = 0x40

.field static final TRANSACTION_disableNetwork:I = 0x11

.field static final TRANSACTION_disconnect:I = 0x14

.field static final TRANSACTION_enableAggressiveHandover:I = 0x38

.field static final TRANSACTION_enableNetwork:I = 0x10

.field static final TRANSACTION_enablePktLog:I = 0x4c

.field static final TRANSACTION_enableTdls:I = 0x33

.field static final TRANSACTION_enableTdlsWithMacAddress:I = 0x34

.field static final TRANSACTION_enableVerboseLogging:I = 0x36

.field static final TRANSACTION_enableWifiConnectivityManager:I = 0x3e

.field static final TRANSACTION_factoryReset:I = 0x41

.field static final TRANSACTION_getAggressiveHandover:I = 0x39

.field static final TRANSACTION_getAllowScansWithTraffic:I = 0x3b

.field static final TRANSACTION_getConfiguredNetworks:I = 0x4

.field static final TRANSACTION_getConnectedStations:I = 0x4a

.field static final TRANSACTION_getConnectionInfo:I = 0x17

.field static final TRANSACTION_getConnectionStatistics:I = 0x3f

.field static final TRANSACTION_getCountryCode:I = 0x1b

.field static final TRANSACTION_getCurrentNetwork:I = 0x42

.field static final TRANSACTION_getCurrentNetworkWpsNfcConfigurationToken:I = 0x35

.field static final TRANSACTION_getDhcpInfo:I = 0x1e

.field static final TRANSACTION_getEnableAutoJoinWhenAssociated:I = 0x3d

.field static final TRANSACTION_getMatchingOsuProviders:I = 0x7

.field static final TRANSACTION_getMatchingWifiConfig:I = 0x6

.field static final TRANSACTION_getPasspointConfigurations:I = 0xb

.field static final TRANSACTION_getPrivilegedConfiguredNetworks:I = 0x5

.field static final TRANSACTION_getScanResults:I = 0x13

.field static final TRANSACTION_getSupportedFeatures:I = 0x1

.field static final TRANSACTION_getTetherSoftApSta:I = 0x48

.field static final TRANSACTION_getVerboseLoggingLevel:I = 0x37

.field static final TRANSACTION_getWifiApConfiguration:I = 0x30

.field static final TRANSACTION_getWifiApEnabledState:I = 0x2f

.field static final TRANSACTION_getWifiEnabledState:I = 0x19

.field static final TRANSACTION_getWifiServiceMessenger:I = 0x32

.field static final TRANSACTION_getWifiStaSapConcurrency:I = 0x49

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x23

.field static final TRANSACTION_isDualBandSupported:I = 0x1c

.field static final TRANSACTION_isMulticastEnabled:I = 0x24

.field static final TRANSACTION_isScanAlwaysAvailable:I = 0x1f

.field static final TRANSACTION_matchProviderWithCurrentNetwork:I = 0xd

.field static final TRANSACTION_queryPasspointIcon:I = 0xc

.field static final TRANSACTION_reassociate:I = 0x16

.field static final TRANSACTION_reconnect:I = 0x15

.field static final TRANSACTION_releaseMulticastLock:I = 0x26

.field static final TRANSACTION_releaseWifiLock:I = 0x22

.field static final TRANSACTION_removeNetwork:I = 0xf

.field static final TRANSACTION_removePasspointConfiguration:I = 0xa

.field static final TRANSACTION_reportActivityInfo:I = 0x2

.field static final TRANSACTION_requestActivityInfo:I = 0x3

.field static final TRANSACTION_restoreBackupData:I = 0x44

.field static final TRANSACTION_restoreSupplicantBackupData:I = 0x45

.field static final TRANSACTION_retrieveBackupData:I = 0x43

.field static final TRANSACTION_runFtmCommand:I = 0x4b

.field static final TRANSACTION_saveConfiguration:I = 0x1d

.field static final TRANSACTION_setAllowScansWithTraffic:I = 0x3a

.field static final TRANSACTION_setCountryCode:I = 0x1a

.field static final TRANSACTION_setCountryCodeFromMcc:I = 0x4d

.field static final TRANSACTION_setEnableAutoJoinWhenAssociated:I = 0x3c

.field static final TRANSACTION_setFtmMode:I = 0x46

.field static final TRANSACTION_setWifiApConfiguration:I = 0x31

.field static final TRANSACTION_setWifiApEnabled:I = 0x27

.field static final TRANSACTION_setWifiEnabled:I = 0x18

.field static final TRANSACTION_startLocalOnlyHotspot:I = 0x2b

.field static final TRANSACTION_startScan:I = 0x12

.field static final TRANSACTION_startSoftAp:I = 0x29

.field static final TRANSACTION_startWatchLocalOnlyHotspot:I = 0x2d

.field static final TRANSACTION_stopLocalOnlyHotspot:I = 0x2c

.field static final TRANSACTION_stopSoftAp:I = 0x2a

.field static final TRANSACTION_stopWatchLocalOnlyHotspot:I = 0x2e

.field static final TRANSACTION_updateInterfaceIpState:I = 0x28

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x21


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
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
    const-string/jumbo v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/wifi/IWifiManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 42
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

    .line 899
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v41

    return v41

    .line 47
    :sswitch_0
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/16 v41, 0x1

    return v41

    .line 52
    :sswitch_1
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getSupportedFeatures()I

    move-result v25

    .line 54
    .local v25, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/16 v41, 0x1

    return v41

    .line 60
    .end local v25    # "_result":I
    :sswitch_2
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v29

    .line 62
    .local v29, "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v29, :cond_0

    .line 64
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    const/16 v41, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 70
    :goto_0
    const/16 v41, 0x1

    return v41

    .line 68
    :cond_0
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v29    # "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    :sswitch_3
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_1

    .line 77
    sget-object v41, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/ResultReceiver;

    .line 82
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/net/wifi/IWifiManager$Stub;->requestActivityInfo(Landroid/os/ResultReceiver;)V

    .line 83
    const/16 v41, 0x1

    return v41

    .line 80
    :cond_1
    const/4 v13, 0x0

    .local v13, "_arg0":Landroid/os/ResultReceiver;
    goto :goto_1

    .line 87
    .end local v13    # "_arg0":Landroid/os/ResultReceiver;
    :sswitch_4
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Landroid/content/pm/ParceledListSlice;

    move-result-object v26

    .line 89
    .local v26, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v26, :cond_2

    .line 91
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    const/16 v41, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 97
    :goto_2
    const/16 v41, 0x1

    return v41

    .line 95
    :cond_2
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 101
    .end local v26    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_5
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getPrivilegedConfiguredNetworks()Landroid/content/pm/ParceledListSlice;

    move-result-object v26

    .line 103
    .restart local v26    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v26, :cond_3

    .line 105
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    const/16 v41, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 111
    :goto_3
    const/16 v41, 0x1

    return v41

    .line 109
    :cond_3
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 115
    .end local v26    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_6
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_4

    .line 118
    sget-object v41, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 123
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/net/wifi/IWifiManager$Stub;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v30

    .line 124
    .local v30, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v30, :cond_5

    .line 126
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    const/16 v41, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 132
    :goto_5
    const/16 v41, 0x1

    return v41

    .line 121
    .end local v30    # "_result":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/net/wifi/ScanResult;
    goto :goto_4

    .line 130
    .end local v5    # "_arg0":Landroid/net/wifi/ScanResult;
    .restart local v30    # "_result":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 136
    .end local v30    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_7
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_6

    .line 139
    sget-object v41, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 144
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/net/wifi/IWifiManager$Stub;->getMatchingOsuProviders(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object v37

    .line 145
    .local v37, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/OsuProvider;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 147
    const/16 v41, 0x1

    return v41

    .line 142
    .end local v37    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/OsuProvider;>;"
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/net/wifi/ScanResult;
    goto :goto_6

    .line 151
    .end local v5    # "_arg0":Landroid/net/wifi/ScanResult;
    :sswitch_8
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_7

    .line 154
    sget-object v41, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 159
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v25

    .line 160
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    const/16 v41, 0x1

    return v41

    .line 157
    .end local v25    # "_result":I
    :cond_7
    const/4 v9, 0x0

    .local v9, "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_7

    .line 166
    .end local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_9
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_8

    .line 169
    sget-object v41, Landroid/net/wifi/hotspot2/PasspointConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 174
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdatePasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;)Z

    move-result v39

    .line 175
    .local v39, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v39, :cond_9

    const/16 v41, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    const/16 v41, 0x1

    return v41

    .line 172
    .end local v39    # "_result":Z
    :cond_8
    const/4 v10, 0x0

    .local v10, "_arg0":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    goto :goto_8

    .line 176
    .end local v10    # "_arg0":Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .restart local v39    # "_result":Z
    :cond_9
    const/16 v41, 0x0

    goto :goto_9

    .line 181
    .end local v39    # "_result":Z
    :sswitch_a
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 184
    .local v14, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->removePasspointConfiguration(Ljava/lang/String;)Z

    move-result v39

    .line 185
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v39, :cond_a

    const/16 v41, 0x1

    :goto_a
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/16 v41, 0x1

    return v41

    .line 186
    :cond_a
    const/16 v41, 0x0

    goto :goto_a

    .line 191
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v39    # "_result":Z
    :sswitch_b
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getPasspointConfigurations()Ljava/util/List;

    move-result-object v38

    .line 193
    .local v38, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/PasspointConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 195
    const/16 v41, 0x1

    return v41

    .line 199
    .end local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/PasspointConfiguration;>;"
    :sswitch_c
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 203
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 204
    .local v20, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v7, v1}, Landroid/net/wifi/IWifiManager$Stub;->queryPasspointIcon(JLjava/lang/String;)V

    .line 205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    const/16 v41, 0x1

    return v41

    .line 210
    .end local v6    # "_arg0":J
    .end local v20    # "_arg1":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 213
    .restart local v14    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->matchProviderWithCurrentNetwork(Ljava/lang/String;)I

    move-result v25

    .line 214
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    const/16 v41, 0x1

    return v41

    .line 220
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v25    # "_result":I
    :sswitch_e
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 224
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_b

    const/16 v21, 0x1

    .line 225
    .local v21, "_arg1":Z
    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v6, v7, v1}, Landroid/net/wifi/IWifiManager$Stub;->deauthenticateNetwork(JZ)V

    .line 226
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    const/16 v41, 0x1

    return v41

    .line 224
    .end local v21    # "_arg1":Z
    :cond_b
    const/16 v21, 0x0

    .restart local v21    # "_arg1":Z
    goto :goto_b

    .line 231
    .end local v6    # "_arg0":J
    .end local v21    # "_arg1":Z
    :sswitch_f
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 234
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v39

    .line 235
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v39, :cond_c

    const/16 v41, 0x1

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/16 v41, 0x1

    return v41

    .line 236
    :cond_c
    const/16 v41, 0x0

    goto :goto_c

    .line 241
    .end local v4    # "_arg0":I
    .end local v39    # "_result":Z
    :sswitch_10
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 245
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_d

    const/16 v21, 0x1

    .line 246
    .restart local v21    # "_arg1":Z
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v39

    .line 247
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v39, :cond_e

    const/16 v41, 0x1

    :goto_e
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    const/16 v41, 0x1

    return v41

    .line 245
    .end local v21    # "_arg1":Z
    .end local v39    # "_result":Z
    :cond_d
    const/16 v21, 0x0

    .restart local v21    # "_arg1":Z
    goto :goto_d

    .line 248
    .restart local v39    # "_result":Z
    :cond_e
    const/16 v41, 0x0

    goto :goto_e

    .line 253
    .end local v4    # "_arg0":I
    .end local v21    # "_arg1":Z
    .end local v39    # "_result":Z
    :sswitch_11
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 256
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v39

    .line 257
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    if-eqz v39, :cond_f

    const/16 v41, 0x1

    :goto_f
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    const/16 v41, 0x1

    return v41

    .line 258
    :cond_f
    const/16 v41, 0x0

    goto :goto_f

    .line 263
    .end local v4    # "_arg0":I
    .end local v39    # "_result":Z
    :sswitch_12
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_10

    .line 266
    sget-object v41, Landroid/net/wifi/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanSettings;

    .line 272
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_11

    .line 273
    sget-object v41, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/WorkSource;

    .line 279
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 280
    .local v23, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-virtual {v0, v8, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    const/16 v41, 0x1

    return v41

    .line 269
    .end local v23    # "_arg2":Ljava/lang/String;
    :cond_10
    const/4 v8, 0x0

    .local v8, "_arg0":Landroid/net/wifi/ScanSettings;
    goto :goto_10

    .line 276
    .end local v8    # "_arg0":Landroid/net/wifi/ScanSettings;
    :cond_11
    const/16 v19, 0x0

    .local v19, "_arg1":Landroid/os/WorkSource;
    goto :goto_11

    .line 286
    .end local v19    # "_arg1":Landroid/os/WorkSource;
    :sswitch_13
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 289
    .restart local v14    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v35

    .line 290
    .local v35, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 292
    const/16 v41, 0x1

    return v41

    .line 296
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v35    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_14
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()V

    .line 298
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    const/16 v41, 0x1

    return v41

    .line 303
    :sswitch_15
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()V

    .line 305
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    const/16 v41, 0x1

    return v41

    .line 310
    :sswitch_16
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()V

    .line 312
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    const/16 v41, 0x1

    return v41

    .line 317
    :sswitch_17
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 320
    .restart local v14    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo(Ljava/lang/String;)Landroid/net/wifi/WifiInfo;

    move-result-object v32

    .line 321
    .local v32, "_result":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    if-eqz v32, :cond_12

    .line 323
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    const/16 v41, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 329
    :goto_12
    const/16 v41, 0x1

    return v41

    .line 327
    :cond_12
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 333
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v32    # "_result":Landroid/net/wifi/WifiInfo;
    :sswitch_18
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 337
    .restart local v14    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_13

    const/16 v21, 0x1

    .line 338
    .restart local v21    # "_arg1":Z
    :goto_13
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Ljava/lang/String;Z)Z

    move-result v39

    .line 339
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    if-eqz v39, :cond_14

    const/16 v41, 0x1

    :goto_14
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    const/16 v41, 0x1

    return v41

    .line 337
    .end local v21    # "_arg1":Z
    .end local v39    # "_result":Z
    :cond_13
    const/16 v21, 0x0

    .restart local v21    # "_arg1":Z
    goto :goto_13

    .line 340
    .restart local v39    # "_result":Z
    :cond_14
    const/16 v41, 0x0

    goto :goto_14

    .line 345
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":Z
    .end local v39    # "_result":Z
    :sswitch_19
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v25

    .line 347
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const/16 v41, 0x1

    return v41

    .line 353
    .end local v25    # "_result":I
    :sswitch_1a
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 357
    .restart local v14    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_15

    const/16 v21, 0x1

    .line 358
    .restart local v21    # "_arg1":Z
    :goto_15
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCode(Ljava/lang/String;Z)V

    .line 359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    const/16 v41, 0x1

    return v41

    .line 357
    .end local v21    # "_arg1":Z
    :cond_15
    const/16 v21, 0x0

    .restart local v21    # "_arg1":Z
    goto :goto_15

    .line 364
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":Z
    :sswitch_1b
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCountryCode()Ljava/lang/String;

    move-result-object v34

    .line 366
    .local v34, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 368
    const/16 v41, 0x1

    return v41

    .line 372
    .end local v34    # "_result":Ljava/lang/String;
    :sswitch_1c
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isDualBandSupported()Z

    move-result v39

    .line 374
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    if-eqz v39, :cond_16

    const/16 v41, 0x1

    :goto_16
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    const/16 v41, 0x1

    return v41

    .line 375
    :cond_16
    const/16 v41, 0x0

    goto :goto_16

    .line 380
    .end local v39    # "_result":Z
    :sswitch_1d
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v39

    .line 382
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    if-eqz v39, :cond_17

    const/16 v41, 0x1

    :goto_17
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    const/16 v41, 0x1

    return v41

    .line 383
    :cond_17
    const/16 v41, 0x0

    goto :goto_17

    .line 388
    .end local v39    # "_result":Z
    :sswitch_1e
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v27

    .line 390
    .local v27, "_result":Landroid/net/DhcpInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    if-eqz v27, :cond_18

    .line 392
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    const/16 v41, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 398
    :goto_18
    const/16 v41, 0x1

    return v41

    .line 396
    :cond_18
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 402
    .end local v27    # "_result":Landroid/net/DhcpInfo;
    :sswitch_1f
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isScanAlwaysAvailable()Z

    move-result v39

    .line 404
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    if-eqz v39, :cond_19

    const/16 v41, 0x1

    :goto_19
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    const/16 v41, 0x1

    return v41

    .line 405
    :cond_19
    const/16 v41, 0x0

    goto :goto_19

    .line 410
    .end local v39    # "_result":Z
    :sswitch_20
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 414
    .local v11, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 416
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 418
    .restart local v23    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_1a

    .line 419
    sget-object v41, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/WorkSource;

    .line 424
    :goto_1a
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v39

    .line 425
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    if-eqz v39, :cond_1b

    const/16 v41, 0x1

    :goto_1b
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    const/16 v41, 0x1

    return v41

    .line 422
    .end local v39    # "_result":Z
    :cond_1a
    const/16 v24, 0x0

    .local v24, "_arg3":Landroid/os/WorkSource;
    goto :goto_1a

    .line 426
    .end local v24    # "_arg3":Landroid/os/WorkSource;
    .restart local v39    # "_result":Z
    :cond_1b
    const/16 v41, 0x0

    goto :goto_1b

    .line 431
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v17    # "_arg1":I
    .end local v23    # "_arg2":Ljava/lang/String;
    .end local v39    # "_result":Z
    :sswitch_21
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 435
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_1c

    .line 436
    sget-object v41, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/WorkSource;

    .line 441
    :goto_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    const/16 v41, 0x1

    return v41

    .line 439
    :cond_1c
    const/16 v19, 0x0

    .restart local v19    # "_arg1":Landroid/os/WorkSource;
    goto :goto_1c

    .line 447
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v19    # "_arg1":Landroid/os/WorkSource;
    :sswitch_22
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 450
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v39

    .line 451
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    if-eqz v39, :cond_1d

    const/16 v41, 0x1

    :goto_1d
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    const/16 v41, 0x1

    return v41

    .line 452
    :cond_1d
    const/16 v41, 0x0

    goto :goto_1d

    .line 457
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v39    # "_result":Z
    :sswitch_23
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    const/16 v41, 0x1

    return v41

    .line 464
    :sswitch_24
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v39

    .line 466
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    if-eqz v39, :cond_1e

    const/16 v41, 0x1

    :goto_1e
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    const/16 v41, 0x1

    return v41

    .line 467
    :cond_1e
    const/16 v41, 0x0

    goto :goto_1e

    .line 472
    .end local v39    # "_result":Z
    :sswitch_25
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 476
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 477
    .restart local v20    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    const/16 v41, 0x1

    return v41

    .line 483
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v20    # "_arg1":Ljava/lang/String;
    :sswitch_26
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 485
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    const/16 v41, 0x1

    return v41

    .line 490
    :sswitch_27
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_1f

    .line 493
    sget-object v41, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 499
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_20

    const/16 v21, 0x1

    .line 500
    .restart local v21    # "_arg1":Z
    :goto_20
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 501
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    const/16 v41, 0x1

    return v41

    .line 496
    .end local v21    # "_arg1":Z
    :cond_1f
    const/4 v9, 0x0

    .restart local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1f

    .line 499
    .end local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :cond_20
    const/16 v21, 0x0

    .restart local v21    # "_arg1":Z
    goto :goto_20

    .line 506
    .end local v21    # "_arg1":Z
    :sswitch_28
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 510
    .restart local v14    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 511
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Landroid/net/wifi/IWifiManager$Stub;->updateInterfaceIpState(Ljava/lang/String;I)V

    .line 512
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    const/16 v41, 0x1

    return v41

    .line 517
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    :sswitch_29
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_21

    .line 520
    sget-object v41, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 525
    :goto_21
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/IWifiManager$Stub;->startSoftAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v39

    .line 526
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    if-eqz v39, :cond_22

    const/16 v41, 0x1

    :goto_22
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    const/16 v41, 0x1

    return v41

    .line 523
    .end local v39    # "_result":Z
    :cond_21
    const/4 v9, 0x0

    .restart local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_21

    .line 527
    .end local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .restart local v39    # "_result":Z
    :cond_22
    const/16 v41, 0x0

    goto :goto_22

    .line 532
    .end local v39    # "_result":Z
    :sswitch_2a
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->stopSoftAp()Z

    move-result v39

    .line 534
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    if-eqz v39, :cond_23

    const/16 v41, 0x1

    :goto_23
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    const/16 v41, 0x1

    return v41

    .line 535
    :cond_23
    const/16 v41, 0x0

    goto :goto_23

    .line 540
    .end local v39    # "_result":Z
    :sswitch_2b
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_24

    .line 543
    sget-object v41, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Messenger;

    .line 549
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 551
    .local v18, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 552
    .restart local v23    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-virtual {v0, v12, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->startLocalOnlyHotspot(Landroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v25

    .line 553
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    const/16 v41, 0x1

    return v41

    .line 546
    .end local v18    # "_arg1":Landroid/os/IBinder;
    .end local v23    # "_arg2":Ljava/lang/String;
    .end local v25    # "_result":I
    :cond_24
    const/4 v12, 0x0

    .local v12, "_arg0":Landroid/os/Messenger;
    goto :goto_24

    .line 559
    .end local v12    # "_arg0":Landroid/os/Messenger;
    :sswitch_2c
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->stopLocalOnlyHotspot()V

    .line 561
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    const/16 v41, 0x1

    return v41

    .line 566
    :sswitch_2d
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_25

    .line 569
    sget-object v41, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Messenger;

    .line 575
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 576
    .restart local v18    # "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Landroid/net/wifi/IWifiManager$Stub;->startWatchLocalOnlyHotspot(Landroid/os/Messenger;Landroid/os/IBinder;)V

    .line 577
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    const/16 v41, 0x1

    return v41

    .line 572
    .end local v18    # "_arg1":Landroid/os/IBinder;
    :cond_25
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/os/Messenger;
    goto :goto_25

    .line 582
    .end local v12    # "_arg0":Landroid/os/Messenger;
    :sswitch_2e
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->stopWatchLocalOnlyHotspot()V

    .line 584
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    const/16 v41, 0x1

    return v41

    .line 589
    :sswitch_2f
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v25

    .line 591
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    const/16 v41, 0x1

    return v41

    .line 597
    .end local v25    # "_result":I
    :sswitch_30
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v30

    .line 599
    .restart local v30    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    if-eqz v30, :cond_26

    .line 601
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    const/16 v41, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 607
    :goto_26
    const/16 v41, 0x1

    return v41

    .line 605
    :cond_26
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 611
    .end local v30    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_31
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_27

    .line 614
    sget-object v41, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 619
    :goto_27
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 620
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    const/16 v41, 0x1

    return v41

    .line 617
    :cond_27
    const/4 v9, 0x0

    .restart local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_27

    .line 625
    .end local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_32
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v33

    .line 627
    .local v33, "_result":Landroid/os/Messenger;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    if-eqz v33, :cond_28

    .line 629
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    const/16 v41, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 635
    :goto_28
    const/16 v41, 0x1

    return v41

    .line 633
    :cond_28
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_28

    .line 639
    .end local v33    # "_result":Landroid/os/Messenger;
    :sswitch_33
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 643
    .restart local v14    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_29

    const/16 v21, 0x1

    .line 644
    .restart local v21    # "_arg1":Z
    :goto_29
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdls(Ljava/lang/String;Z)V

    .line 645
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    const/16 v41, 0x1

    return v41

    .line 643
    .end local v21    # "_arg1":Z
    :cond_29
    const/16 v21, 0x0

    .restart local v21    # "_arg1":Z
    goto :goto_29

    .line 650
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":Z
    :sswitch_34
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 654
    .restart local v14    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_2a

    const/16 v21, 0x1

    .line 655
    .restart local v21    # "_arg1":Z
    :goto_2a
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V

    .line 656
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    const/16 v41, 0x1

    return v41

    .line 654
    .end local v21    # "_arg1":Z
    :cond_2a
    const/16 v21, 0x0

    .restart local v21    # "_arg1":Z
    goto :goto_2a

    .line 661
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":Z
    :sswitch_35
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCurrentNetworkWpsNfcConfigurationToken()Ljava/lang/String;

    move-result-object v34

    .line 663
    .restart local v34    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 665
    const/16 v41, 0x1

    return v41

    .line 669
    .end local v34    # "_result":Ljava/lang/String;
    :sswitch_36
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 672
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableVerboseLogging(I)V

    .line 673
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    const/16 v41, 0x1

    return v41

    .line 678
    .end local v4    # "_arg0":I
    :sswitch_37
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 679
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getVerboseLoggingLevel()I

    move-result v25

    .line 680
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    const/16 v41, 0x1

    return v41

    .line 686
    .end local v25    # "_result":I
    :sswitch_38
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 689
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableAggressiveHandover(I)V

    .line 690
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    const/16 v41, 0x1

    return v41

    .line 695
    .end local v4    # "_arg0":I
    :sswitch_39
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getAggressiveHandover()I

    move-result v25

    .line 697
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    const/16 v41, 0x1

    return v41

    .line 703
    .end local v25    # "_result":I
    :sswitch_3a
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 706
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setAllowScansWithTraffic(I)V

    .line 707
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    const/16 v41, 0x1

    return v41

    .line 712
    .end local v4    # "_arg0":I
    :sswitch_3b
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 713
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getAllowScansWithTraffic()I

    move-result v25

    .line 714
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    const/16 v41, 0x1

    return v41

    .line 720
    .end local v25    # "_result":I
    :sswitch_3c
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_2b

    const/4 v15, 0x1

    .line 723
    .local v15, "_arg0":Z
    :goto_2b
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/IWifiManager$Stub;->setEnableAutoJoinWhenAssociated(Z)Z

    move-result v39

    .line 724
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    if-eqz v39, :cond_2c

    const/16 v41, 0x1

    :goto_2c
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    const/16 v41, 0x1

    return v41

    .line 722
    .end local v15    # "_arg0":Z
    .end local v39    # "_result":Z
    :cond_2b
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Z
    goto :goto_2b

    .line 725
    .restart local v39    # "_result":Z
    :cond_2c
    const/16 v41, 0x0

    goto :goto_2c

    .line 730
    .end local v15    # "_arg0":Z
    .end local v39    # "_result":Z
    :sswitch_3d
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getEnableAutoJoinWhenAssociated()Z

    move-result v39

    .line 732
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    if-eqz v39, :cond_2d

    const/16 v41, 0x1

    :goto_2d
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    const/16 v41, 0x1

    return v41

    .line 733
    :cond_2d
    const/16 v41, 0x0

    goto :goto_2d

    .line 738
    .end local v39    # "_result":Z
    :sswitch_3e
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_2e

    const/4 v15, 0x1

    .line 741
    .restart local v15    # "_arg0":Z
    :goto_2e
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/IWifiManager$Stub;->enableWifiConnectivityManager(Z)V

    .line 742
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    const/16 v41, 0x1

    return v41

    .line 740
    .end local v15    # "_arg0":Z
    :cond_2e
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Z
    goto :goto_2e

    .line 747
    .end local v15    # "_arg0":Z
    :sswitch_3f
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v31

    .line 749
    .local v31, "_result":Landroid/net/wifi/WifiConnectionStatistics;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    if-eqz v31, :cond_2f

    .line 751
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    const/16 v41, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 757
    :goto_2f
    const/16 v41, 0x1

    return v41

    .line 755
    :cond_2f
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2f

    .line 761
    .end local v31    # "_result":Landroid/net/wifi/WifiConnectionStatistics;
    :sswitch_40
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 763
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 764
    .restart local v14    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 765
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    const/16 v41, 0x1

    return v41

    .line 770
    .end local v14    # "_arg0":Ljava/lang/String;
    :sswitch_41
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->factoryReset()V

    .line 772
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    const/16 v41, 0x1

    return v41

    .line 777
    :sswitch_42
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v28

    .line 779
    .local v28, "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    if-eqz v28, :cond_30

    .line 781
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 782
    const/16 v41, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    .line 787
    :goto_30
    const/16 v41, 0x1

    return v41

    .line 785
    :cond_30
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_30

    .line 791
    .end local v28    # "_result":Landroid/net/Network;
    :sswitch_43
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->retrieveBackupData()[B

    move-result-object v40

    .line 793
    .local v40, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 795
    const/16 v41, 0x1

    return v41

    .line 799
    .end local v40    # "_result":[B
    :sswitch_44
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 801
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 802
    .local v16, "_arg0":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->restoreBackupData([B)V

    .line 803
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    const/16 v41, 0x1

    return v41

    .line 808
    .end local v16    # "_arg0":[B
    :sswitch_45
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 812
    .restart local v16    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v22

    .line 813
    .local v22, "_arg1":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->restoreSupplicantBackupData([B[B)V

    .line 814
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    const/16 v41, 0x1

    return v41

    .line 819
    .end local v16    # "_arg0":[B
    .end local v22    # "_arg1":[B
    :sswitch_46
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 821
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_31

    const/4 v15, 0x1

    .line 822
    .restart local v15    # "_arg0":Z
    :goto_31
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/IWifiManager$Stub;->setFtmMode(Z)Z

    move-result v39

    .line 823
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    if-eqz v39, :cond_32

    const/16 v41, 0x1

    :goto_32
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 825
    const/16 v41, 0x1

    return v41

    .line 821
    .end local v15    # "_arg0":Z
    .end local v39    # "_result":Z
    :cond_31
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Z
    goto :goto_31

    .line 824
    .restart local v39    # "_result":Z
    :cond_32
    const/16 v41, 0x0

    goto :goto_32

    .line 829
    .end local v15    # "_arg0":Z
    .end local v39    # "_result":Z
    :sswitch_47
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 833
    .restart local v14    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_33

    const/16 v21, 0x1

    .line 834
    .restart local v21    # "_arg1":Z
    :goto_33
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/net/wifi/IWifiManager$Stub;->blackListWifiDevice(Ljava/lang/String;Z)Z

    move-result v39

    .line 835
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    if-eqz v39, :cond_34

    const/16 v41, 0x1

    :goto_34
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 837
    const/16 v41, 0x1

    return v41

    .line 833
    .end local v21    # "_arg1":Z
    .end local v39    # "_result":Z
    :cond_33
    const/16 v21, 0x0

    .restart local v21    # "_arg1":Z
    goto :goto_33

    .line 836
    .restart local v39    # "_result":Z
    :cond_34
    const/16 v41, 0x0

    goto :goto_34

    .line 841
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":Z
    .end local v39    # "_result":Z
    :sswitch_48
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 843
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 844
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->getTetherSoftApSta(I)Ljava/util/List;

    move-result-object v36

    .line 845
    .local v36, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 847
    const/16 v41, 0x1

    return v41

    .line 851
    .end local v4    # "_arg0":I
    .end local v36    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiDevice;>;"
    :sswitch_49
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiStaSapConcurrency()Z

    move-result v39

    .line 853
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    if-eqz v39, :cond_35

    const/16 v41, 0x1

    :goto_35
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 855
    const/16 v41, 0x1

    return v41

    .line 854
    :cond_35
    const/16 v41, 0x0

    goto :goto_35

    .line 859
    .end local v39    # "_result":Z
    :sswitch_4a
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 860
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectedStations()Ljava/util/List;

    move-result-object v36

    .line 861
    .restart local v36    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 863
    const/16 v41, 0x1

    return v41

    .line 867
    .end local v36    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiDevice;>;"
    :sswitch_4b
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 869
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 871
    .restart local v14    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 872
    .restart local v20    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/net/wifi/IWifiManager$Stub;->runFtmCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v39

    .line 873
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    if-eqz v39, :cond_36

    const/16 v41, 0x1

    :goto_36
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    const/16 v41, 0x1

    return v41

    .line 874
    :cond_36
    const/16 v41, 0x0

    goto :goto_36

    .line 879
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":Ljava/lang/String;
    .end local v39    # "_result":Z
    :sswitch_4c
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 881
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_37

    const/4 v15, 0x1

    .line 882
    .restart local v15    # "_arg0":Z
    :goto_37
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/IWifiManager$Stub;->enablePktLog(Z)Z

    move-result v39

    .line 883
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    if-eqz v39, :cond_38

    const/16 v41, 0x1

    :goto_38
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    const/16 v41, 0x1

    return v41

    .line 881
    .end local v15    # "_arg0":Z
    .end local v39    # "_result":Z
    :cond_37
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Z
    goto :goto_37

    .line 884
    .restart local v39    # "_result":Z
    :cond_38
    const/16 v41, 0x0

    goto :goto_38

    .line 889
    .end local v15    # "_arg0":Z
    .end local v39    # "_result":Z
    :sswitch_4d
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 891
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 893
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_39

    const/16 v21, 0x1

    .line 894
    .restart local v21    # "_arg1":Z
    :goto_39
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCodeFromMcc(IZ)V

    .line 895
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    const/16 v41, 0x1

    return v41

    .line 893
    .end local v21    # "_arg1":Z
    :cond_39
    const/16 v21, 0x0

    .restart local v21    # "_arg1":Z
    goto :goto_39

    .line 43
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
        0x4d -> :sswitch_4d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
