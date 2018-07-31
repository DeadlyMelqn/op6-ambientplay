.class public Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;
.super Ljava/lang/Object;
.source "RecentsTransitionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/RecentsTransitionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppTransitionAnimationSpecsFuture"
.end annotation


# instance fields
.field private final composer:Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;

.field private final future:Landroid/view/IAppTransitionAnimationSpecsFuture;

.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;)Landroid/view/IAppTransitionAnimationSpecsFuture;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;->future:Landroid/view/IAppTransitionAnimationSpecsFuture;

    return-object v0
.end method

.method private constructor <init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;Landroid/view/IAppTransitionAnimationSpecsFuture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/RecentsTransitionHelper;
    .param p2, "composer"    # Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;
    .param p3, "future"    # Landroid/view/IAppTransitionAnimationSpecsFuture;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;->composer:Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;

    .line 489
    iput-object p3, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;->future:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 490
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;Landroid/view/IAppTransitionAnimationSpecsFuture;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/RecentsTransitionHelper;
    .param p2, "composer"    # Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;
    .param p3, "future"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p4, "-this3"    # Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;Landroid/view/IAppTransitionAnimationSpecsFuture;)V

    return-void
.end method


# virtual methods
.method public getFuture()Landroid/view/IAppTransitionAnimationSpecsFuture;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;->future:Landroid/view/IAppTransitionAnimationSpecsFuture;

    return-object v0
.end method

.method public precacheSpecs()V
    .locals 3

    .prologue
    .line 501
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    monitor-enter v1

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AppTransitionAnimationSpecsFuture;->composer:Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;

    invoke-interface {v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;->composeSpecs()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-set0(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 504
    return-void

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
