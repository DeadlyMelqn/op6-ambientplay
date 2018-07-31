.class public abstract Landroid/os/INetworkManagementService$Stub;
.super Landroid/os/Binder;
.source "INetworkManagementService.java"

# interfaces
.implements Landroid/os/INetworkManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/INetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/INetworkManagementService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.INetworkManagementService"

.field static final TRANSACTION_addIdleTimer:I = 0x37

.field static final TRANSACTION_addInterfaceToLocalNetwork:I = 0x55

.field static final TRANSACTION_addInterfaceToNetwork:I = 0x4b

.field static final TRANSACTION_addLegacyRouteForNetId:I = 0x4d

.field static final TRANSACTION_addRoute:I = 0xf

.field static final TRANSACTION_addVpnUidRanges:I = 0x40

.field static final TRANSACTION_allowProtect:I = 0x53

.field static final TRANSACTION_attachPppd:I = 0x26

.field static final TRANSACTION_clearDefaultNetId:I = 0x4f

.field static final TRANSACTION_clearInterfaceAddresses:I = 0x7

.field static final TRANSACTION_clearPermission:I = 0x52

.field static final TRANSACTION_createPhysicalNetwork:I = 0x48

.field static final TRANSACTION_createVirtualNetwork:I = 0x49

.field static final TRANSACTION_denyProtect:I = 0x54

.field static final TRANSACTION_detachPppd:I = 0x27

.field static final TRANSACTION_disableIpv6:I = 0xb

.field static final TRANSACTION_disableNat:I = 0x20

.field static final TRANSACTION_enableIpv6:I = 0xc

.field static final TRANSACTION_enableNat:I = 0x1f

.field static final TRANSACTION_getDnsForwarders:I = 0x1c

.field static final TRANSACTION_getInterfaceConfig:I = 0x5

.field static final TRANSACTION_getIpForwardingEnabled:I = 0x13

.field static final TRANSACTION_getNetdService:I = 0x3

.field static final TRANSACTION_getNetworkStatsDetail:I = 0x2a

.field static final TRANSACTION_getNetworkStatsSummaryDev:I = 0x28

.field static final TRANSACTION_getNetworkStatsSummaryXt:I = 0x29

.field static final TRANSACTION_getNetworkStatsTethering:I = 0x2c

.field static final TRANSACTION_getNetworkStatsUidDetail:I = 0x2b

.field static final TRANSACTION_isBandwidthControlEnabled:I = 0x36

.field static final TRANSACTION_isClatdStarted:I = 0x44

.field static final TRANSACTION_isFirewallEnabled:I = 0x3b

.field static final TRANSACTION_isNetworkActive:I = 0x47

.field static final TRANSACTION_isNetworkRestricted:I = 0x59

.field static final TRANSACTION_isTetheringStarted:I = 0x17

.field static final TRANSACTION_listInterfaces:I = 0x4

.field static final TRANSACTION_listTetheredInterfaces:I = 0x1a

.field static final TRANSACTION_listTtys:I = 0x25

.field static final TRANSACTION_registerNetworkActivityListener:I = 0x45

.field static final TRANSACTION_registerObserver:I = 0x1

.field static final TRANSACTION_registerTetheringStatsProvider:I = 0x22

.field static final TRANSACTION_removeIdleTimer:I = 0x38

.field static final TRANSACTION_removeInterfaceAlert:I = 0x30

.field static final TRANSACTION_removeInterfaceFromLocalNetwork:I = 0x56

.field static final TRANSACTION_removeInterfaceFromNetwork:I = 0x4c

.field static final TRANSACTION_removeInterfaceQuota:I = 0x2e

.field static final TRANSACTION_removeNetwork:I = 0x4a

.field static final TRANSACTION_removeRoute:I = 0x10

.field static final TRANSACTION_removeRoutesFromLocalNetwork:I = 0x57

.field static final TRANSACTION_removeVpnUidRanges:I = 0x41

.field static final TRANSACTION_setAllowOnlyVpnForUids:I = 0x58

.field static final TRANSACTION_setDataSaverModeEnabled:I = 0x34

.field static final TRANSACTION_setDefaultNetId:I = 0x4e

.field static final TRANSACTION_setDnsConfigurationForNetwork:I = 0x39

