.class final Lcom/android/systemui/recents/WhiteList$1;
.super Ljava/lang/Object;
.source "WhiteList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/WhiteList;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 192
    invoke-static {}, Lcom/android/systemui/recents/WhiteList;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const-string/jumbo v1, "WhiteList"

    const-string/jumbo v2, "Take the initiative in retrieving online config"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    .line 196
    invoke-static {}, Lcom/android/systemui/recents/WhiteList;->-get1()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "RecentAppWhiteList"

    .line 195
    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/recents/WhiteList;->-wrap0(Lorg/json/JSONArray;)V

    .line 198
    return-void
.end method
