.class public Lcom/android/systemui/statusbar/SettingConfirmationSnackbarViewCreator;
.super Ljava/lang/Object;
.source "SettingConfirmationSnackbarViewCreator.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSnackbarView:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarViewCreator;->mContext:Landroid/content/Context;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarViewCreator;->mContext:Landroid/content/Context;

    .line 40
    const-string/jumbo v1, "window"

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarViewCreator;->mWindowManager:Landroid/view/WindowManager;

    .line 41
    return-void
.end method

.method private attachSnackBar()V
    .locals 6

    .prologue
    .line 50
    iget-object v1, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarViewCreator;->mSnackbarView:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    if-eqz v1, :cond_0

    .line 51
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 52
    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 53
    const/16 v3, 0x7e8

    .line 54
    const/16 v4, 0x8

    .line 55
    const/4 v5, -0x3

    .line 51
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 56
    .local v0, "snackbarLp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 57
    iget-object v1, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarViewCreator;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarViewCreator;->mSnackbarView:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .end local v0    # "snackbarLp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method private initSnackBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarViewCreator;->mContext:Landroid/content/Context;

    .line 45
    const v1, 0x7f0d0103

    .line 44
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarViewCreator;->mSnackbarView:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarViewCreator;->mSnackbarView:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarViewCreator;->attachSnackBar()V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public getSnackbarView()Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarViewCreator;->initSnackBar()V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarViewCreator;->mSnackbarView:Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;

    return-object v0
.end method
