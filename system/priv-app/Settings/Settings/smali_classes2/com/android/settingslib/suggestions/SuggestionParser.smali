.class public Lcom/android/settingslib/suggestions/SuggestionParser;
.super Ljava/lang/Object;
.source "SuggestionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionCategory;,
        Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionOrderInflater;
    }
.end annotation


# static fields
.field private static final DEFAULT_SMART_DISMISS_CONTROL:Ljava/lang/String; = "0,10"

.field private static final DISMISS_INDEX:Ljava/lang/String; = "_dismiss_index"

.field private static final IS_DISMISSED:Ljava/lang/String; = "_is_dismissed"

.field private static final META_DATA_ADMIN_USER_TYPE_VALUE:Ljava/lang/String; = "admin"

.field public static final META_DATA_DISMISS_CONTROL:Ljava/lang/String; = "com.android.settings.dismiss"

.field private static final META_DATA_GUEST_USER_TYPE_VALUE:Ljava/lang/String; = "guest"

.field private static final META_DATA_IS_CONNECTION_REQUIRED:Ljava/lang/String; = "com.android.settings.require_connection"

.field private static final META_DATA_IS_SUPPORTED:Ljava/lang/String; = "com.android.settings.is_supported"

.field private static final META_DATA_PRIMARY_USER_TYPE_VALUE:Ljava/lang/String; = "primary"

.field private static final META_DATA_REQUIRE_ACCOUNT:Ljava/lang/String; = "com.android.settings.require_account"

.field public static final META_DATA_REQUIRE_FEATURE:Ljava/lang/String; = "com.android.settings.require_feature"

.field private static final META_DATA_REQUIRE_USER_TYPE:Ljava/lang/String; = "com.android.settings.require_user_type"

.field private static final META_DATA_RESTRICTED_USER_TYPE_VALUE:Ljava/lang/String; = "restricted"

.field private static final MILLIS_IN_DAY:J = 0x5265c00L

.field private static final SETUP_TIME:Ljava/lang/String; = "_setup_time"

.field private static final TAG:Ljava/lang/String; = "SuggestionParser"


# instance fields
.field private final mAddCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mSharedPrefs:Landroid/content/SharedPreferences;

.field private final mSmartDismissControl:Ljava/lang/String;