.field static final TRANSACTION_setDnsForwarders:I = 0x1b

.field static final TRANSACTION_setFirewallChainEnabled:I = 0x3f

.field static final TRANSACTION_setFirewallEnabled:I = 0x3a

.field static final TRANSACTION_setFirewallInterfaceRule:I = 0x3c

.field static final TRANSACTION_setFirewallUidRule:I = 0x3d

.field static final TRANSACTION_setFirewallUidRules:I = 0x3e

.field static final TRANSACTION_setGlobalAlert:I = 0x31

.field static final TRANSACTION_setIPv6AddrGenMode:I = 0xd

.field static final TRANSACTION_setInterfaceAlert:I = 0x2f

.field static final TRANSACTION_setInterfaceConfig:I = 0x6

.field static final TRANSACTION_setInterfaceDown:I = 0x8

.field static final TRANSACTION_setInterfaceIpv6NdOffload:I = 0xe

.field static final TRANSACTION_setInterfaceIpv6PrivacyExtensions:I = 0xa

.field static final TRANSACTION_setInterfaceQuota:I = 0x2d

.field static final TRANSACTION_setInterfaceUp:I = 0x9

.field static final TRANSACTION_setIpForwardingEnabled:I = 0x14

.field static final TRANSACTION_setMtu:I = 0x11

.field static final TRANSACTION_setNetworkPermission:I = 0x50

.field static final TRANSACTION_setPermission:I = 0x51

.field static final TRANSACTION_setPortForwardRules:I = 0x21

.field static final TRANSACTION_setUidCleartextNetworkPolicy:I = 0x35

.field static final TRANSACTION_setUidMeteredNetworkBlacklist:I = 0x32

.field static final TRANSACTION_setUidMeteredNetworkWhitelist:I = 0x33

.field static final TRANSACTION_shutdown:I = 0x12

.field static final TRANSACTION_startClatd:I = 0x42

.field static final TRANSACTION_startInterfaceForwarding:I = 0x1d

.field static final TRANSACTION_startTethering:I = 0x15

.field static final TRANSACTION_stopClatd:I = 0x43

.field static final TRANSACTION_stopInterfaceForwarding:I = 0x1e

.field static final TRANSACTION_stopTethering:I = 0x16

.field static final TRANSACTION_tetherInterface:I = 0x18

.field static final TRANSACTION_tetherLimitReached:I = 0x24

.field static final TRANSACTION_unregisterNetworkActivityListener:I = 0x46

.field static final TRANSACTION_unregisterObserver:I = 0x2

.field static final TRANSACTION_unregisterTetheringStatsProvider:I = 0x23

