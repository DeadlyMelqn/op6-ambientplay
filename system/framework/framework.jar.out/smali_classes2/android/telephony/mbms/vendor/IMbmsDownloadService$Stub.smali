.class public abstract Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;
.super Landroid/os/Binder;
.source "IMbmsDownloadService.java"

# interfaces
.implements Landroid/telephony/mbms/vendor/IMbmsDownloadService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/vendor/IMbmsDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.telephony.mbms.vendor.IMbmsDownloadService"

.field static final TRANSACTION_cancelDownload:I = 0x8

.field static final TRANSACTION_dispose:I = 0xb

.field static final TRANSACTION_download:I = 0x4

.field static final TRANSACTION_getDownloadStatus:I = 0x9

.field static final TRANSACTION_initialize:I = 0x1

.field static final TRANSACTION_listPendingDownloads:I = 0x7

.field static final TRANSACTION_registerStateCallback:I = 0x5

.field static final TRANSACTION_requestUpdateFileServices:I = 0x2

.field static final TRANSACTION_resetDownloadKnowledge:I = 0xa

.field static final TRANSACTION_setTempFileRootDirectory:I = 0x3

.field static final TRANSACTION_unregisterStateCallback:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/vendor/IMbmsDownloadService;
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
    const-string/jumbo v1, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    .line 45
    :sswitch_0
    const-string/jumbo v10, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v10, 0x1

    return v10

    .line 50
    :sswitch_1
    const-string/jumbo v10, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

    move-result-object v4

    .line 55
    .local v4, "_arg1":Landroid/telephony/mbms/IMbmsDownloadSessionCallback;
    invoke-virtual {p0, v0, v4}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->initialize(ILandroid/telephony/mbms/IMbmsDownloadSessionCallback;)I

    move-result v8

    .line 56
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    const/4 v10, 0x1

    return v10

    .line 62
    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":Landroid/telephony/mbms/IMbmsDownloadSessionCallback;
    .end local v8    # "_result":I
    :sswitch_2
    const-string/jumbo v10, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 67
    .local v6, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v6}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->requestUpdateFileServices(ILjava/util/List;)I

    move-result v8

    .line 68
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    const/4 v10, 0x1

    return v10

    .line 74
    .end local v0    # "_arg0":I
    .end local v6    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "_result":I
    :sswitch_3
    const-string/jumbo v10, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v5}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->setTempFileRootDirectory(ILjava/lang/String;)I

    move-result v8

    .line 80
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    const/4 v10, 0x1

    return v10

    .line 86
    .end local v0    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":I
    :sswitch_4
    const-string/jumbo v10, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    .line 89
    sget-object v10, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest;

    .line 94
    :goto_0
    invoke-virtual {p0, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->download(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v8

    .line 95
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    const/4 v10, 0x1

    return v10

    .line 92
    .end local v8    # "_result":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/telephony/mbms/DownloadRequest;
    goto :goto_0

    .line 101
    .end local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    :sswitch_5
    const-string/jumbo v10, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    .line 104
    sget-object v10, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest;

    .line 110
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/mbms/IDownloadStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IDownloadStateCallback;

    move-result-object v3

    .line 112
    .local v3, "_arg1":Landroid/telephony/mbms/IDownloadStateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 113
    .local v7, "_arg2":I
    invoke-virtual {p0, v1, v3, v7}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->registerStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStateCallback;I)I

    move-result v8

    .line 114
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    const/4 v10, 0x1

    return v10

    .line 107
    .end local v3    # "_arg1":Landroid/telephony/mbms/IDownloadStateCallback;
    .end local v7    # "_arg2":I
    .end local v8    # "_result":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    goto :goto_1

    .line 120
    .end local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    :sswitch_6
    const-string/jumbo v10, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    .line 123
    sget-object v10, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest;

    .line 129
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/mbms/IDownloadStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IDownloadStateCallback;

    move-result-object v3

    .line 130
    .restart local v3    # "_arg1":Landroid/telephony/mbms/IDownloadStateCallback;
    invoke-virtual {p0, v1, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->unregisterStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStateCallback;)I

    move-result v8

    .line 131
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    const/4 v10, 0x1

    return v10

    .line 126
    .end local v3    # "_arg1":Landroid/telephony/mbms/IDownloadStateCallback;
    .end local v8    # "_result":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    goto :goto_2

    .line 137
    .end local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    :sswitch_7
    const-string/jumbo v10, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 140
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->listPendingDownloads(I)Ljava/util/List;

    move-result-object v9

    .line 141
    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/mbms/DownloadRequest;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 143
    const/4 v10, 0x1

    return v10

    .line 147
    .end local v0    # "_arg0":I
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/mbms/DownloadRequest;>;"
    :sswitch_8
    const-string/jumbo v10, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    .line 150
    sget-object v10, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest;

    .line 155
    :goto_3
    invoke-virtual {p0, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->cancelDownload(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v8

    .line 156
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v10, 0x1

    return v10

    .line 153
    .end local v8    # "_result":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    goto :goto_3

    .line 162
    .end local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    :sswitch_9
    const-string/jumbo v10, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    .line 165
    sget-object v10, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest;

    .line 171
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5

    .line 172
    sget-object v10, Landroid/telephony/mbms/FileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/FileInfo;

    .line 177
    :goto_5
    invoke-virtual {p0, v1, v2}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->getDownloadStatus(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;)I

    move-result v8

    .line 178
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/4 v10, 0x1

    return v10

    .line 168
    .end local v8    # "_result":I
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    goto :goto_4

    .line 175
    .end local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    :cond_5
    const/4 v2, 0x0

    .local v2, "_arg1":Landroid/telephony/mbms/FileInfo;
    goto :goto_5

    .line 184
    .end local v2    # "_arg1":Landroid/telephony/mbms/FileInfo;
    :sswitch_a
    const-string/jumbo v10, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_6

    .line 187
    sget-object v10, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest;

    .line 192
    :goto_6
    invoke-virtual {p0, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->resetDownloadKnowledge(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v8

    .line 193
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v10, 0x1

    return v10

    .line 190
    .end local v8    # "_result":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    goto :goto_6

    .line 199
    .end local v1    # "_arg0":Landroid/telephony/mbms/DownloadRequest;
    :sswitch_b
    const-string/jumbo v10, "android.telephony.mbms.vendor.IMbmsDownloadService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 202
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->dispose(I)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    const/4 v10, 0x1

    return v10

    .line 41
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
