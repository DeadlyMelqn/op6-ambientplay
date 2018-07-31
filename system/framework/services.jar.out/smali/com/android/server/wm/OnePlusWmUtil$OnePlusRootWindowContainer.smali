.class public Lcom/android/server/wm/OnePlusWmUtil$OnePlusRootWindowContainer;
.super Ljava/lang/Object;
.source "OnePlusWmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OnePlusWmUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnePlusRootWindowContainer"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mRwc:Lcom/android/server/wm/RootWindowContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RootWindowContainer;)V
    .locals 0
    .param p1, "rwc"    # Lcom/android/server/wm/RootWindowContainer;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusRootWindowContainer;->mRwc:Lcom/android/server/wm/RootWindowContainer;

    .line 95
    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_OnePlusWmUtil$OnePlusRootWindowContainer_3874(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 105
    .local p0, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->getShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    .line 107
    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_OnePlusWmUtil$OnePlusRootWindowContainer_4375(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 116
    .local p0, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_0

    .line 117
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 116
    if-eqz v0, :cond_0

    .line 117
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 119
    iget v0, p1, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SYSTEM_ALERT_WINDOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 116
    if-eqz v0, :cond_0

    .line 120
    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    .line 121
    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getSysAlertWindowUidsForScreenOff()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v0, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusRootWindowContainer;->mRwc:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;

    const/16 v3, 0xe

    invoke-direct {v2, v3, v0}, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;-><init>(BLjava/lang/Object;)V

    .line 123
    const/4 v3, 0x1

    .line 115
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 124
    return-object v0
.end method

.method public getVisibleWindowUids()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusRootWindowContainer;->mRwc:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;

    const/16 v3, 0xf

    invoke-direct {v2, v3, v0}, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;-><init>(BLjava/lang/Object;)V

    .line 109
    const/4 v3, 0x1

    .line 104
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 110
    return-object v0
.end method
