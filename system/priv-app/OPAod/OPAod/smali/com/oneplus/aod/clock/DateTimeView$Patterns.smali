.class public final Lcom/oneplus/aod/clock/DateTimeView$Patterns;
.super Ljava/lang/Object;
.source "DateTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/clock/DateTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Patterns"
.end annotation


# static fields
.field static cacheKey:Ljava/lang/String;

.field static clockView12:Ljava/lang/String;

.field static clockView24:Ljava/lang/String;

.field static dateView:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static update(Landroid/content/Context;ZI)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hasAlarm"    # Z
    .param p2, "clockStyle"    # I

    .prologue
    const/16 v9, 0x3a

    const/16 v8, 0x20

    .line 276
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 277
    .local v3, "locale":Ljava/util/Locale;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 278
    .local v4, "res":Landroid/content/res/Resources;
    if-eqz p1, :cond_2

    .line 279
    const v5, 0x7f0d001e

    .line 278
    :goto_0
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "dateViewSkel":Ljava/lang/String;
    const v5, 0x7f0d001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "clockView12Skel":Ljava/lang/String;
    const v5, 0x7f0d0020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "clockView24Skel":Ljava/lang/String;
    invoke-static {v3, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/oneplus/aod/clock/DateTimeView$Patterns;->dateView:Ljava/lang/String;

    .line 292
    invoke-static {v3, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/oneplus/aod/clock/DateTimeView$Patterns;->clockView12:Ljava/lang/String;

    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 296
    const-string/jumbo v5, "a"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 297
    sget-object v5, Lcom/oneplus/aod/clock/DateTimeView$Patterns;->clockView12:Ljava/lang/String;

    const-string/jumbo v6, "a"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/oneplus/aod/clock/DateTimeView$Patterns;->clockView12:Ljava/lang/String;

    .line 300
    :cond_0
    invoke-static {v3, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/oneplus/aod/clock/DateTimeView$Patterns;->clockView24:Ljava/lang/String;

    .line 301
    const-string/jumbo v5, "DateTimeView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateClockPattern: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    sget v5, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_DIGITAL:I

    if-eq p2, v5, :cond_1

    .line 304
    sget-object v5, Lcom/oneplus/aod/clock/DateTimeView$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/oneplus/aod/clock/DateTimeView$Patterns;->clockView24:Ljava/lang/String;

    .line 305
    sget-object v5, Lcom/oneplus/aod/clock/DateTimeView$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/oneplus/aod/clock/DateTimeView$Patterns;->clockView12:Ljava/lang/String;

    .line 308
    :cond_1
    return-void

    .line 280
    .end local v0    # "clockView12Skel":Ljava/lang/String;
    .end local v1    # "clockView24Skel":Ljava/lang/String;
    .end local v2    # "dateViewSkel":Ljava/lang/String;
    :cond_2
    const v5, 0x7f0d001d

    goto :goto_0
.end method
