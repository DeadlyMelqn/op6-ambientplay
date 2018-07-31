.class Lcom/android/systemui/util/GoogleAnalyticsHelper$OnlineConfigUpdater;
.super Ljava/lang/Object;
.source "GoogleAnalyticsHelper.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/GoogleAnalyticsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnlineConfigUpdater"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/util/GoogleAnalyticsHelper$OnlineConfigUpdater;)V
    .locals 0
    .param p1, "-this0"    # Lcom/android/systemui/util/GoogleAnalyticsHelper$OnlineConfigUpdater;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/util/GoogleAnalyticsHelper$OnlineConfigUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .prologue
    .line 123
    invoke-static {}, Lcom/android/systemui/util/GoogleAnalyticsHelper;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Receive online config update"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {p1}, Lcom/android/systemui/util/GoogleAnalyticsHelper;->-wrap0(Lorg/json/JSONArray;)V

    .line 125
    return-void
.end method
