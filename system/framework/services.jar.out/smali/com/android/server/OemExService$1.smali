.class Lcom/android/server/OemExService$1;
.super Landroid/os/Handler;
.source "OemExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemExService;


# direct methods
.method constructor <init>(Lcom/android/server/OemExService;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OemExService;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "$anonymous1"    # Landroid/os/Handler$Callback;
    .param p4, "$anonymous2"    # Z

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/OemExService$1;->this$0:Lcom/android/server/OemExService;

    .line 143
    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 146
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "CONFIG_NAME":Ljava/lang/String;
    iget v4, p1, Landroid/os/Message;->what:I

    const v5, 0xd348

    if-ne v4, v5, :cond_1

    .line 149
    :try_start_0
    sget-boolean v4, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "OemExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "GET_ONLINECONFIG: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    new-instance v1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v4, p0, Lcom/android/server/OemExService$1;->this$0:Lcom/android/server/OemExService;

    invoke-static {v4}, Lcom/android/server/OemExService;->-get0(Lcom/android/server/OemExService;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 151
    .local v1, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v3

    .line 152
    .local v3, "jsArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_2

    .line 153
    invoke-static {}, Lcom/android/server/OemExService;->-get2()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .end local v1    # "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    .end local v3    # "jsArray":Lorg/json/JSONArray;
    :cond_1
    :goto_0
    return-void

    .line 155
    .restart local v1    # "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    .restart local v3    # "jsArray":Lorg/json/JSONArray;
    :cond_2
    sget-boolean v4, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "OemExService"

    const-string/jumbo v5, "GET_ONLINECONFIG: jArray is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    .end local v1    # "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    .end local v3    # "jsArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 158
    .local v2, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "OemExService"

    const-string/jumbo v5, "Oops:"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