.field private final mSuggestionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mAddCache:Landroid/util/ArrayMap;

    .line 122
    iput-object p1, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSuggestionList:Ljava/util/List;

    .line 124
    iput-object p2, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 125
    const-string/jumbo v0, "0,10"

    iput-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSmartDismissControl:Ljava/lang/String;

    .line 126
    const-string/jumbo v0, "SuggestionParser"

    const-string/jumbo v1, "Only use this constructor for testing"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .param p3, "orderXml"    # I

    .prologue
    .line 117
    const-string/jumbo v0, "0,10"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settingslib/suggestions/SuggestionParser;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;ILjava/lang/String;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sharedPrefs"    # Landroid/content/SharedPreferences;
    .param p3, "orderXml"    # I
    .param p4, "smartDismissControl"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mAddCache:Landroid/util/ArrayMap;

    .line 109
    iput-object p1, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    .line 110
    new-instance v0, Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionOrderInflater;

    iget-object v1, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionOrderInflater;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionOrderInflater;->parse(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSuggestionList:Ljava/util/List;

    .line 112
    iput-object p2, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 113
    iput-object p4, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSmartDismissControl:Ljava/lang/String;

    .line 114
    return-void
.end method

.method private getDismissControl(Lcom/android/settingslib/drawer/Tile;Z)Ljava/lang/String;
    .locals 2
    .param p1, "suggestion"    # Lcom/android/settingslib/drawer/Tile;
    .param p2, "isSmartSuggestionEnabled"    # Z

    .prologue
    .line 359
    if-eqz p2, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSmartDismissControl:Ljava/lang/String;

    return-object v0

    .line 362
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "com.android.settings.dismiss"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEndTime(JI)J
    .locals 7
    .param p1, "startTime"    # J
    .param p3, "daysDelay"    # I

    .prologue
    .line 345
    int-to-long v2, p3

    const-wide/32 v4, 0x5265c00

    mul-long v0, v2, v4

    .line 346
    .local v0, "days":J
    add-long v2, p1, v0

    return-wide v2
.end method

.method private isAvailable(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 9
    .param p1, "suggestion"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    const/4 v3, 0x0

    .line 208
    iget-object v2, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "com.android.settings.require_feature"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "featuresRequired":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 210
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v0, v4, v2

    .line 211
    .local v0, "feature":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 212
    const-string/jumbo v6, "SuggestionParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Found empty substring when parsing required features: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    :cond_1
    iget-object v6, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 215
    const-string/jumbo v2, "SuggestionParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " requires unavailable feature "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return v3

    .line 220
    .end local v0    # "feature":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private isDismissed(Lcom/android/settingslib/drawer/Tile;Z)Z
    .locals 12
    .param p1, "suggestion"    # Lcom/android/settingslib/drawer/Tile;
    .param p2, "isSmartSuggestionEnabled"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 315
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/suggestions/SuggestionParser;->getDismissControl(Lcom/android/settingslib/drawer/Tile;Z)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "dismissControl":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 317
    return v10

    .line 319
    :cond_0
    iget-object v6, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "keyBase":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_setup_time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 321
    iget-object v6, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 322
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_setup_time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 321
    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 327
    :cond_1
    iget-object v6, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_is_dismissed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 328
    return v10

    .line 330
    :cond_2
    iget-object v6, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_dismiss_index"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 331
    .local v2, "index":I
    invoke-direct {p0, v1}, Lcom/android/settingslib/suggestions/SuggestionParser;->parseDismissString(Ljava/lang/String;)[I

    move-result-object v6

    aget v0, v6, v2

    .line 332
    .local v0, "currentDismiss":I
    iget-object v6, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_setup_time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v0}, Lcom/android/settingslib/suggestions/SuggestionParser;->getEndTime(JI)J

    move-result-wide v4

    .line 333
    .local v4, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-ltz v6, :cond_3

    .line 335
    iget-object v6, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 336
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_is_dismissed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 335
    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 337
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_dismiss_index"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v2, 0x1

    .line 335
    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 339
    return v10

    .line 341
    :cond_3
    return v11
.end method

.method private parseDismissString(Ljava/lang/String;)[I
    .locals 4
    .param p1, "dismissControl"    # Ljava/lang/String;

    .prologue
    .line 350
    const-string/jumbo v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "dismissStrs":[Ljava/lang/String;
    array-length v3, v0

    new-array v1, v3, [I

    .line 352
    .local v1, "dismisses":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 353
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 352
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    :cond_0
    return-object v1
.end method

.method private satisfiesConnectivity(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 7
    .param p1, "suggestion"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 290
    iget-object v4, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "com.android.settings.require_connection"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 291
    .local v1, "isConnectionRequired":Z
    if-nez v1, :cond_0

    .line 292
    const/4 v4, 0x1

    return v4

    .line 295
    :cond_0
    iget-object v4, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 296
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 297
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    .line 298
    :goto_0
    if-nez v3, :cond_1

    .line 299
    const-string/jumbo v4, "SuggestionParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is missing required connection."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_1
    return v3

    .line 297
    :cond_2
    const/4 v3, 0x0

    .local v3, "satisfiesConnectivity":Z
    goto :goto_0
.end method

.method private satisifesRequiredUserType(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 14
    .param p1, "suggestion"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    const/4 v13, 0x1

    const/4 v9, 0x0

    .line 225
    iget-object v8, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v10, "com.android.settings.require_user_type"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "requiredUser":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 227
    iget-object v8, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    const-class v10, Landroid/os/UserManager;

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 228
    .local v6, "userManager":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 229
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    const-string/jumbo v8, "\\|"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    move v8, v9

    :goto_0
    if-ge v8, v11, :cond_6

    aget-object v7, v10, v8

    .line 230
    .local v7, "userType":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 231
    const-string/jumbo v12, "primary"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 232
    :goto_1
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 233
    const-string/jumbo v12, "admin"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 234
    :goto_2
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 235
    const-string/jumbo v12, "guest"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 236
    :goto_3
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 237
    const-string/jumbo v12, "restricted"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 238
    :goto_4
    if-nez v2, :cond_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-eqz v4, :cond_5

    .line 240
    :cond_0
    return v13

    .line 230
    :cond_1
    const/4 v2, 0x0

    .local v2, "primaryUserCondtionMet":Z
    goto :goto_1

    .line 232
    .end local v2    # "primaryUserCondtionMet":Z
    :cond_2
    const/4 v0, 0x0

    .local v0, "adminUserConditionMet":Z
    goto :goto_2

    .line 234
    .end local v0    # "adminUserConditionMet":Z
    :cond_3
    const/4 v1, 0x0

    .local v1, "guestUserCondtionMet":Z
    goto :goto_3

    .line 236
    .end local v1    # "guestUserCondtionMet":Z
    :cond_4
    const/4 v4, 0x0

    .local v4, "restrictedUserCondtionMet":Z
    goto :goto_4

    .line 229
    .end local v4    # "restrictedUserCondtionMet":Z
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 243
    .end local v7    # "userType":Ljava/lang/String;
    :cond_6
    const-string/jumbo v8, "SuggestionParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " requires user type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return v9

    .line 246
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v6    # "userManager":Landroid/os/UserManager;
    :cond_7
    return v13
.end method


# virtual methods
.method public dismissSuggestion(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 1
    .param p1, "suggestion"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/suggestions/SuggestionParser;->dismissSuggestion(Lcom/android/settingslib/drawer/Tile;Z)Z

    move-result v0

    return v0
.end method

.method public dismissSuggestion(Lcom/android/settingslib/drawer/Tile;Z)Z
    .locals 8
    .param p1, "suggestion"    # Lcom/android/settingslib/drawer/Tile;
    .param p2, "isSmartSuggestionEnabled"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 151
    iget-object v3, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "keyBase":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_dismiss_index"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 153
    .local v1, "index":I
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/suggestions/SuggestionParser;->getDismissControl(Lcom/android/settingslib/drawer/Tile;Z)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "dismissControl":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settingslib/suggestions/SuggestionParser;->parseDismissString(Ljava/lang/String;)[I

    move-result-object v3

    array-length v3, v3

    if-ne v3, v1, :cond_1

    .line 155
    :cond_0
    return v7

    .line 157
    :cond_1
    iget-object v3, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_is_dismissed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 157
    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 160
    return v6
.end method

.method public filterSuggestions(Ljava/util/List;IZ)V
    .locals 3
    .param p2, "countBefore"    # I
    .param p3, "isSmartSuggestionEnabled"    # Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    move v0, p2

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 167
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    invoke-direct {p0, v2}, Lcom/android/settingslib/suggestions/SuggestionParser;->isAvailable(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {p0, v2}, Lcom/android/settingslib/suggestions/SuggestionParser;->isSupported(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 167
    if-nez v2, :cond_0

    .line 169
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    invoke-direct {p0, v2}, Lcom/android/settingslib/suggestions/SuggestionParser;->satisifesRequiredUserType(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 167
    if-nez v2, :cond_0

    .line 170
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {p0, v2}, Lcom/android/settingslib/suggestions/SuggestionParser;->satisfiesRequiredAccount(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 167
    if-nez v2, :cond_0

    .line 171
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    invoke-direct {p0, v2}, Lcom/android/settingslib/suggestions/SuggestionParser;->satisfiesConnectivity(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 167
    if-nez v2, :cond_0

    .line 172
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    invoke-direct {p0, v2, p3}, Lcom/android/settingslib/suggestions/SuggestionParser;->isDismissed(Lcom/android/settingslib/drawer/Tile;Z)Z

    move-result v2

    .line 167
    if-eqz v2, :cond_1

    .line 173
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    .line 166
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_2
    return-void
.end method

.method public getSuggestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/suggestions/SuggestionParser;->getSuggestions(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestions(Z)Ljava/util/List;
    .locals 4
    .param p1, "isSmartSuggestionEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v2, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    iget-object v3, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSuggestionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 136
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 137
    iget-object v3, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSuggestionList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionCategory;

    invoke-virtual {p0, v3, v2, p1}, Lcom/android/settingslib/suggestions/SuggestionParser;->readSuggestions(Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionCategory;Ljava/util/List;Z)V

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_0
    return-object v2
.end method

.method public isCategoryDone(Ljava/lang/String;)Z
    .locals 4
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "suggested.completed_category."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSupported(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 9
    .param p1, "suggestion"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    const/4 v8, 0x0

    .line 265
    iget-object v5, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v6, "com.android.settings.is_supported"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 267
    .local v3, "isSupportedResource":I
    :try_start_0
    iget-object v5, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-nez v5, :cond_0

    .line 268
    return v8

    .line 270
    :cond_0
    iget-object v5, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 271
    iget-object v6, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 270
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v4

    .line 273
    .local v4, "res":Landroid/content/res/Resources;
    if-eqz v3, :cond_2

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 274
    :goto_0
    if-nez v2, :cond_1

    .line 275
    const-string/jumbo v5, "SuggestionParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " requires unsupported resource "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :cond_1
    return v2

    .line 273
    :cond_2
    const/4 v2, 0x1

    .local v2, "isSupported":Z
    goto :goto_0

    .line 282
    .end local v2    # "isSupported":Z
    .end local v4    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 283
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v5, "SuggestionParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Cannot find resources for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    return v8

    .line 279
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v0

    .line 280
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "SuggestionParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Cannot find resources for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return v8
.end method

.method public markCategoryDone(Ljava/lang/String;)V
    .locals 3
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "suggested.completed_category."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 312
    return-void
.end method

.method readSuggestions(Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionCategory;Ljava/util/List;Z)V
    .locals 11
    .param p1, "category"    # Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionCategory;
    .param p3, "isSmartSuggestionEnabled"    # Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionCategory;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    const/4 v4, 0x0

    .line 181
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    .line 182
    .local v8, "countBefore":I
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, p1, Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionCategory;->category:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    iget-object v0, p1, Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionCategory;->pkg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p1, Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionCategory;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 188
    iget-object v3, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mAddCache:Landroid/util/ArrayMap;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v5, p2

    .line 187
    invoke-static/range {v0 .. v7}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForIntent(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 189
    invoke-virtual {p0, p2, v8, p3}, Lcom/android/settingslib/suggestions/SuggestionParser;->filterSuggestions(Ljava/util/List;IZ)V

    .line 190
    iget-boolean v0, p1, Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionCategory;->multiple:Z

    if-nez v0, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v8, 0x1

    if-le v0, v1, :cond_3

    .line 193
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settingslib/drawer/Tile;

    .line 194
    .local v9, "item":Lcom/android/settingslib/drawer/Tile;
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v8, :cond_2

    .line 195
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settingslib/drawer/Tile;

    .line 196
    .local v10, "last":Lcom/android/settingslib/drawer/Tile;
    iget v0, v10, Lcom/android/settingslib/drawer/Tile;->priority:I

    iget v1, v9, Lcom/android/settingslib/drawer/Tile;->priority:I

    if-le v0, v1, :cond_1

    .line 197
    move-object v9, v10

    goto :goto_0

    .line 201
    .end local v10    # "last":Lcom/android/settingslib/drawer/Tile;
    :cond_2
    iget-object v0, p1, Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionCategory;->category:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/suggestions/SuggestionParser;->isCategoryDone(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 202
    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v9    # "item":Lcom/android/settingslib/drawer/Tile;
    :cond_3
    return-void
.end method

.method public satisfiesRequiredAccount(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 7
    .param p1, "suggestion"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 250
    iget-object v4, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "com.android.settings.require_account"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "requiredAccountType":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 252
    const/4 v4, 0x1

    return v4

    .line 254
    :cond_0
    iget-object v4, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 255
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 256
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v4, v1

    if-lez v4, :cond_2

    const/4 v3, 0x1

    .line 257
    .local v3, "satisfiesRequiredAccount":Z
    :goto_0
    if-nez v3, :cond_1

    .line 258
    const-string/jumbo v4, "SuggestionParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " requires unavailable account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_1
    return v3

    .line 256
    .end local v3    # "satisfiesRequiredAccount":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "satisfiesRequiredAccount":Z
    goto :goto_0
.end method
