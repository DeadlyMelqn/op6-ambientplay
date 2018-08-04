.class public Lcom/android/systemui/qs/car/CarQSFooter;
.super Landroid/widget/RelativeLayout;
.source "CarQSFooter.java"

# interfaces
.implements Lcom/android/systemui/qs/QSFooter;
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;


# instance fields
.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field private mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mUserGridView:Lcom/android/systemui/statusbar/car/UserGridView;

.field private mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field private mUserName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method static synthetic lambda$-com_android_systemui_qs_car_CarQSFooter_2902(Landroid/view/View;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 79
    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 81
    .local v0, "activityStarter":Lcom/android/systemui/plugins/ActivityStarter;
    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/systemui/qs/car/-$Lambda$PJuwMVrpZEqa7QDEs4dfDCdYkDI$1;->$INST$0:Lcom/android/systemui/qs/car/-$Lambda$PJuwMVrpZEqa7QDEs4dfDCdYkDI$1;

    .line 83
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 84
    return-void

    .line 87
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    const/4 v2, 0x1

    .line 87
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_qs_car_CarQSFooter_3240()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getExpandView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_qs_car_CarQSFooter_2489(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridView;

    if-nez v0, :cond_0

    .line 67
    const-string/jumbo v0, "CarQSFooter"

    const-string/jumbo v1, "CarQSFooter not properly set up; cannot display user switcher."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/UserGridView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/UserGridView;->show()V

    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/UserGridView;->hide()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 59
    const v0, 0x7f0a01ba

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/car/CarQSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const v1, 0x7f0a01b9

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 61
    const v0, 0x7f0a02c1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/car/CarQSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserName:Landroid/widget/TextView;

    .line 63
    const-class v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    iput-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    new-instance v1, Lcom/android/systemui/qs/car/-$Lambda$PJuwMVrpZEqa7QDEs4dfDCdYkDI$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/car/-$Lambda$PJuwMVrpZEqa7QDEs4dfDCdYkDI$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v0, 0x7f0a025c

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/car/CarQSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/qs/car/-$Lambda$PJuwMVrpZEqa7QDEs4dfDCdYkDI;->$INST$0:Lcom/android/systemui/qs/car/-$Lambda$PJuwMVrpZEqa7QDEs4dfDCdYkDI;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "picture"    # Landroid/graphics/drawable/Drawable;
    .param p3, "userAccount"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

.method public setExpanded(Z)V
    .locals 0
    .param p1, "expanded"    # Z

    .prologue
    .line 128
    return-void
.end method

.method public setExpansion(F)V
    .locals 0
    .param p1, "expansion"    # F

    .prologue
    .line 133
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0
    .param p1, "keyguardShowing"    # Z

    .prologue
    .line 138
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addCallback(Ljava/lang/Object;)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->removeCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 1
    .param p1, "panel"    # Lcom/android/systemui/qs/QSPanel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 103
    :cond_0
    return-void
.end method

.method public setUserGridView(Lcom/android/systemui/statusbar/car/UserGridView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/car/UserGridView;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridView;

    .line 107
    return-void
.end method
