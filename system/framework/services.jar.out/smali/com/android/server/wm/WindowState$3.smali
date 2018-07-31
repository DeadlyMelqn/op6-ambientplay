.class Lcom/android/server/wm/WindowState$3;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowState;->reportResized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowState;

.field final synthetic val$contentInsets:Landroid/graphics/Rect;

.field final synthetic val$displayId:I

.field final synthetic val$frame:Landroid/graphics/Rect;

.field final synthetic val$mergedConfiguration:Landroid/util/MergedConfiguration;

.field final synthetic val$outsets:Landroid/graphics/Rect;

.field final synthetic val$overscanInsets:Landroid/graphics/Rect;

.field final synthetic val$reportDraw:Z

.field final synthetic val$reportOrientation:Z

.field final synthetic val$stableInsets:Landroid/graphics/Rect;

.field final synthetic val$visibleInsets:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/wm/WindowState$3;->this$0:Lcom/android/server/wm/WindowState;

    iput-object p2, p0, Lcom/android/server/wm/WindowState$3;->val$frame:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/server/wm/WindowState$3;->val$overscanInsets:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/server/wm/WindowState$3;->val$contentInsets:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/android/server/wm/WindowState$3;->val$visibleInsets:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/android/server/wm/WindowState$3;->val$stableInsets:Landroid/graphics/Rect;

    iput-object p7, p0, Lcom/android/server/wm/WindowState$3;->val$outsets:Landroid/graphics/Rect;

    iput-boolean p8, p0, Lcom/android/server/wm/WindowState$3;->val$reportDraw:Z

    iput-object p9, p0, Lcom/android/server/wm/WindowState$3;->val$mergedConfiguration:Landroid/util/MergedConfiguration;

    iput-boolean p10, p0, Lcom/android/server/wm/WindowState$3;->val$reportOrientation:Z

    iput p11, p0, Lcom/android/server/wm/WindowState$3;->val$displayId:I

    .line 3566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 3570
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState$3;->this$0:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/WindowState$3;->val$frame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowState$3;->val$overscanInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/WindowState$3;->val$contentInsets:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowState$3;->val$visibleInsets:Landroid/graphics/Rect;

    .line 3571
    iget-object v5, p0, Lcom/android/server/wm/WindowState$3;->val$stableInsets:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/WindowState$3;->val$outsets:Landroid/graphics/Rect;

    iget-boolean v7, p0, Lcom/android/server/wm/WindowState$3;->val$reportDraw:Z

    iget-object v8, p0, Lcom/android/server/wm/WindowState$3;->val$mergedConfiguration:Landroid/util/MergedConfiguration;

    .line 3572
    iget-boolean v9, p0, Lcom/android/server/wm/WindowState$3;->val$reportOrientation:Z

    iget v10, p0, Lcom/android/server/wm/WindowState$3;->val$displayId:I

    .line 3570
    invoke-static/range {v0 .. v10}, Lcom/android/server/wm/WindowState;->-wrap0(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3576
    :goto_0
    return-void

    .line 3573
    :catch_0
    move-exception v11

    .local v11, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
