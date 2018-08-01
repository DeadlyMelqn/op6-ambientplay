.class Lcom/android/systemui/recents/views/RecentsTransitionHelper$5;
.super Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;
.source "RecentsTransitionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsTransitionHelper;->getAppTransitionFuture(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

.field final synthetic val$composer:Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$5;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$5;->val$composer:Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;

    .line 268
    invoke-direct {p0}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public get()[Landroid/view/AppTransitionAnimationSpec;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 271
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$5;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get3(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/views/-$Lambda$EYqiLlPK4REOincH-Lv-jy-ii4c;

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$5;->val$composer:Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;

    const/4 v5, 0x0

    invoke-direct {v3, v5, p0, v4}, Lcom/android/systemui/recents/views/-$Lambda$EYqiLlPK4REOincH-Lv-jy-ii4c;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 277
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$5;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    monitor-enter v3

    .line 278
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$5;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get1(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get0()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-ne v2, v4, :cond_0

    .line 280
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$5;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 283
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$5;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get1(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    monitor-exit v3

    .line 284
    return-object v6

    .line 287
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$5;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get1(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Landroid/view/AppTransitionAnimationSpec;

    .line 288
    .local v1, "specs":[Landroid/view/AppTransitionAnimationSpec;
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$5;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get1(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 289
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$5;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get0()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-set0(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Ljava/util/List;)Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    .line 290
    return-object v1

    .line 277
    .end local v1    # "specs":[Landroid/view/AppTransitionAnimationSpec;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method synthetic lambda$-com_android_systemui_recents_views_RecentsTransitionHelper$5_11842(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)V
    .locals 3
    .param p1, "composer"    # Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;

    .prologue
    .line 272
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$5;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    monitor-enter v1

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$5;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-interface {p1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;->composeSpecs()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-set0(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Ljava/util/List;)Ljava/util/List;

    .line 274
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$5;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
