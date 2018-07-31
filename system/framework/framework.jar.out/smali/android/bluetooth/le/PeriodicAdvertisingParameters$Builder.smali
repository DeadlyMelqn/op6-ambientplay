.class public final Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;
.super Ljava/lang/Object;
.source "PeriodicAdvertisingParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/PeriodicAdvertisingParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private includeTxPower:Z

.field private interval:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->includeTxPower:Z

    .line 83
    const v0, 0xffef

    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->interval:I

    .line 81
    return-void
.end method


# virtual methods
.method public build()Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .locals 4

    .prologue
    .line 113
    new-instance v0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;

    iget-boolean v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->includeTxPower:Z

    iget v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->interval:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/le/PeriodicAdvertisingParameters;-><init>(ZILandroid/bluetooth/le/PeriodicAdvertisingParameters;)V

    return-object v0
.end method

.method public setIncludeTxPower(Z)Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;
    .locals 0
    .param p1, "includeTxPower"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->includeTxPower:Z

    .line 91
    return-object p0
.end method

.method public setInterval(I)Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;
    .locals 2
    .param p1, "interval"    # I

    .prologue
    .line 101
    const/16 v0, 0x50

    if-lt p1, v0, :cond_0

    const v0, 0xffef

    if-le p1, v0, :cond_1

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid interval (must be 80-65519)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    iput p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->interval:I

    .line 106
    return-object p0
.end method
