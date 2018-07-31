.class public abstract Landroid/net/INetworkScoreService$Stub;
.super Landroid/os/Binder;
.source "INetworkScoreService.java"

# interfaces
.implements Landroid/net/INetworkScoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkScoreService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkScoreService"

.field static final TRANSACTION_clearScores:I = 0x2

.field static final TRANSACTION_disableScoring:I = 0x4

.field static final TRANSACTION_getActiveScorer:I = 0xa

.field static final TRANSACTION_getActiveScorerPackage:I = 0x9

.field static final TRANSACTION_getAllValidScorers:I = 0xb

.field static final TRANSACTION_isCallerActiveScorer:I = 0x8

.field static final TRANSACTION_registerNetworkScoreCache:I = 0x5

.field static final TRANSACTION_requestScores:I = 0x7

.field static final TRANSACTION_setActiveScorer:I = 0x3

.field static final TRANSACTION_unregisterNetworkScoreCache:I = 0x6

.field static final TRANSACTION_updateScores:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "android.net.INetworkScoreService"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkScoreService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkScoreService;
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
    const-string/jumbo v1, "android.net.INetworkScoreService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetworkScoreService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/net/INetworkScoreService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/INetworkScoreService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkScoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    .line 46
    :sswitch_0
    const-string/jumbo v10, "android.net.INetworkScoreService"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v10, 0x1

    return v10

    .line 51
    :sswitch_1
    const-string/jumbo v10, "android.net.INetworkScoreService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    sget-object v10, Landroid/net/ScoredNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/ScoredNetwork;

    .line 54
    .local v3, "_arg0":[Landroid/net/ScoredNetwork;
    invoke-virtual {p0, v3}, Landroid/net/INetworkScoreService$Stub;->updateScores([Landroid/net/ScoredNetwork;)Z

    move-result v9

    .line 55
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v9, :cond_0

    const/4 v10, 0x1

    :goto_0
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    const/4 v10, 0x1

    return v10

    .line 56
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 61
    .end local v3    # "_arg0":[Landroid/net/ScoredNetwork;
    .end local v9    # "_result":Z
    :sswitch_2
    const-string/jumbo v10, "android.net.INetworkScoreService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Landroid/net/INetworkScoreService$Stub;->clearScores()Z

    move-result v9

    .line 63
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v9, :cond_1

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    const/4 v10, 0x1

    return v10

    .line 64
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 69
    .end local v9    # "_result":Z
    :sswitch_3
    const-string/jumbo v10, "android.net.INetworkScoreService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/INetworkScoreService$Stub;->setActiveScorer(Ljava/lang/String;)Z

    move-result v9

    .line 73
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v9, :cond_2

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    const/4 v10, 0x1

    return v10

    .line 74
    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .line 79
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Z
    :sswitch_4
    const-string/jumbo v10, "android.net.INetworkScoreService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/net/INetworkScoreService$Stub;->disableScoring()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    const/4 v10, 0x1

    return v10

    .line 86
    :sswitch_5
    const-string/jumbo v10, "android.net.INetworkScoreService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 90
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/net/INetworkScoreCache$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkScoreCache;

    move-result-object v4

    .line 92
    .local v4, "_arg1":Landroid/net/INetworkScoreCache;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 93
    .local v5, "_arg2":I
    invoke-virtual {p0, v0, v4, v5}, Landroid/net/INetworkScoreService$Stub;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    const/4 v10, 0x1

    return v10

    .line 99
    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":Landroid/net/INetworkScoreCache;
    .end local v5    # "_arg2":I
    :sswitch_6
    const-string/jumbo v10, "android.net.INetworkScoreService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/net/INetworkScoreCache$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkScoreCache;

    move-result-object v4

    .line 104
    .restart local v4    # "_arg1":Landroid/net/INetworkScoreCache;
    invoke-virtual {p0, v0, v4}, Landroid/net/INetworkScoreService$Stub;->unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    const/4 v10, 0x1

    return v10

    .line 110
    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":Landroid/net/INetworkScoreCache;
    :sswitch_7
    const-string/jumbo v10, "android.net.INetworkScoreService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    sget-object v10, Landroid/net/NetworkKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/NetworkKey;

    .line 113
    .local v2, "_arg0":[Landroid/net/NetworkKey;
    invoke-virtual {p0, v2}, Landroid/net/INetworkScoreService$Stub;->requestScores([Landroid/net/NetworkKey;)Z

    move-result v9

    .line 114
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v9, :cond_3

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    const/4 v10, 0x1

    return v10

    .line 115
    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    .line 120
    .end local v2    # "_arg0":[Landroid/net/NetworkKey;
    .end local v9    # "_result":Z
    :sswitch_8
    const-string/jumbo v10, "android.net.INetworkScoreService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 123
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/INetworkScoreService$Stub;->isCallerActiveScorer(I)Z

    move-result v9

    .line 124
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v9, :cond_4

    const/4 v10, 0x1

    :goto_4
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    const/4 v10, 0x1

    return v10

    .line 125
    :cond_4
    const/4 v10, 0x0

    goto :goto_4

    .line 130
    .end local v0    # "_arg0":I
    .end local v9    # "_result":Z
    :sswitch_9
    const-string/jumbo v10, "android.net.INetworkScoreService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/net/INetworkScoreService$Stub;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v7

    .line 132
    .local v7, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    const/4 v10, 0x1

    return v10

    .line 138
    .end local v7    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v10, "android.net.INetworkScoreService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/net/INetworkScoreService$Stub;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v6

    .line 140
    .local v6, "_result":Landroid/net/NetworkScorerAppData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v6, :cond_5

    .line 142
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    const/4 v10, 0x1

    invoke-virtual {v6, p3, v10}, Landroid/net/NetworkScorerAppData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 148
    :goto_5
    const/4 v10, 0x1

    return v10

    .line 146
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 152
    .end local v6    # "_result":Landroid/net/NetworkScorerAppData;
    :sswitch_b
    const-string/jumbo v10, "android.net.INetworkScoreService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Landroid/net/INetworkScoreService$Stub;->getAllValidScorers()Ljava/util/List;

    move-result-object v8

    .line 154
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkScorerAppData;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 156
    const/4 v10, 0x1

    return v10

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
