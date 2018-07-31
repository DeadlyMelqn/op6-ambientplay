.class public final Landroid/bluetooth/le/PeriodicAdvertisingParameters;
.super Ljava/lang/Object;
.source "PeriodicAdvertisingParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/PeriodicAdvertisingParameters$1;,
        Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/le/PeriodicAdvertisingParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTERVAL_MAX:I = 0xffef

.field private static final INTERVAL_MIN:I = 0x50


# instance fields
.field private final includeTxPower:Z

.field private final interval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$1;

    invoke-direct {v0}, Landroid/bluetooth/le/PeriodicAdvertisingParameters$1;-><init>()V

    .line 68
    sput-object v0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->includeTxPower:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->interval:I

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/le/PeriodicAdvertisingParameters;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "-this1"    # Landroid/bluetooth/le/PeriodicAdvertisingParameters;

    .prologue
    invoke-direct {p0, p1}, Landroid/bluetooth/le/PeriodicAdvertisingParameters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(ZI)V
    .locals 0
    .param p1, "includeTxPower"    # Z
    .param p2, "interval"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->includeTxPower:Z

    .line 37
    iput p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->interval:I

    .line 38
    return-void
.end method

.method synthetic constructor <init>(ZILandroid/bluetooth/le/PeriodicAdvertisingParameters;)V
    .locals 0
    .param p1, "includeTxPower"    # Z
    .param p2, "interval"    # I
    .param p3, "-this2"    # Landroid/bluetooth/le/PeriodicAdvertisingParameters;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/PeriodicAdvertisingParameters;-><init>(ZI)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getIncludeTxPower()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->includeTxPower:Z

    return v0
.end method

.method public getInterval()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->interval:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->includeTxPower:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->interval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
