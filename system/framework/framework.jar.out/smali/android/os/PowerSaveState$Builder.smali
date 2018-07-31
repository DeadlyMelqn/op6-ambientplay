.class public final Landroid/os/PowerSaveState$Builder;
.super Ljava/lang/Object;
.source "PowerSaveState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerSaveState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBatterySaverEnabled:Z

.field private mBrightnessFactor:F

.field private mGlobalBatterySaverEnabled:Z

.field private mGpsMode:I


# direct methods
.method static synthetic -get0(Landroid/os/PowerSaveState$Builder;)Z
    .locals 1
    .param p0, "-this"    # Landroid/os/PowerSaveState$Builder;

    .prologue
    iget-boolean v0, p0, Landroid/os/PowerSaveState$Builder;->mBatterySaverEnabled:Z

    return v0
.end method

.method static synthetic -get1(Landroid/os/PowerSaveState$Builder;)F
    .locals 1
    .param p0, "-this"    # Landroid/os/PowerSaveState$Builder;

    .prologue
    iget v0, p0, Landroid/os/PowerSaveState$Builder;->mBrightnessFactor:F

    return v0
.end method

.method static synthetic -get2(Landroid/os/PowerSaveState$Builder;)Z
    .locals 1
    .param p0, "-this"    # Landroid/os/PowerSaveState$Builder;

    .prologue
    iget-boolean v0, p0, Landroid/os/PowerSaveState$Builder;->mGlobalBatterySaverEnabled:Z

    return v0
.end method

.method static synthetic -get3(Landroid/os/PowerSaveState$Builder;)I
    .locals 1
    .param p0, "-this"    # Landroid/os/PowerSaveState$Builder;

    .prologue
    iget v0, p0, Landroid/os/PowerSaveState$Builder;->mGpsMode:I

    return v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v0, p0, Landroid/os/PowerSaveState$Builder;->mBatterySaverEnabled:Z

    .line 70
    iput-boolean v0, p0, Landroid/os/PowerSaveState$Builder;->mGlobalBatterySaverEnabled:Z

    .line 71
    iput v0, p0, Landroid/os/PowerSaveState$Builder;->mGpsMode:I

    .line 72
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/os/PowerSaveState$Builder;->mBrightnessFactor:F

    .line 74
    return-void
.end method


# virtual methods
.method public build()Landroid/os/PowerSaveState;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Landroid/os/PowerSaveState;

    invoke-direct {v0, p0}, Landroid/os/PowerSaveState;-><init>(Landroid/os/PowerSaveState$Builder;)V

    return-object v0
.end method

.method public setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Landroid/os/PowerSaveState$Builder;->mBatterySaverEnabled:Z

    .line 78
    return-object p0
.end method

.method public setBrightnessFactor(F)Landroid/os/PowerSaveState$Builder;
    .locals 0
    .param p1, "factor"    # F

    .prologue
    .line 92
    iput p1, p0, Landroid/os/PowerSaveState$Builder;->mBrightnessFactor:F

    .line 93
    return-object p0
.end method

.method public setGlobalBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Landroid/os/PowerSaveState$Builder;->mGlobalBatterySaverEnabled:Z

    .line 83
    return-object p0
.end method

.method public setGpsMode(I)Landroid/os/PowerSaveState$Builder;
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 87
    iput p1, p0, Landroid/os/PowerSaveState$Builder;->mGpsMode:I

    .line 88
    return-object p0
.end method