.field static final TRANSACTION_untetherInterface:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.os.INetworkManagementService"

    invoke-virtual {p0, p0, v0}, Landroid/os/INetworkManagementService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "android.os.INetworkManagementService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/os/INetworkManagementService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/INetworkManagementService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/INetworkManagementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 40
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 995
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 45
    :sswitch_0
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v4, 0x1

    return v4

    .line 50
    :sswitch_1
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v11

    .line 53
    .local v11, "_arg0":Landroid/net/INetworkManagementEventObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/os/INetworkManagementService$Stub;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 54
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    const/4 v4, 0x1

    return v4

    .line 59
    .end local v11    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    :sswitch_2
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v11

    .line 62
    .restart local v11    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/os/INetworkManagementService$Stub;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 63
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    const/4 v4, 0x1

    return v4

    .line 68
    .end local v11    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    :sswitch_3
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getNetdService()Landroid/net/INetd;

    move-result-object v35

    .line 70
    .local v35, "_result":Landroid/net/INetd;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v35, :cond_0

    invoke-interface/range {v35 .. v35}, Landroid/net/INetd;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 72
    const/4 v4, 0x1

    return v4

    .line 71
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 76
    .end local v35    # "_result":Landroid/net/INetd;
    :sswitch_4
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->listInterfaces()[Ljava/lang/String;

    move-result-object v39

    .line 78
    .local v39, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 80
    const/4 v4, 0x1

    return v4

    .line 84
    .end local v39    # "_result":[Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v36

    .line 88
    .local v36, "_result":Landroid/net/InterfaceConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v36, :cond_1

    .line 90
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    const/4 v4, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/InterfaceConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 96
    :goto_1
    const/4 v4, 0x1

    return v4

    .line 94
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 100
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v36    # "_result":Landroid/net/InterfaceConfiguration;
    :sswitch_6
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 104
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 105
    sget-object v4, Landroid/net/InterfaceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/net/InterfaceConfiguration;

    .line 110
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    const/4 v4, 0x1

    return v4

    .line 108
    :cond_2
    const/16 v24, 0x0

    .local v24, "_arg1":Landroid/net/InterfaceConfiguration;
    goto :goto_2

    .line 116
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v24    # "_arg1":Landroid/net/InterfaceConfiguration;
    :sswitch_7
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 119
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    const/4 v4, 0x1

    return v4

    .line 125
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 128
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->setInterfaceDown(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    const/4 v4, 0x1

    return v4

    .line 134
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 137
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->setInterfaceUp(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    const/4 v4, 0x1

    return v4

    .line 143
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 147
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v27, 0x1

    .line 148
    .local v27, "_arg1":Z
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 149
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    const/4 v4, 0x1

    return v4

    .line 147
    .end local v27    # "_arg1":Z
    :cond_3
    const/16 v27, 0x0

    .restart local v27    # "_arg1":Z
    goto :goto_3

    .line 154
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":Z
    :sswitch_b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 157
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->disableIpv6(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    const/4 v4, 0x1

    return v4

    .line 163
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 166
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->enableIpv6(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    const/4 v4, 0x1

    return v4

    .line 172
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 176
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 177
    .local v21, "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setIPv6AddrGenMode(Ljava/lang/String;I)V

    .line 178
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    const/4 v4, 0x1

    return v4

    .line 183
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":I
    :sswitch_e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 187
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v27, 0x1

    .line 188
    .restart local v27    # "_arg1":Z
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceIpv6NdOffload(Ljava/lang/String;Z)V

    .line 189
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    const/4 v4, 0x1

    return v4

    .line 187
    .end local v27    # "_arg1":Z
    :cond_4
    const/16 v27, 0x0

    .restart local v27    # "_arg1":Z
    goto :goto_4

    .line 194
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":Z
    :sswitch_f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 198
    .local v10, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 199
    sget-object v4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/net/RouteInfo;

    .line 204
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->addRoute(ILandroid/net/RouteInfo;)V

    .line 205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    const/4 v4, 0x1

    return v4

    .line 202
    :cond_5
    const/16 v25, 0x0

    .local v25, "_arg1":Landroid/net/RouteInfo;
    goto :goto_5

    .line 210
    .end local v10    # "_arg0":I
    .end local v25    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_10
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 214
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 215
    sget-object v4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/net/RouteInfo;

    .line 220
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->removeRoute(ILandroid/net/RouteInfo;)V

    .line 221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    const/4 v4, 0x1

    return v4

    .line 218
    :cond_6
    const/16 v25, 0x0

    .restart local v25    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_6

    .line 226
    .end local v10    # "_arg0":I
    .end local v25    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_11
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 230
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 231
    .restart local v21    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setMtu(Ljava/lang/String;I)V

    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    const/4 v4, 0x1

    return v4

    .line 237
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":I
    :sswitch_12
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->shutdown()V

    .line 239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    const/4 v4, 0x1

    return v4

    .line 244
    :sswitch_13
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getIpForwardingEnabled()Z

    move-result v38

    .line 246
    .local v38, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    if-eqz v38, :cond_7

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    const/4 v4, 0x1

    return v4

    .line 247
    :cond_7
    const/4 v4, 0x0

    goto :goto_7

    .line 252
    .end local v38    # "_result":Z
    :sswitch_14
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v18, 0x1

    .line 255
    .local v18, "_arg0":Z
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->setIpForwardingEnabled(Z)V

    .line 256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    const/4 v4, 0x1

    return v4

    .line 254
    .end local v18    # "_arg0":Z
    :cond_8
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Z
    goto :goto_8

    .line 261
    .end local v18    # "_arg0":Z
    :sswitch_15
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v20

    .line 264
    .local v20, "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->startTethering([Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    const/4 v4, 0x1

    return v4

    .line 270
    .end local v20    # "_arg0":[Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->stopTethering()V

    .line 272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    const/4 v4, 0x1

    return v4

    .line 277
    :sswitch_17
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isTetheringStarted()Z

    move-result v38

    .line 279
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    if-eqz v38, :cond_9

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    const/4 v4, 0x1

    return v4

    .line 280
    :cond_9
    const/4 v4, 0x0

    goto :goto_9

    .line 285
    .end local v38    # "_result":Z
    :sswitch_18
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 288
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->tetherInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    const/4 v4, 0x1

    return v4

    .line 294
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 297
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->untetherInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    const/4 v4, 0x1

    return v4

    .line 303
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->listTetheredInterfaces()[Ljava/lang/String;

    move-result-object v39

    .line 305
    .restart local v39    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 307
    const/4 v4, 0x1

    return v4

    .line 311
    .end local v39    # "_result":[Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 314
    sget-object v4, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/Network;

    .line 320
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v30

    .line 321
    .local v30, "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v15, v1}, Landroid/os/INetworkManagementService$Stub;->setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    const/4 v4, 0x1

    return v4

    .line 317
    .end local v30    # "_arg1":[Ljava/lang/String;
    :cond_a
    const/4 v15, 0x0

    .local v15, "_arg0":Landroid/net/Network;
    goto :goto_a

    .line 327
    .end local v15    # "_arg0":Landroid/net/Network;
    :sswitch_1c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getDnsForwarders()[Ljava/lang/String;

    move-result-object v39

    .line 329
    .restart local v39    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 331
    const/4 v4, 0x1

    return v4

    .line 335
    .end local v39    # "_result":[Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 339
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 340
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    const/4 v4, 0x1

    return v4

    .line 346
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 350
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 351
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    const/4 v4, 0x1

    return v4

    .line 357
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_1f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 361
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 362
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    const/4 v4, 0x1

    return v4

    .line 368
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_20
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 372
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 373
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/os/INetworkManagementService$Stub;->disableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    const/4 v4, 0x1

    return v4

    .line 379
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_21
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    const/16 v18, 0x1

    .line 383
    .restart local v18    # "_arg0":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 385
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 387
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 388
    .local v8, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/os/INetworkManagementService$Stub;->setPortForwardRules(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    const/4 v4, 0x1

    return v4

    .line 381
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg0":Z
    :cond_b
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Z
    goto :goto_b

    .line 394
    .end local v18    # "_arg0":Z
    :sswitch_22
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/ITetheringStatsProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringStatsProvider;

    move-result-object v14

    .line 398
    .local v14, "_arg0":Landroid/net/ITetheringStatsProvider;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 399
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v6}, Landroid/os/INetworkManagementService$Stub;->registerTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    const/4 v4, 0x1

    return v4

    .line 405
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg0":Landroid/net/ITetheringStatsProvider;
    :sswitch_23
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/ITetheringStatsProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringStatsProvider;

    move-result-object v14

    .line 408
    .restart local v14    # "_arg0":Landroid/net/ITetheringStatsProvider;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/os/INetworkManagementService$Stub;->unregisterTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;)V

    .line 409
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    const/4 v4, 0x1

    return v4

    .line 414
    .end local v14    # "_arg0":Landroid/net/ITetheringStatsProvider;
    :sswitch_24
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/ITetheringStatsProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ITetheringStatsProvider;

    move-result-object v14

    .line 417
    .restart local v14    # "_arg0":Landroid/net/ITetheringStatsProvider;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/os/INetworkManagementService$Stub;->tetherLimitReached(Landroid/net/ITetheringStatsProvider;)V

    .line 418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    const/4 v4, 0x1

    return v4

    .line 423
    .end local v14    # "_arg0":Landroid/net/ITetheringStatsProvider;
    :sswitch_25
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->listTtys()[Ljava/lang/String;

    move-result-object v39

    .line 425
    .restart local v39    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 427
    const/4 v4, 0x1

    return v4

    .line 431
    .end local v39    # "_result":[Ljava/lang/String;
    :sswitch_26
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 435
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 437
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 439
    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 441
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg4":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 442
    invoke-virtual/range {v4 .. v9}, Landroid/os/INetworkManagementService$Stub;->attachPppd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    const/4 v4, 0x1

    return v4

    .line 448
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    :sswitch_27
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 451
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->detachPppd(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    const/4 v4, 0x1

    return v4

    .line 457
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_28
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v37

    .line 459
    .local v37, "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    if-eqz v37, :cond_c

    .line 461
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    const/4 v4, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 467
    :goto_c
    const/4 v4, 0x1

    return v4

    .line 465
    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 471
    .end local v37    # "_result":Landroid/net/NetworkStats;
    :sswitch_29
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    move-result-object v37

    .line 473
    .restart local v37    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    if-eqz v37, :cond_d

    .line 475
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    const/4 v4, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 481
    :goto_d
    const/4 v4, 0x1

    return v4

    .line 479
    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 485
    .end local v37    # "_result":Landroid/net/NetworkStats;
    :sswitch_2a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsDetail()Landroid/net/NetworkStats;

    move-result-object v37

    .line 487
    .restart local v37    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    if-eqz v37, :cond_e

    .line 489
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    const/4 v4, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 495
    :goto_e
    const/4 v4, 0x1

    return v4

    .line 493
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 499
    .end local v37    # "_result":Landroid/net/NetworkStats;
    :sswitch_2b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 502
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    move-result-object v37

    .line 503
    .restart local v37    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    if-eqz v37, :cond_f

    .line 505
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    const/4 v4, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 511
    :goto_f
    const/4 v4, 0x1

    return v4

    .line 509
    :cond_f
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 515
    .end local v10    # "_arg0":I
    .end local v37    # "_result":Landroid/net/NetworkStats;
    :sswitch_2c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 518
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v37

    .line 519
    .restart local v37    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    if-eqz v37, :cond_10

    .line 521
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    const/4 v4, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 527
    :goto_10
    const/4 v4, 0x1

    return v4

    .line 525
    :cond_10
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 531
    .end local v10    # "_arg0":I
    .end local v37    # "_result":Landroid/net/NetworkStats;
    :sswitch_2d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 535
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 536
    .local v22, "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    const/4 v4, 0x1

    return v4

    .line 542
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg1":J
    :sswitch_2e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 545
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    const/4 v4, 0x1

    return v4

    .line 551
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_2f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 555
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 556
    .restart local v22    # "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceAlert(Ljava/lang/String;J)V

    .line 557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    const/4 v4, 0x1

    return v4

    .line 562
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg1":J
    :sswitch_30
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 565
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceAlert(Ljava/lang/String;)V

    .line 566
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    const/4 v4, 0x1

    return v4

    .line 571
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_31
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 574
    .local v12, "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/os/INetworkManagementService$Stub;->setGlobalAlert(J)V

    .line 575
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    const/4 v4, 0x1

    return v4

    .line 580
    .end local v12    # "_arg0":J
    :sswitch_32
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 584
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    const/16 v27, 0x1

    .line 585
    .restart local v27    # "_arg1":Z
    :goto_11
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->setUidMeteredNetworkBlacklist(IZ)V

    .line 586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    const/4 v4, 0x1

    return v4

    .line 584
    .end local v27    # "_arg1":Z
    :cond_11
    const/16 v27, 0x0

    .restart local v27    # "_arg1":Z
    goto :goto_11

    .line 591
    .end local v10    # "_arg0":I
    .end local v27    # "_arg1":Z
    :sswitch_33
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 595
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    const/16 v27, 0x1

    .line 596
    .restart local v27    # "_arg1":Z
    :goto_12
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->setUidMeteredNetworkWhitelist(IZ)V

    .line 597
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    const/4 v4, 0x1

    return v4

    .line 595
    .end local v27    # "_arg1":Z
    :cond_12
    const/16 v27, 0x0

    .restart local v27    # "_arg1":Z
    goto :goto_12

    .line 602
    .end local v10    # "_arg0":I
    .end local v27    # "_arg1":Z
    :sswitch_34
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    const/16 v18, 0x1

    .line 605
    .restart local v18    # "_arg0":Z
    :goto_13
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->setDataSaverModeEnabled(Z)Z

    move-result v38

    .line 606
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    if-eqz v38, :cond_14

    const/4 v4, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    const/4 v4, 0x1

    return v4

    .line 604
    .end local v18    # "_arg0":Z
    .end local v38    # "_result":Z
    :cond_13
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Z
    goto :goto_13

    .line 607
    .restart local v38    # "_result":Z
    :cond_14
    const/4 v4, 0x0

    goto :goto_14

    .line 612
    .end local v18    # "_arg0":Z
    .end local v38    # "_result":Z
    :sswitch_35
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 616
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 617
    .restart local v21    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->setUidCleartextNetworkPolicy(II)V

    .line 618
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    const/4 v4, 0x1

    return v4

    .line 623
    .end local v10    # "_arg0":I
    .end local v21    # "_arg1":I
    :sswitch_36
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isBandwidthControlEnabled()Z

    move-result v38

    .line 625
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    if-eqz v38, :cond_15

    const/4 v4, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    const/4 v4, 0x1

    return v4

    .line 626
    :cond_15
    const/4 v4, 0x0

    goto :goto_15

    .line 631
    .end local v38    # "_result":Z
    :sswitch_37
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 635
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 637
    .restart local v21    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 638
    .local v31, "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v31

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addIdleTimer(Ljava/lang/String;II)V

    .line 639
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    const/4 v4, 0x1

    return v4

    .line 644
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":I
    .end local v31    # "_arg2":I
    :sswitch_38
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 647
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->removeIdleTimer(Ljava/lang/String;)V

    .line 648
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    const/4 v4, 0x1

    return v4

    .line 653
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_39
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 657
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v30

    .line 659
    .restart local v30    # "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 660
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v10, v1, v7}, Landroid/os/INetworkManagementService$Stub;->setDnsConfigurationForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    const/4 v4, 0x1

    return v4

    .line 666
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg0":I
    .end local v30    # "_arg1":[Ljava/lang/String;
    :sswitch_3a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    const/16 v18, 0x1

    .line 669
    .restart local v18    # "_arg0":Z
    :goto_16
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallEnabled(Z)V

    .line 670
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    const/4 v4, 0x1

    return v4

    .line 668
    .end local v18    # "_arg0":Z
    :cond_16
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Z
    goto :goto_16

    .line 675
    .end local v18    # "_arg0":Z
    :sswitch_3b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isFirewallEnabled()Z

    move-result v38

    .line 677
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    if-eqz v38, :cond_17

    const/4 v4, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    const/4 v4, 0x1

    return v4

    .line 678
    :cond_17
    const/4 v4, 0x0

    goto :goto_17

    .line 683
    .end local v38    # "_result":Z
    :sswitch_3c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 687
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18

    const/16 v27, 0x1

    .line 688
    .restart local v27    # "_arg1":Z
    :goto_18
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 689
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    const/4 v4, 0x1

    return v4

    .line 687
    .end local v27    # "_arg1":Z
    :cond_18
    const/16 v27, 0x0

    .restart local v27    # "_arg1":Z
    goto :goto_18

    .line 694
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":Z
    :sswitch_3d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 698
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 700
    .restart local v21    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 701
    .restart local v31    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v31

    invoke-virtual {v0, v10, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRule(III)V

    .line 702
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    const/4 v4, 0x1

    return v4

    .line 707
    .end local v10    # "_arg0":I
    .end local v21    # "_arg1":I
    .end local v31    # "_arg2":I
    :sswitch_3e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 711
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v28

    .line 713
    .local v28, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v33

    .line 714
    .local v33, "_arg2":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v33

    invoke-virtual {v0, v10, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRules(I[I[I)V

    .line 715
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    const/4 v4, 0x1

    return v4

    .line 720
    .end local v10    # "_arg0":I
    .end local v28    # "_arg1":[I
    .end local v33    # "_arg2":[I
    :sswitch_3f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 724
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    const/16 v27, 0x1

    .line 725
    .restart local v27    # "_arg1":Z
    :goto_19
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallChainEnabled(IZ)V

    .line 726
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    const/4 v4, 0x1

    return v4

    .line 724
    .end local v27    # "_arg1":Z
    :cond_19
    const/16 v27, 0x0

    .restart local v27    # "_arg1":Z
    goto :goto_19

    .line 731
    .end local v10    # "_arg0":I
    .end local v27    # "_arg1":Z
    :sswitch_40
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 735
    .restart local v10    # "_arg0":I
    sget-object v4, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [Landroid/net/UidRange;

    .line 736
    .local v29, "_arg1":[Landroid/net/UidRange;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->addVpnUidRanges(I[Landroid/net/UidRange;)V

    .line 737
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    const/4 v4, 0x1

    return v4

    .line 742
    .end local v10    # "_arg0":I
    .end local v29    # "_arg1":[Landroid/net/UidRange;
    :sswitch_41
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 744
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 746
    .restart local v10    # "_arg0":I
    sget-object v4, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [Landroid/net/UidRange;

    .line 747
    .restart local v29    # "_arg1":[Landroid/net/UidRange;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v10, v1}, Landroid/os/INetworkManagementService$Stub;->removeVpnUidRanges(I[Landroid/net/UidRange;)V

    .line 748
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    const/4 v4, 0x1

    return v4

    .line 753
    .end local v10    # "_arg0":I
    .end local v29    # "_arg1":[Landroid/net/UidRange;
    :sswitch_42
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 756
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->startClatd(Ljava/lang/String;)V

    .line 757
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    const/4 v4, 0x1

    return v4

    .line 762
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_43
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 765
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->stopClatd(Ljava/lang/String;)V

    .line 766
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    const/4 v4, 0x1

    return v4

    .line 771
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_44
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 774
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->isClatdStarted(Ljava/lang/String;)Z

    move-result v38

    .line 775
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    if-eqz v38, :cond_1a

    const/4 v4, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 777
    const/4 v4, 0x1

    return v4

    .line 776
    :cond_1a
    const/4 v4, 0x0

    goto :goto_1a

    .line 781
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v38    # "_result":Z
    :sswitch_45
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/INetworkActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkActivityListener;

    move-result-object v16

    .line 784
    .local v16, "_arg0":Landroid/os/INetworkActivityListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V

    .line 785
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    const/4 v4, 0x1

    return v4

    .line 790
    .end local v16    # "_arg0":Landroid/os/INetworkActivityListener;
    :sswitch_46
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/INetworkActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkActivityListener;

    move-result-object v16

    .line 793
    .restart local v16    # "_arg0":Landroid/os/INetworkActivityListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->unregisterNetworkActivityListener(Landroid/os/INetworkActivityListener;)V

    .line 794
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    const/4 v4, 0x1

    return v4

    .line 799
    .end local v16    # "_arg0":Landroid/os/INetworkActivityListener;
    :sswitch_47
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 800
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isNetworkActive()Z

    move-result v38

    .line 801
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    if-eqz v38, :cond_1b

    const/4 v4, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 803
    const/4 v4, 0x1

    return v4

    .line 802
    :cond_1b
    const/4 v4, 0x0

    goto :goto_1b

    .line 807
    .end local v38    # "_result":Z
    :sswitch_48
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 809
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 811
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 812
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v6}, Landroid/os/INetworkManagementService$Stub;->createPhysicalNetwork(ILjava/lang/String;)V

    .line 813
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    const/4 v4, 0x1

    return v4

    .line 818
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg0":I
    :sswitch_49
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 822
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c

    const/16 v27, 0x1

    .line 824
    .restart local v27    # "_arg1":Z
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v32, 0x1

    .line 825
    .local v32, "_arg2":Z
    :goto_1d
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v32

    invoke-virtual {v0, v10, v1, v2}, Landroid/os/INetworkManagementService$Stub;->createVirtualNetwork(IZZ)V

    .line 826
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    const/4 v4, 0x1

    return v4

    .line 822
    .end local v27    # "_arg1":Z
    .end local v32    # "_arg2":Z
    :cond_1c
    const/16 v27, 0x0

    .restart local v27    # "_arg1":Z
    goto :goto_1c

    .line 824
    :cond_1d
    const/16 v32, 0x0

    .restart local v32    # "_arg2":Z
    goto :goto_1d

    .line 831
    .end local v10    # "_arg0":I
    .end local v27    # "_arg1":Z
    .end local v32    # "_arg2":Z
    :sswitch_4a
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 834
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/os/INetworkManagementService$Stub;->removeNetwork(I)V

    .line 835
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    const/4 v4, 0x1

    return v4

    .line 840
    .end local v10    # "_arg0":I
    :sswitch_4b
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 844
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 845
    .restart local v21    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->addInterfaceToNetwork(Ljava/lang/String;I)V

    .line 846
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    const/4 v4, 0x1

    return v4

    .line 851
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":I
    :sswitch_4c
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 853
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 855
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 856
    .restart local v21    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceFromNetwork(Ljava/lang/String;I)V

    .line 857
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    const/4 v4, 0x1

    return v4

    .line 862
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":I
    :sswitch_4d
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 864
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 866
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1e

    .line 867
    sget-object v4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/net/RouteInfo;

    .line 873
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 874
    .restart local v31    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v31

    invoke-virtual {v0, v10, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V

    .line 875
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    const/4 v4, 0x1

    return v4

    .line 870
    .end local v31    # "_arg2":I
    :cond_1e
    const/16 v25, 0x0

    .restart local v25    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_1e

    .line 880
    .end local v10    # "_arg0":I
    .end local v25    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_4e
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 883
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/os/INetworkManagementService$Stub;->setDefaultNetId(I)V

    .line 884
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    const/4 v4, 0x1

    return v4

    .line 889
    .end local v10    # "_arg0":I
    :sswitch_4f
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->clearDefaultNetId()V

    .line 891
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    const/4 v4, 0x1

    return v4

    .line 896
    :sswitch_50
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 898
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 900
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 901
    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v6}, Landroid/os/INetworkManagementService$Stub;->setNetworkPermission(ILjava/lang/String;)V

    .line 902
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    const/4 v4, 0x1

    return v4

    .line 907
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg0":I
    :sswitch_51
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 909
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 911
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v28

    .line 912
    .restart local v28    # "_arg1":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->setPermission(Ljava/lang/String;[I)V

    .line 913
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    const/4 v4, 0x1

    return v4

    .line 918
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v28    # "_arg1":[I
    :sswitch_52
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v19

    .line 921
    .local v19, "_arg0":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->clearPermission([I)V

    .line 922
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 923
    const/4 v4, 0x1

    return v4

    .line 927
    .end local v19    # "_arg0":[I
    :sswitch_53
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 929
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 930
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/os/INetworkManagementService$Stub;->allowProtect(I)V

    .line 931
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    const/4 v4, 0x1

    return v4

    .line 936
    .end local v10    # "_arg0":I
    :sswitch_54
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 938
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 939
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/os/INetworkManagementService$Stub;->denyProtect(I)V

    .line 940
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 941
    const/4 v4, 0x1

    return v4

    .line 945
    .end local v10    # "_arg0":I
    :sswitch_55
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 949
    .restart local v5    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v26

    .line 950
    .local v26, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Landroid/os/INetworkManagementService$Stub;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    .line 951
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    const/4 v4, 0x1

    return v4

    .line 956
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v26    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :sswitch_56
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 958
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 959
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    .line 960
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    const/4 v4, 0x1

    return v4

    .line 965
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_57
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    sget-object v4, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .line 968
    .local v17, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->removeRoutesFromLocalNetwork(Ljava/util/List;)I

    move-result v34

    .line 969
    .local v34, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 971
    const/4 v4, 0x1

    return v4

    .line 975
    .end local v17    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    .end local v34    # "_result":I
    :sswitch_58
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 977
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    const/16 v18, 0x1

    .line 979
    .restart local v18    # "_arg0":Z
    :goto_1f
    sget-object v4, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [Landroid/net/UidRange;

    .line 980
    .restart local v29    # "_arg1":[Landroid/net/UidRange;
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setAllowOnlyVpnForUids(Z[Landroid/net/UidRange;)V

    .line 981
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    const/4 v4, 0x1

    return v4

    .line 977
    .end local v18    # "_arg0":Z
    .end local v29    # "_arg1":[Landroid/net/UidRange;
    :cond_1f
    const/16 v18, 0x0

    .restart local v18    # "_arg0":Z
    goto :goto_1f

    .line 986
    .end local v18    # "_arg0":Z
    :sswitch_59
    const-string/jumbo v4, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 988
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 989
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/os/INetworkManagementService$Stub;->isNetworkRestricted(I)Z

    move-result v38

    .line 990
    .restart local v38    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    if-eqz v38, :cond_20

    const/4 v4, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 992
    const/4 v4, 0x1

    return v4

    .line 991
    :cond_20
    const/4 v4, 0x0

    goto :goto_20

    .line 41
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
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
