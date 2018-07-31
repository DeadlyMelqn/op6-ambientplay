.class public Lcom/android/systemui/util/GoogleAnalyticsHelper;
.super Ljava/lang/Object;
.source "GoogleAnalyticsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/GoogleAnalyticsHelper$OnlineConfigUpdater;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mIsOnlineConfigEnabled:Z

.field private static mTracker:Lcom/google/analytics/tracking/android/Tracker;

.field private static sContext:Landroid/content/Context;

.field private static sGetConfigFail:Z

.field private static sInit:Z

.field private static sInstance:Lcom/android/systemui/util/GoogleAnalyticsHelper;

.field private static sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/systemui/util/GoogleAnalyticsHelper;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    invoke-static {p0}, Lcom/android/systemui/util/GoogleAnalyticsHelper;->getOnlineConfig(Lorg/json/JSONArray;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OPSystemUI."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/systemui/util/GoogleAnalyticsHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    .line 38
    sput-boolean v2, Lcom/android/systemui/util/GoogleAnalyticsHelper;->sInit:Z

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/util/GoogleAnalyticsHelper;->sGetConfigFail:Z

    .line 41
    sput-boolean v2, Lcom/android/systemui/util/GoogleAnalyticsHelper;->mIsOnlineConfigEnabled:Z

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/util/GoogleAnalyticsHelper;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/systemui/util/GoogleAnalyticsHelper;->sInstance:Lcom/android/systemui/util/GoogleAnalyticsHelper;

    return-object v0
.end method

.method private static getOnlineConfig(Lorg/json/JSONArray;)V
    .locals 9
    .param p0, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    const/4 v8, 0x1

    .line 129
    if-eqz p0, :cond_4

    .line 131
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 132
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 133
    .local v4, "json":Lorg/json/JSONObject;
    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "enabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 134
    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/util/GoogleAnalyticsHelper;->mIsOnlineConfigEnabled:Z

    .line 135
    sget-object v5, Lcom/android/systemui/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "GA online config "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/systemui/util/GoogleAnalyticsHelper;->mIsOnlineConfigEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-boolean v5, Lcom/android/systemui/util/GoogleAnalyticsHelper;->mIsOnlineConfigEnabled:Z

    if-eqz v5, :cond_2

    .line 137
    sget-boolean v5, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/systemui/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getInstance sInstance: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/util/GoogleAnalyticsHelper;->sInstance:Lcom/android/systemui/util/GoogleAnalyticsHelper;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 138
    const-string/jumbo v7, " isBetaRom: "

    .line 137
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 138
    invoke-static {}, Lcom/android/systemui/util/GoogleAnalyticsHelper;->isBetaRom()Z

    move-result v7

    .line 137
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 139
    const-string/jumbo v7, " isPrivacyEnabled: "

    .line 137
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 139
    sget-object v7, Lcom/android/systemui/util/GoogleAnalyticsHelper;->sContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/util/GoogleAnalyticsHelper;->isPrivacyEnabled(Landroid/content/Context;)Z

    move-result v7

    .line 137
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    sget-object v5, Lcom/android/systemui/util/GoogleAnalyticsHelper;->sInstance:Lcom/android/systemui/util/GoogleAnalyticsHelper;

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/systemui/util/GoogleAnalyticsHelper;->isBetaRom()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/systemui/util/GoogleAnalyticsHelper;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/util/GoogleAnalyticsHelper;->isPrivacyEnabled(Landroid/content/Context;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 141
    new-instance v5, Lcom/android/systemui/util/GoogleAnalyticsHelper;

    invoke-direct {v5}, Lcom/android/systemui/util/GoogleAnalyticsHelper;-><init>()V

    sput-object v5, Lcom/android/systemui/util/GoogleAnalyticsHelper;->sInstance:Lcom/android/systemui/util/GoogleAnalyticsHelper;

    .line 142
    sget-object v5, Lcom/android/systemui/util/GoogleAnalyticsHelper;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v0

    .line 143
    .local v0, "analytics":Lcom/google/analytics/tracking/android/GoogleAnalytics;
    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v5

    sget-object v6, Lcom/google/analytics/tracking/android/Logger$LogLevel;->VERBOSE:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-interface {v5, v6}, Lcom/google/analytics/tracking/android/Logger;->setLogLevel(Lcom/google/analytics/tracking/android/Logger$LogLevel;)V

    .line 144
    const-string/jumbo v5, "UA-92966593-4"

    invoke-virtual {v0, v5}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v5

    sput-object v5, Lcom/android/systemui/util/GoogleAnalyticsHelper;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 131
    .end local v0    # "analytics":Lcom/google/analytics/tracking/android/GoogleAnalytics;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 147
    :cond_2
    const/4 v5, 0x0

    sput-object v5, Lcom/android/systemui/util/GoogleAnalyticsHelper;->sInstance:Lcom/android/systemui/util/GoogleAnalyticsHelper;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 152
    .end local v4    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 153
    .local v2, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/android/systemui/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "get GA online config error. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sput-boolean v8, Lcom/android/systemui/util/GoogleAnalyticsHelper;->sGetConfigFail:Z

    .line 163
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "index":I
    :goto_2
    return-void

    .line 151
    .restart local v3    # "index":I
    :cond_3
    const/4 v5, 0x0

    :try_start_1
    sput-boolean v5, Lcom/android/systemui/util/GoogleAnalyticsHelper;->sGetConfigFail:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 155
    :catch_1
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/systemui/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "get GA online config error. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sput-boolean v8, Lcom/android/systemui/util/GoogleAnalyticsHelper;->sGetConfigFail:Z

    goto :goto_2

    .line 160
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "index":I
    :cond_4
    sget-object v5, Lcom/android/systemui/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "jsonArray is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sput-boolean v8, Lcom/android/systemui/util/GoogleAnalyticsHelper;->sGetConfigFail:Z

    goto :goto_2
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/systemui/util/GoogleAnalyticsHelper;->sInit:Z

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/util/GoogleAnalyticsHelper;->sInit:Z

    .line 49
    sput-object p0, Lcom/android/systemui/util/GoogleAnalyticsHelper;->sContext:Landroid/content/Context;

    .line 50
    invoke-static {p0}, Lcom/android/systemui/util/GoogleAnalyticsHelper;->registerGAOnlineConfigObserver(Landroid/content/Context;)V

    .line 53
    :cond_0
    sget-boolean v0, Lcom/android/systemui/util/GoogleAnalyticsHelper;->sGetConfigFail:Z

    if-eqz v0, :cond_1

    .line 54
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/util/GoogleAnalyticsHelper$1;

    invoke-direct {v1}, Lcom/android/systemui/util/GoogleAnalyticsHelper$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    :cond_1
    return-void
.end method

.method private static isBetaRom()Z
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "isBeta":Ljava/lang/String;
    const/4 v1, 0x0

    .line 81
    .local v1, "isEanbleGA":Ljava/lang/String;
    const-string/jumbo v2, "ro.build.beta"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "isBeta":Ljava/lang/String;
    const-string/jumbo v2, "persist.op.ga"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "isEanbleGA":Ljava/lang/String;
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 87
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private static isPrivacyEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 93
    if-nez p0, :cond_0

    .line 94
    return v3

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_join_user_plan_settings"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 99
    .local v0, "privacy":I
    if-ne v0, v3, :cond_1

    .line 100
    return v4

    .line 102
    :cond_1
    return v3
.end method

.method private static registerGAOnlineConfigObserver(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 106
    sget-object v2, Lcom/android/systemui/util/GoogleAnalyticsHelper;->sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    if-nez v2, :cond_0

    .line 107
    new-instance v1, Lcom/android/systemui/util/GoogleAnalyticsHelper$OnlineConfigUpdater;

    invoke-direct {v1, v3}, Lcom/android/systemui/util/GoogleAnalyticsHelper$OnlineConfigUpdater;-><init>(Lcom/android/systemui/util/GoogleAnalyticsHelper$OnlineConfigUpdater;)V

    .line 108
    .local v1, "updater":Lcom/android/systemui/util/GoogleAnalyticsHelper$OnlineConfigUpdater;
    new-instance v2, Lcom/oneplus/config/ConfigObserver;

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string/jumbo v5, "OPSystemUIGAConfig"

    .line 108
    invoke-direct {v2, v3, v4, v1, v5}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    sput-object v2, Lcom/android/systemui/util/GoogleAnalyticsHelper;->sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 111
    :try_start_0
    sget-object v2, Lcom/android/systemui/util/GoogleAnalyticsHelper;->sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v2}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 112
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Register online config observer"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v1    # "updater":Lcom/android/systemui/util/GoogleAnalyticsHelper$OnlineConfigUpdater;
    :cond_0
    :goto_0
    return-void

    .line 113
    .restart local v1    # "updater":Lcom/android/systemui/util/GoogleAnalyticsHelper$OnlineConfigUpdater;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v2, Lcom/android/systemui/util/GoogleAnalyticsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Register online config fail, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 72
    sget-object v0, Lcom/android/systemui/util/GoogleAnalyticsHelper;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/android/systemui/util/GoogleAnalyticsHelper;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    invoke-static {p1, p3, p2, v1}, Lcom/google/analytics/tracking/android/MapBuilder;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    .line 75
    :cond_0
    return-void
.end method
