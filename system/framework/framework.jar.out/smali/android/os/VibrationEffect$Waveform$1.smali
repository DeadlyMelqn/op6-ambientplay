.class final Landroid/os/VibrationEffect$Waveform$1;
.super Ljava/lang/Object;
.source "VibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect$Waveform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/os/VibrationEffect$Waveform;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/VibrationEffect$Waveform;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 406
    new-instance v0, Landroid/os/VibrationEffect$Waveform;

    invoke-direct {v0, p1}, Landroid/os/VibrationEffect$Waveform;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 402
    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$Waveform$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/VibrationEffect$Waveform;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/VibrationEffect$Waveform;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 410
    new-array v0, p1, [Landroid/os/VibrationEffect$Waveform;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$Waveform$1;->newArray(I)[Landroid/os/VibrationEffect$Waveform;

    move-result-object v0

    return-object v0
.end method
