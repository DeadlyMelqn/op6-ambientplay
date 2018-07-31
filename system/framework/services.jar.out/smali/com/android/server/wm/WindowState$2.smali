.class Lcom/android/server/wm/WindowState$2;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowState;->isAppWindowCompat(Landroid/graphics/Rect;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowState;

.field final synthetic val$isCompat:Z

.field final synthetic val$pf:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/wm/WindowState$2;->this$0:Lcom/android/server/wm/WindowState;

    iput-object p2, p0, Lcom/android/server/wm/WindowState$2;->val$pf:Landroid/graphics/Rect;

    iput-boolean p3, p0, Lcom/android/server/wm/WindowState$2;->val$isCompat:Z

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 800
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowState$2;->val$pf:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState$2;->val$pf:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v2, v3, :cond_0

    sget v1, Lcom/android/server/wm/WindowManagerService;->mPortTop:I

    .line 802
    .local v1, "offSet":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowState$2;->this$0:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState$2;->val$isCompat:Z

    invoke-interface {v2, v3, v1}, Landroid/view/IWindow;->enterScreenCompatMode(ZI)V

    .line 806
    .end local v1    # "offSet":I
    :goto_1
    return-void

    .line 801
    :cond_0
    sget v1, Lcom/android/server/wm/WindowManagerService;->mLandLeft:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "offSet":I
    goto :goto_0

    .line 803
    .end local v1    # "offSet":I
    :catch_0
    move-exception v0

    .line 804
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ScreenCompat: can\'t send notification to win="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
