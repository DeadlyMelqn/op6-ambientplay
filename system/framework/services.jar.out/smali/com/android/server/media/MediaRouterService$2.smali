.class Lcom/android/server/media/MediaRouterService$2;
.super Landroid/media/IAudioRoutesObserver$Stub;
.source "MediaRouterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaRouterService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/MediaRouterService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    .line 136
    invoke-direct {p0}, Landroid/media/IAudioRoutesObserver$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    .locals 5
    .param p1, "newRoutes"    # Landroid/media/AudioRoutesInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 139
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v2}, Lcom/android/server/media/MediaRouterService;->-get3(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 140
    :try_start_0
    iget v3, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v4}, Lcom/android/server/media/MediaRouterService;->-get2(Lcom/android/server/media/MediaRouterService;)Landroid/media/AudioRoutesInfo;

    move-result-object v4

    iget v4, v4, Landroid/media/AudioRoutesInfo;->mainType:I

    if-eq v3, v4, :cond_0

    .line 141
    iget v3, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v3, v3, 0x13

    if-nez v3, :cond_3

    .line 145
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    iget-object v4, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    :goto_0
    invoke-static {v3, v0}, Lcom/android/server/media/MediaRouterService;->-set0(Lcom/android/server/media/MediaRouterService;Z)Z

    .line 150
    :goto_1
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v0}, Lcom/android/server/media/MediaRouterService;->-get2(Lcom/android/server/media/MediaRouterService;)Landroid/media/AudioRoutesInfo;

    move-result-object v0

    iget v1, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    iput v1, v0, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 153
    :cond_0
    iget-object v0, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v1}, Lcom/android/server/media/MediaRouterService;->-get2(Lcom/android/server/media/MediaRouterService;)Landroid/media/AudioRoutesInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 152
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    iget-object v0, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-nez v0, :cond_4

    .line 156
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/media/MediaRouterService;->-set0(Lcom/android/server/media/MediaRouterService;Z)Z

    .line 161
    :goto_2
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v0}, Lcom/android/server/media/MediaRouterService;->-get2(Lcom/android/server/media/MediaRouterService;)Landroid/media/AudioRoutesInfo;

    move-result-object v0

    iget-object v1, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 164
    return-void

    :cond_2
    move v0, v1

    .line 145
    goto :goto_0

    .line 148
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/media/MediaRouterService;->-set0(Lcom/android/server/media/MediaRouterService;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 159
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/media/MediaRouterService;->-set0(Lcom/android/server/media/MediaRouterService;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
