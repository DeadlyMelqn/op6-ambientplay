.class Lcom/android/systemui/recents/misc/SystemServicesProxy$5;
.super Ljava/lang/Object;
.source "SystemServicesProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/misc/SystemServicesProxy;->initWidgetPkgList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$5;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 1773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1778
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$5;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$5;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v2, v2, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetPackageList()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-set0(Lcom/android/systemui/recents/misc/SystemServicesProxy;Ljava/util/List;)Ljava/util/List;

    .line 1779
    sget-boolean v1, Lcom/android/systemui/util/Utils;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SystemServicesProxy"

    const-string/jumbo v2, "initWigetPkgList"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1784
    :cond_0
    :goto_0
    return-void

    .line 1780
    :catch_0
    move-exception v0

    .line 1781
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
