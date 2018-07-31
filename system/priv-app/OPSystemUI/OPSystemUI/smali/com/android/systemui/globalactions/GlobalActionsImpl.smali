.class public Lcom/android/systemui/globalactions/GlobalActionsImpl;
.super Ljava/lang/Object;
.source "GlobalActionsImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/GlobalActions;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    .line 51
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 52
    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 53
    return-void
.end method


# virtual methods
.method public showGlobalActions(Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V
    .locals 3
    .param p1, "manager"    # Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    .line 61
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v2

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->showDialog(ZZ)V

    .line 62
    return-void
.end method

.method public showShutdownUi(ZLjava/lang/String;)V
    .locals 11
    .param p1, "isReboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    iget-object v9, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, "background":Lcom/android/internal/colorextraction/drawable/GradientDrawable;
    const/16 v9, 0xf2

    invoke-virtual {v0, v9}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setAlpha(I)V

    .line 69
    new-instance v4, Landroid/app/Dialog;

    iget-object v9, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    .line 70
    const v10, 0x7f120366

    .line 69
    invoke-direct {v4, v9, v10}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 72
    .local v4, "d":Landroid/app/Dialog;
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 73
    .local v8, "window":Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    const/4 v10, -0x1

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 74
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    const/4 v10, -0x1

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 75
    const/16 v9, 0x7e4

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 76
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/Window;->requestFeature(I)Z

    .line 77
    const v9, 0x10002

    invoke-virtual {v8, v9}, Landroid/view/Window;->clearFlags(I)V

    .line 80
    const v9, 0x10c0120

    .line 79
    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 85
    invoke-virtual {v8, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    const v9, 0x1030004

    invoke-virtual {v8, v9}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 88
    const v9, 0x10900e5

    invoke-virtual {v4, v9}, Landroid/app/Dialog;->setContentView(I)V

    .line 89
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 91
    iget-object v9, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    const v10, 0x7f0402b1

    invoke-static {v9, v10}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v2

    .line 92
    .local v2, "color":I
    iget-object v9, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    .line 93
    const-class v10, Landroid/app/KeyguardManager;

    .line 92
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/KeyguardManager;

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v7

    .line 95
    .local v7, "onKeyguard":Z
    const v9, 0x102000d

    invoke-virtual {v4, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 96
    .local v1, "bar":Landroid/widget/ProgressBar;
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 97
    const v9, 0x1020014

    invoke-virtual {v4, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 98
    .local v6, "message":Landroid/widget/TextView;
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    if-eqz p1, :cond_0

    const v9, 0x1040544

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 101
    :cond_0
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 102
    .local v5, "displaySize":Landroid/graphics/Point;
    iget-object v9, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 103
    const-class v9, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-static {v9}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 104
    if-eqz v7, :cond_1

    const/4 v10, 0x2

    .line 103
    :goto_0
    invoke-virtual {v9, v10}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v3

    .line 105
    .local v3, "colors":Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    const/4 v9, 0x0

    invoke-virtual {v0, v3, v9}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    .line 106
    iget v9, v5, Landroid/graphics/Point;->x:I

    iget v10, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v9, v10}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setScreenSize(II)V

    .line 108
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 109
    return-void

    .line 104
    .end local v3    # "colors":Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    :cond_1
    const/4 v10, 0x1

    goto :goto_0
.end method
