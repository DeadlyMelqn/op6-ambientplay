.class Lcom/android/server/OemExService$4;
.super Ljava/lang/Object;
.source "OemExService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemExService;->fetchOnlineConfig(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemExService;

.field final synthetic val$CONFIG_TAG:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/OemExService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OemExService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/OemExService$4;->this$0:Lcom/android/server/OemExService;

    iput-object p2, p0, Lcom/android/server/OemExService$4;->val$CONFIG_TAG:Ljava/lang/String;

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 496
    :try_start_0
    iget-object v1, p0, Lcom/android/server/OemExService$4;->this$0:Lcom/android/server/OemExService;

    iget-object v2, p0, Lcom/android/server/OemExService$4;->val$CONFIG_TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/OemExService;->-wrap0(Lcom/android/server/OemExService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :goto_0
    return-void

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "OemExService"

    const-string/jumbo v2, "fetchOnlineConfig error."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
