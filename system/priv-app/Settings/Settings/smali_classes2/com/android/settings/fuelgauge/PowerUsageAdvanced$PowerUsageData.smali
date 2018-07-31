.class Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;
.super Ljava/lang/Object;
.source "PowerUsageAdvanced.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageAdvanced;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PowerUsageData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData$UsageType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;",
        ">;"
    }
.end annotation


# instance fields
.field public iconColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public percentage:D

.field public summary:Ljava/lang/CharSequence;

.field public titleResId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field public totalPowerMah:D

.field public totalUsageTimeMs:J

.field public usageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field public usageType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "usageType"    # I

    .prologue
    .line 386
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;-><init>(ID)V

    .line 387
    return-void
.end method

.method public constructor <init>(ID)V
    .locals 2
    .param p1, "usageType"    # I
    .param p2, "totalPower"    # D

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput p1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->usageType:I

    .line 391
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->totalPowerMah:D

    .line 392
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->totalUsageTimeMs:J

    .line 393
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->getTitleResId(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->titleResId:I

    .line 394
    iput-wide p2, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->totalPowerMah:D

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->usageList:Ljava/util/List;

    .line 396
    return-void
.end method

.method private getTitleResId(I)I
    .locals 1
    .param p1, "usageType"    # I

    .prologue
    .line 399
    packed-switch p1, :pswitch_data_0

    .line 418
    const v0, 0x7f0f124e

    return v0

    .line 401
    :pswitch_0
    const v0, 0x7f0f0c72

    return v0

    .line 403
    :pswitch_1
    const v0, 0x7f0f0c74

    return v0

    .line 405
    :pswitch_2
    const v0, 0x7f0f1250

    return v0

    .line 407
    :pswitch_3
    const v0, 0x7f0f0c73

    return v0

    .line 409
    :pswitch_4
    const v0, 0x7f0f1251

    return v0

    .line 411
    :pswitch_5
    const v0, 0x7f0f0c76

    return v0

    .line 413
    :pswitch_6
    const v0, 0x7f0f0c77

    return v0

    .line 415
    :pswitch_7
    const v0, 0x7f0f0c78

    return v0

    .line 399
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;)I
    .locals 6
    .param p1, "powerUsageData"    # Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 424
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->totalPowerMah:D

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->totalPowerMah:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    .line 425
    .local v0, "diff":I
    if-eqz v0, :cond_0

    .end local v0    # "diff":I
    :goto_0
    return v0

    .restart local v0    # "diff":I
    :cond_0
    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->usageType:I

    iget v2, p1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->usageType:I

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 422
    check-cast p1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->compareTo(Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;)I

    move-result v0

    return v0
.end method
