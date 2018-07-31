.class Lcom/android/server/AppOpsService$2;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AppOpsService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 497
    iget-object v1, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    invoke-static {v1}, Lcom/android/server/AppOpsService;->-get1(Lcom/android/server/AppOpsService;)Lcom/oneplus/config/ConfigObserver;

    move-result-object v1

    if-nez v1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    new-instance v2, Lcom/oneplus/config/ConfigObserver;

    iget-object v3, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    iget-object v3, v3, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    iget-object v4, v4, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 499
    new-instance v5, Lcom/android/server/AppOpsService$ScreenCompatConfigUpdater;

    iget-object v6, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {v5, v6}, Lcom/android/server/AppOpsService$ScreenCompatConfigUpdater;-><init>(Lcom/android/server/AppOpsService;)V

    const-string/jumbo v6, "Screen_Compat_Config"

    .line 498
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/server/AppOpsService;->-set0(Lcom/android/server/AppOpsService;Lcom/oneplus/config/ConfigObserver;)Lcom/oneplus/config/ConfigObserver;

    .line 500
    iget-object v1, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    invoke-static {v1}, Lcom/android/server/AppOpsService;->-get1(Lcom/android/server/AppOpsService;)Lcom/oneplus/config/ConfigObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 502
    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    iget-object v1, v1, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "Screen_Compat_Config"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 503
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    iget-object v1, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/AppOpsService;->-wrap1(Lcom/android/server/AppOpsService;Lorg/json/JSONArray;)V

    .line 504
    return-void
.end method
