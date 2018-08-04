.class public Lcom/android/systemui/providers/OmniJawsClient;
.super Ljava/lang/Object;
.source "OmniJawsClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/providers/OmniJawsClient$DayForecast;,
        Lcom/android/systemui/providers/OmniJawsClient$OmniJawsObserver;,
        Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;,
        Lcom/android/systemui/providers/OmniJawsClient$WeatherUpdateReceiver;
    }
.end annotation


# static fields
.field public static final SETTINGS_URI:Landroid/net/Uri;

.field public static final WEATHER_PROJECTION:[Ljava/lang/String;

.field public static final WEATHER_URI:Landroid/net/Uri;

.field private static final sNoDigitsFormat:Ljava/text/DecimalFormat;


# instance fields
.field final SETTINGS_PROJECTION:[Ljava/lang/String;

.field private mCachedInfo:Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIconPrefix:Ljava/lang/String;

.field private mMetric:Z

.field private mObserver:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/providers/OmniJawsClient$OmniJawsObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mReceiver:Lcom/android/systemui/providers/OmniJawsClient$WeatherUpdateReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mSettingIconPackage:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/providers/OmniJawsClient;)Ljava/util/List;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/providers/OmniJawsClient;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/providers/OmniJawsClient;->mObserver:Ljava/util/List;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const-string/jumbo v0, "content://org.omnirom.omnijaws.provider/weather"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 49
    sput-object v0, Lcom/android/systemui/providers/OmniJawsClient;->WEATHER_URI:Landroid/net/Uri;

    .line 52
    const-string/jumbo v0, "content://org.omnirom.omnijaws.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 51
    sput-object v0, Lcom/android/systemui/providers/OmniJawsClient;->SETTINGS_URI:Landroid/net/Uri;

    .line 59
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    .line 60
    const-string/jumbo v1, "city"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 61
    const-string/jumbo v1, "wind_speed"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 62
    const-string/jumbo v1, "wind_direction"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 63
    const-string/jumbo v1, "condition_code"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 64
    const-string/jumbo v1, "temperature"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 65
    const-string/jumbo v1, "humidity"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 66
    const-string/jumbo v1, "condition"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 67
    const-string/jumbo v1, "forecast_low"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 68
    const-string/jumbo v1, "forecast_high"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 69
    const-string/jumbo v1, "forecast_condition"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 70
    const-string/jumbo v1, "forecast_condition_code"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 71
    const-string/jumbo v1, "time_stamp"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 72
    const-string/jumbo v1, "forecast_date"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 73
    const-string/jumbo v1, "pin_wheel"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 59
    sput-object v0, Lcom/android/systemui/providers/OmniJawsClient;->WEATHER_PROJECTION:[Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/providers/OmniJawsClient;->sNoDigitsFormat:Ljava/text/DecimalFormat;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 77
    const-string/jumbo v1, "enabled"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 78
    const-string/jumbo v1, "units"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 79
    const-string/jumbo v1, "provider"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 80
    const-string/jumbo v1, "setup"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 76
    iput-object v0, p0, Lcom/android/systemui/providers/OmniJawsClient;->SETTINGS_PROJECTION:[Ljava/lang/String;

    .line 155
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/providers/OmniJawsClient;->mHandler:Landroid/os/Handler;

    .line 158
    iput-object p1, p0, Lcom/android/systemui/providers/OmniJawsClient;->mContext:Landroid/content/Context;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/providers/OmniJawsClient;->mObserver:Ljava/util/List;

    .line 160
    return-void
.end method

.method private static getFormattedValue(F)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # F

    .prologue
    .line 195
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const-string/jumbo v1, "-"

    return-object v1

    .line 198
    :cond_0
    sget-object v1, Lcom/android/systemui/providers/OmniJawsClient;->sNoDigitsFormat:Ljava/text/DecimalFormat;

    float-to-double v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "formatted":Ljava/lang/String;
    const-string/jumbo v1, "-0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    const-string/jumbo v0, "0"

    .line 202
    :cond_1
    return-object v0
.end method

.method private getTemperatureUnit()Ljava/lang/String;
    .locals 2

    .prologue
    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u00b0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/providers/OmniJawsClient;->mMetric:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "C"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "F"

    goto :goto_0
.end method

.method private getWindUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/android/systemui/providers/OmniJawsClient;->mMetric:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "km/h"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "mph"

    goto :goto_0
.end method

.method private isAvailableApp(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 393
    iget-object v5, p0, Lcom/android/systemui/providers/OmniJawsClient;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 395
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 396
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 397
    .local v1, "enabled":I
    const/4 v5, 0x2

    if-eq v1, v5, :cond_1

    .line 398
    const/4 v5, 0x3

    if-eq v1, v5, :cond_0

    .line 397
    :goto_0
    return v3

    :cond_0
    move v3, v4

    .line 398
    goto :goto_0

    :cond_1
    move v3, v4

    .line 397
    goto :goto_0

    .line 399
    .end local v1    # "enabled":I
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v4
.end method

.method private loadDefaultIconsPackage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 254
    const-string/jumbo v2, "org.omnirom.omnijaws"

    iput-object v2, p0, Lcom/android/systemui/providers/OmniJawsClient;->mPackageName:Ljava/lang/String;

    .line 255
    const-string/jumbo v2, "outline"

    iput-object v2, p0, Lcom/android/systemui/providers/OmniJawsClient;->mIconPrefix:Ljava/lang/String;

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/providers/OmniJawsClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/providers/OmniJawsClient;->mIconPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/providers/OmniJawsClient;->mSettingIconPackage:Ljava/lang/String;

    .line 259
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/providers/OmniJawsClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 260
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/android/systemui/providers/OmniJawsClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/providers/OmniJawsClient;->mRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/providers/OmniJawsClient;->mRes:Landroid/content/res/Resources;

    if-nez v2, :cond_0

    .line 265
    const-string/jumbo v2, "SystemUI:OmniJawsClient"

    const-string/jumbo v3, "No default package found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    iput-object v4, p0, Lcom/android/systemui/providers/OmniJawsClient;->mRes:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method private updateUnits()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 359
    invoke-virtual {p0}, Lcom/android/systemui/providers/OmniJawsClient;->isOmniJawsServiceInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/providers/OmniJawsClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/providers/OmniJawsClient;->SETTINGS_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/providers/OmniJawsClient;->SETTINGS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 364
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 365
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 366
    .local v7, "count":I
    if-ne v7, v8, :cond_1

    .line 367
    invoke-interface {v6, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 368
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v8

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/providers/OmniJawsClient;->mMetric:Z

    .line 369
    iget-object v0, p0, Lcom/android/systemui/providers/OmniJawsClient;->mCachedInfo:Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/android/systemui/providers/OmniJawsClient;->mCachedInfo:Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;

    invoke-direct {p0}, Lcom/android/systemui/providers/OmniJawsClient;->getTemperatureUnit()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;->tempUnits:Ljava/lang/String;

    .line 371
    iget-object v0, p0, Lcom/android/systemui/providers/OmniJawsClient;->mCachedInfo:Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;

    invoke-direct {p0}, Lcom/android/systemui/providers/OmniJawsClient;->getWindUnit()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;->windUnits:Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lcom/android/systemui/providers/OmniJawsClient;->mCachedInfo:Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;->provider:Ljava/lang/String;

    .line 376
    .end local v7    # "count":I
    :cond_1
    return-void

    .restart local v7    # "count":I
    :cond_2
    move v0, v9

    .line 368
    goto :goto_0
.end method


# virtual methods
.method public addObserver(Lcom/android/systemui/providers/OmniJawsClient$OmniJawsObserver;)V
    .locals 5
    .param p1, "observer"    # Lcom/android/systemui/providers/OmniJawsClient$OmniJawsObserver;

    .prologue
    const/4 v4, 0x0

    .line 405
    iget-object v2, p0, Lcom/android/systemui/providers/OmniJawsClient;->mObserver:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 406
    iget-object v2, p0, Lcom/android/systemui/providers/OmniJawsClient;->mReceiver:Lcom/android/systemui/providers/OmniJawsClient$WeatherUpdateReceiver;

    if-eqz v2, :cond_0

    .line 408
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/providers/OmniJawsClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/providers/OmniJawsClient;->mReceiver:Lcom/android/systemui/providers/OmniJawsClient$WeatherUpdateReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :cond_0
    :goto_0
    new-instance v2, Lcom/android/systemui/providers/OmniJawsClient$WeatherUpdateReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/providers/OmniJawsClient$WeatherUpdateReceiver;-><init>(Lcom/android/systemui/providers/OmniJawsClient;Lcom/android/systemui/providers/OmniJawsClient$WeatherUpdateReceiver;)V

    iput-object v2, p0, Lcom/android/systemui/providers/OmniJawsClient;->mReceiver:Lcom/android/systemui/providers/OmniJawsClient$WeatherUpdateReceiver;

    .line 413
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 414
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "org.omnirom.omnijaws.WEATHER_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    const-string/jumbo v2, "org.omnirom.omnijaws.WEATHER_ERROR"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 416
    iget-object v2, p0, Lcom/android/systemui/providers/OmniJawsClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/providers/OmniJawsClient;->mReceiver:Lcom/android/systemui/providers/OmniJawsClient$WeatherUpdateReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 418
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/providers/OmniJawsClient;->mObserver:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    return-void

    .line 409
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getWeatherConditionImage(I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "conditionCode"    # I

    .prologue
    const/4 v6, 0x0

    .line 287
    invoke-virtual {p0}, Lcom/android/systemui/providers/OmniJawsClient;->isOmniJawsEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    const-string/jumbo v2, "SystemUI:OmniJawsClient"

    const-string/jumbo v3, "Requesting condition image while disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-object v6

    .line 291
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/providers/OmniJawsClient;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/systemui/providers/OmniJawsClient;->isAvailableApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 292
    const-string/jumbo v2, "SystemUI:OmniJawsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Icon pack no longer available - loading default "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/providers/OmniJawsClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-direct {p0}, Lcom/android/systemui/providers/OmniJawsClient;->loadDefaultIconsPackage()V

    .line 295
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/providers/OmniJawsClient;->mRes:Landroid/content/res/Resources;

    if-nez v2, :cond_2

    .line 296
    const-string/jumbo v2, "SystemUI:OmniJawsClient"

    const-string/jumbo v3, "Requesting condition image while disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-object v6

    .line 300
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/providers/OmniJawsClient;->mRes:Landroid/content/res/Resources;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/providers/OmniJawsClient;->mIconPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "drawable"

    iget-object v5, p0, Lcom/android/systemui/providers/OmniJawsClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 301
    .local v1, "resId":I
    iget-object v2, p0, Lcom/android/systemui/providers/OmniJawsClient;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 302
    .end local v1    # "resId":I
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SystemUI:OmniJawsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to get condition image for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-object v6
.end method

.method public getWeatherInfo()Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/systemui/providers/OmniJawsClient;->mCachedInfo:Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;

    return-object v0
.end method

.method public isOmniJawsEnabled()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 313
    invoke-virtual {p0}, Lcom/android/systemui/providers/OmniJawsClient;->isOmniJawsServiceInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    return v9

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/providers/OmniJawsClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/providers/OmniJawsClient;->SETTINGS_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/providers/OmniJawsClient;->SETTINGS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 318
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 319
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 320
    .local v7, "count":I
    if-ne v7, v10, :cond_2

    .line 321
    invoke-interface {v6, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 322
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v10, :cond_1

    const/4 v8, 0x1

    .line 323
    .local v8, "enabled":Z
    :goto_0
    return v8

    .line 322
    .end local v8    # "enabled":Z
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "enabled":Z
    goto :goto_0

    .line 326
    .end local v7    # "count":I
    .end local v8    # "enabled":Z
    :cond_2
    return v10
.end method

.method public isOmniJawsServiceInstalled()Z
    .locals 1

    .prologue
    .line 309
    const-string/jumbo v0, "org.omnirom.omnijaws"

    invoke-direct {p0, v0}, Lcom/android/systemui/providers/OmniJawsClient;->isAvailableApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public queryWeather()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 206
    invoke-virtual {p0}, Lcom/android/systemui/providers/OmniJawsClient;->isOmniJawsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    const-string/jumbo v0, "SystemUI:OmniJawsClient"

    const-string/jumbo v1, "queryWeather while disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iput-object v3, p0, Lcom/android/systemui/providers/OmniJawsClient;->mCachedInfo:Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;

    .line 209
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/providers/OmniJawsClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/providers/OmniJawsClient;->WEATHER_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/systemui/providers/OmniJawsClient;->WEATHER_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 213
    .local v6, "c":Landroid/database/Cursor;
    iput-object v3, p0, Lcom/android/systemui/providers/OmniJawsClient;->mCachedInfo:Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;

    .line 214
    if-eqz v6, :cond_4

    .line 216
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 217
    .local v7, "count":I
    if-lez v7, :cond_3

    .line 218
    new-instance v0, Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;

    invoke-direct {v0}, Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/providers/OmniJawsClient;->mCachedInfo:Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;

    .line 219
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v9, "forecastList":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/providers/OmniJawsClient$DayForecast;>;"
    const/4 v10, 0x0

    .line 221
    .local v10, "i":I
    const/4 v10, 0x0

    :goto_0
    if-ge v10, v7, :cond_2

    .line 222
    invoke-interface {v6, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 223
    if-nez v10, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/systemui/providers/OmniJawsClient;->mCachedInfo:Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;->city:Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/android/systemui/providers/OmniJawsClient;->mCachedInfo:Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/providers/OmniJawsClient;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;->windSpeed:Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/android/systemui/providers/OmniJawsClient;->mCachedInfo:Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u00b0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;->windDirection:Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/android/systemui/providers/OmniJawsClient;->mCachedInfo:Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;

    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;->conditionCode:I

    .line 228
    iget-object v0, p0, Lcom/android/systemui/providers/OmniJawsClient;->mCachedInfo:Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;

    const/4 v1, 0x4

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/providers/OmniJawsClient;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;->temp:Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/android/systemui/providers/OmniJawsClient;->mCachedInfo:Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;

    const/4 v1, 0x5

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;->humidity:Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/android/systemui/providers/OmniJawsClient;->mCachedInfo:Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;

    const/4 v1, 0x6

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;->condition:Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/android/systemui/providers/OmniJawsClient;->mCachedInfo:Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;

    const/16 v1, 0xb

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;->timeStamp:Ljava/lang/Long;

    .line 232
    iget-object v0, p0, Lcom/android/systemui/providers/OmniJawsClient;->mCachedInfo:Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;

    const/16 v1, 0xd

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;->pinWheel:Ljava/lang/String;

    .line 221
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 234
    :cond_1
    new-instance v8, Lcom/android/systemui/providers/OmniJawsClient$DayForecast;

    invoke-direct {v8}, Lcom/android/systemui/providers/OmniJawsClient$DayForecast;-><init>()V

    .line 235
    .local v8, "day":Lcom/android/systemui/providers/OmniJawsClient$DayForecast;
    const/4 v0, 0x7

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/providers/OmniJawsClient;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/systemui/providers/OmniJawsClient$DayForecast;->low:Ljava/lang/String;

    .line 236
    const/16 v0, 0x8

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/providers/OmniJawsClient;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/systemui/providers/OmniJawsClient$DayForecast;->high:Ljava/lang/String;

    .line 237
    const/16 v0, 0x9

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/systemui/providers/OmniJawsClient$DayForecast;->condition:Ljava/lang/String;

    .line 238
    const/16 v0, 0xa

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/systemui/providers/OmniJawsClient$DayForecast;->conditionCode:I

    .line 239
    const/16 v0, 0xc

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/systemui/providers/OmniJawsClient$DayForecast;->date:Ljava/lang/String;

    .line 240
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 245
    .end local v7    # "count":I
    .end local v8    # "day":Lcom/android/systemui/providers/OmniJawsClient$DayForecast;
    .end local v9    # "forecastList":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/providers/OmniJawsClient$DayForecast;>;"
    .end local v10    # "i":I
    :catchall_0
    move-exception v0

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 245
    throw v0

    .line 243
    .restart local v7    # "count":I
    .restart local v9    # "forecastList":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/providers/OmniJawsClient$DayForecast;>;"
    .restart local v10    # "i":I
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/providers/OmniJawsClient;->mCachedInfo:Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;

    iput-object v9, v0, Lcom/android/systemui/providers/OmniJawsClient$WeatherInfo;->forecasts:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    .end local v9    # "forecastList":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/providers/OmniJawsClient$DayForecast;>;"
    .end local v10    # "i":I
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 249
    .end local v7    # "count":I
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/providers/OmniJawsClient;->updateUnits()V

    .line 251
    return-void
.end method
