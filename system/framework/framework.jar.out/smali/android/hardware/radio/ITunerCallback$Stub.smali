.class public abstract Landroid/hardware/radio/ITunerCallback$Stub;
.super Landroid/os/Binder;
.source "ITunerCallback.java"

# interfaces
.implements Landroid/hardware/radio/ITunerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ITunerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ITunerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.radio.ITunerCallback"

.field static final TRANSACTION_onAntennaState:I = 0x6

.field static final TRANSACTION_onBackgroundScanAvailabilityChange:I = 0x7

.field static final TRANSACTION_onBackgroundScanComplete:I = 0x8

.field static final TRANSACTION_onConfigurationChanged:I = 0x2

.field static final TRANSACTION_onCurrentProgramInfoChanged:I = 0x3

.field static final TRANSACTION_onEmergencyAnnouncement:I = 0x5

.field static final TRANSACTION_onError:I = 0x1

.field static final TRANSACTION_onProgramListChanged:I = 0x9

.field static final TRANSACTION_onTrafficAnnouncement:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.hardware.radio.ITunerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/ITunerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ITunerCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "android.hardware.radio.ITunerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/radio/ITunerCallback;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/hardware/radio/ITunerCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/radio/ITunerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/ITunerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v5, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 43
    :sswitch_0
    const-string/jumbo v4, "android.hardware.radio.ITunerCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v5

    .line 48
    :sswitch_1
    const-string/jumbo v4, "android.hardware.radio.ITunerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/hardware/radio/ITunerCallback$Stub;->onError(I)V

    .line 52
    return v5

    .line 56
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string/jumbo v4, "android.hardware.radio.ITunerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    sget-object v4, Landroid/hardware/radio/RadioManager$BandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioManager$BandConfig;

    .line 64
    :goto_0
    invoke-virtual {p0, v1}, Landroid/hardware/radio/ITunerCallback$Stub;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    .line 65
    return v5

    .line 62
    :cond_0
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/hardware/radio/RadioManager$BandConfig;
    goto :goto_0

    .line 69
    .end local v1    # "_arg0":Landroid/hardware/radio/RadioManager$BandConfig;
    :sswitch_3
    const-string/jumbo v4, "android.hardware.radio.ITunerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    sget-object v4, Landroid/hardware/radio/RadioManager$ProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 77
    :goto_1
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITunerCallback$Stub;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 78
    return v5

    .line 75
    :cond_1
    const/4 v2, 0x0

    .local v2, "_arg0":Landroid/hardware/radio/RadioManager$ProgramInfo;
    goto :goto_1

    .line 82
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioManager$ProgramInfo;
    :sswitch_4
    const-string/jumbo v4, "android.hardware.radio.ITunerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    .line 85
    .local v3, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v3}, Landroid/hardware/radio/ITunerCallback$Stub;->onTrafficAnnouncement(Z)V

    .line 86
    return v5

    .line 84
    .end local v3    # "_arg0":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Z
    goto :goto_2

    .line 90
    .end local v3    # "_arg0":Z
    :sswitch_5
    const-string/jumbo v4, "android.hardware.radio.ITunerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    .line 93
    .restart local v3    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v3}, Landroid/hardware/radio/ITunerCallback$Stub;->onEmergencyAnnouncement(Z)V

    .line 94
    return v5

    .line 92
    .end local v3    # "_arg0":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Z
    goto :goto_3

    .line 98
    .end local v3    # "_arg0":Z
    :sswitch_6
    const-string/jumbo v4, "android.hardware.radio.ITunerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x1

    .line 101
    .restart local v3    # "_arg0":Z
    :goto_4
    invoke-virtual {p0, v3}, Landroid/hardware/radio/ITunerCallback$Stub;->onAntennaState(Z)V

    .line 102
    return v5

    .line 100
    .end local v3    # "_arg0":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Z
    goto :goto_4

    .line 106
    .end local v3    # "_arg0":Z
    :sswitch_7
    const-string/jumbo v4, "android.hardware.radio.ITunerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v3, 0x1

    .line 109
    .restart local v3    # "_arg0":Z
    :goto_5
    invoke-virtual {p0, v3}, Landroid/hardware/radio/ITunerCallback$Stub;->onBackgroundScanAvailabilityChange(Z)V

    .line 110
    return v5

    .line 108
    .end local v3    # "_arg0":Z
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Z
    goto :goto_5

    .line 114
    .end local v3    # "_arg0":Z
    :sswitch_8
    const-string/jumbo v4, "android.hardware.radio.ITunerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/hardware/radio/ITunerCallback$Stub;->onBackgroundScanComplete()V

    .line 116
    return v5

    .line 120
    :sswitch_9
    const-string/jumbo v4, "android.hardware.radio.ITunerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Landroid/hardware/radio/ITunerCallback$Stub;->onProgramListChanged()V

    .line 122
    return v5

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
