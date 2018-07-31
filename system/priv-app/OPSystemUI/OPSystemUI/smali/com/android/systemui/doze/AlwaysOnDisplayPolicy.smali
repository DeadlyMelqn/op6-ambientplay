.class public Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;
.super Ljava/lang/Object;
.source "AlwaysOnDisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;
    }
.end annotation


# instance fields
.field public dimmingScrimArray:[I

.field private final mContext:Landroid/content/Context;

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mSettingsObserver:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;

.field public proxCooldownPeriodMs:J

.field public proxCooldownTriggerMs:J

.field public proxScreenOffDelayMs:J

.field public screenBrightnessArray:[I


# direct methods
.method static synthetic -com_android_systemui_doze_AlwaysOnDisplayPolicy-mthref-0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -com_android_systemui_doze_AlwaysOnDisplayPolicy-mthref-1(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 110
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -get0(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/util/KeyValueListParser;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mParser:Landroid/util/KeyValueListParser;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Ljava/lang/String;[I)[I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultArray"    # [I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->parseIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mContext:Landroid/content/Context;

    .line 100
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mParser:Landroid/util/KeyValueListParser;

    .line 101
    new-instance v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;-><init>(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mSettingsObserver:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mSettingsObserver:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->observe()V

    .line 103
    return-void
.end method

.method private parseIntArray(Ljava/lang/String;[I)[I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultArray"    # [I

    .prologue
    const/4 v3, 0x0

    .line 106
    iget-object v2, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v2, p1, v3}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 109
    :try_start_0
    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/doze/-$Lambda$Pm-oMEZzS1-hcTDyMO0UqLPF_kM;->$INST$0:Lcom/android/systemui/doze/-$Lambda$Pm-oMEZzS1-hcTDyMO0UqLPF_kM;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/doze/-$Lambda$Pm-oMEZzS1-hcTDyMO0UqLPF_kM$1;->$INST$0:Lcom/android/systemui/doze/-$Lambda$Pm-oMEZzS1-hcTDyMO0UqLPF_kM$1;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-object p2

    .line 115
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    return-object p2
.end method
