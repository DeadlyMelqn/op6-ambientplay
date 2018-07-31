.class public Lcom/android/systemui/qs/QSSecurityFooter;
.super Ljava/lang/Object;
.source "QSSecurityFooter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSSecurityFooter$1;,
        Lcom/android/systemui/qs/QSSecurityFooter$2;,
        Lcom/android/systemui/qs/QSSecurityFooter$Callback;,
        Lcom/android/systemui/qs/QSSecurityFooter$H;,
        Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mDivider:Landroid/view/View;

.field private final mFooterIcon:Landroid/widget/ImageView;

.field private mFooterIconId:I

.field private final mFooterText:Landroid/widget/TextView;

.field private mFooterTextContent:Ljava/lang/CharSequence;

.field protected mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mIsVisible:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private final mRootView:Landroid/view/View;

.field private final mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private final mUm:Landroid/os/UserManager;

.field private final mUpdateDisplayState:Ljava/lang/Runnable;

.field private final mUpdateIcon:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSSecurityFooter;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDivider:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/QSSecurityFooter;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .prologue
    iget v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/widget/TextView;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/QSSecurityFooter;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterTextContent:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/QSSecurityFooter;)Lcom/android/systemui/qs/QSTileHost;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/qs/QSSecurityFooter;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mIsVisible:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->handleClick()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->handleRefreshState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-string/jumbo v0, "QSSecurityFooter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSSecurityFooter;->DEBUG:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Context;)V
    .locals 4
    .param p1, "qsPanel"    # Lcom/android/systemui/qs/QSPanel;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooter$Callback;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Lcom/android/systemui/qs/QSSecurityFooter$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    .line 77
    iput-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterTextContent:Ljava/lang/CharSequence;

    .line 456
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$1;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateIcon:Ljava/lang/Runnable;

    .line 463
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$2;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateDisplayState:Ljava/lang/Runnable;

    .line 82
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 83
    const v2, 0x7f0d0115

    const/4 v3, 0x0

    .line 82
    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    const v2, 0x7f0a00fb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    const v2, 0x7f0a00fa

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIcon:Landroid/widget/ImageView;

    .line 90
    const v0, 0x7f080155

    iput v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    .line 91
    iput-object p2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    .line 93
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 94
    const-class v0, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityController;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 95
    new-instance v2, Lcom/android/systemui/qs/QSSecurityFooter$H;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/qs/QSSecurityFooter$H;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Landroid/os/Looper;Lcom/android/systemui/qs/QSSecurityFooter$H;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    .line 96
    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDivider:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUm:Landroid/os/UserManager;

    .line 98
    return-void

    .line 96
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getDivider()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private createDialog()V
    .locals 32

    .prologue
    .line 256
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/SecurityController;->isDeviceManaged()Z

    move-result v20

    .line 257
    .local v20, "isDeviceManaged":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasWorkProfile()Z

    move-result v19

    .line 259
    .local v19, "hasWorkProfile":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v16

    .line 260
    .local v16, "deviceOwnerOrganization":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInCurrentUser()Z

    move-result v17

    .line 261
    .local v17, "hasCACerts":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInWorkProfile()Z

    move-result v18

    .line 262
    .local v18, "hasCACertsInWorkProfile":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/SecurityController;->isNetworkLoggingEnabled()Z

    move-result v22

    .line 263
    .local v22, "isNetworkLoggingEnabled":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/SecurityController;->getPrimaryVpnName()Ljava/lang/String;

    move-result-object v27

    .line 264
    .local v27, "vpnName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileVpnName()Ljava/lang/String;

    move-result-object v28

    .line 266
    .local v28, "vpnNameWorkProfile":Ljava/lang/String;
    new-instance v6, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    .line 267
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 269
    new-instance v6, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v8, 0x7f120364

    invoke-direct {v6, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 268
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 270
    const v7, 0x7f0d0116

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 268
    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 271
    .local v11, "dialogView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v11}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSSecurityFooter;->getPositiveButton()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v6, v8, v7, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 275
    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/QSSecurityFooter;->getManagementMessage(ZLjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v23

    .line 277
    .local v23, "managementMessage":Ljava/lang/CharSequence;
    if-nez v23, :cond_0

    .line 278
    const v6, 0x7f0a00c2

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 288
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/QSSecurityFooter;->getCaCertsMessage(ZZZ)Ljava/lang/CharSequence;

    move-result-object v12

    .line 290
    .local v12, "caCertsMessage":Ljava/lang/CharSequence;
    if-nez v12, :cond_1

    .line 291
    const v6, 0x7f0a0075

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 301
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSSecurityFooter;->getNetworkLoggingMessage(Z)Ljava/lang/CharSequence;

    move-result-object v24

    .line 302
    .local v24, "networkLoggingMessage":Ljava/lang/CharSequence;
    if-nez v24, :cond_2

    .line 303
    const v6, 0x7f0a01f3

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 312
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/qs/QSSecurityFooter;->getVpnMessage(ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v26

    .line 314
    .local v26, "vpnMessage":Ljava/lang/CharSequence;
    if-nez v26, :cond_3

    .line 315
    const v6, 0x7f0a035e

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 326
    :goto_3
    if-eqz v23, :cond_4

    const/4 v7, 0x1

    .line 327
    :goto_4
    if-eqz v12, :cond_5

    const/4 v8, 0x1

    .line 328
    :goto_5
    if-eqz v24, :cond_6

    const/4 v9, 0x1

    .line 329
    :goto_6
    if-eqz v26, :cond_7

    const/4 v10, 0x1

    :goto_7
    move-object/from16 v6, p0

    .line 326
    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/qs/QSSecurityFooter;->configSubtitleVisibility(ZZZZLandroid/view/View;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 336
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/view/WindowManager;

    .line 337
    .local v31, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v31 .. v31}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    .line 338
    .local v14, "d":Landroid/view/Display;
    const/16 v30, 0x0

    .line 339
    .local v30, "width":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    const/16 v21, 0x1

    .line 340
    .local v21, "isLandscape":Z
    :goto_8
    const/4 v6, 0x1

    new-array v6, v6, [I

    const/16 v7, 0x2a

    const/4 v8, 0x0

    aput v7, v6, v8

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v21, :cond_9

    .line 341
    invoke-virtual {v14}, Landroid/view/Display;->getWidth()I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v6, v8

    double-to-int v0, v6

    move/from16 v30, v0

    .line 346
    :goto_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 347
    const/4 v7, -0x2

    .line 346
    move/from16 v0, v30

    invoke-virtual {v6, v0, v7}, Landroid/view/Window;->setLayout(II)V

    .line 349
    return-void

    .line 280
    .end local v12    # "caCertsMessage":Ljava/lang/CharSequence;
    .end local v14    # "d":Landroid/view/Display;
    .end local v21    # "isLandscape":Z
    .end local v24    # "networkLoggingMessage":Ljava/lang/CharSequence;
    .end local v26    # "vpnMessage":Ljava/lang/CharSequence;
    .end local v30    # "width":I
    .end local v31    # "wm":Landroid/view/WindowManager;
    :cond_0
    const v6, 0x7f0a00c2

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 282
    const v6, 0x7f0a00c4

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 283
    .local v15, "deviceManagementWarning":Landroid/widget/TextView;
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSSecurityFooter;->getSettingsButton()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v6, v8, v7, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 293
    .end local v15    # "deviceManagementWarning":Landroid/widget/TextView;
    .restart local v12    # "caCertsMessage":Ljava/lang/CharSequence;
    :cond_1
    const v6, 0x7f0a0075

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 294
    const v6, 0x7f0a0077

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 295
    .local v13, "caCertsWarning":Landroid/widget/TextView;
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    new-instance v6, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v6}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_1

    .line 305
    .end local v13    # "caCertsWarning":Landroid/widget/TextView;
    .restart local v24    # "networkLoggingMessage":Ljava/lang/CharSequence;
    :cond_2
    const v6, 0x7f0a01f3

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 307
    const v6, 0x7f0a01f5

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 308
    .local v25, "networkLoggingWarning":Landroid/widget/TextView;
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 317
    .end local v25    # "networkLoggingWarning":Landroid/widget/TextView;
    .restart local v26    # "vpnMessage":Ljava/lang/CharSequence;
    :cond_3
    const v6, 0x7f0a035e

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 318
    const v6, 0x7f0a0360

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 319
    .local v29, "vpnWarning":Landroid/widget/TextView;
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    new-instance v6, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v6}, Landroid/text/method/LinkMovementMethod;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_3

    .line 326
    .end local v29    # "vpnWarning":Landroid/widget/TextView;
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 327
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 328
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 329
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 339
    .restart local v14    # "d":Landroid/view/Display;
    .restart local v30    # "width":I
    .restart local v31    # "wm":Landroid/view/WindowManager;
    :cond_8
    const/16 v21, 0x0

    .restart local v21    # "isLandscape":Z
    goto/16 :goto_8

    .line 343
    :cond_9
    const/16 v30, -0x1

    goto/16 :goto_9
.end method

.method private getPositiveButton()Ljava/lang/String;
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1103b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSettingsButton()Ljava/lang/String;
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f110351

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleClick()V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->showDeviceMonitoringDialog()V

    .line 131
    return-void
.end method

.method private handleRefreshState()V
    .locals 18

    .prologue
    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->isDeviceManaged()Z

    move-result v3

    .line 145
    .local v3, "isDeviceManaged":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v15

    invoke-virtual {v2, v15}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v12

    .line 146
    .local v12, "currentUser":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v12, :cond_4

    .line 147
    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v14

    .line 148
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasWorkProfile()Z

    move-result v4

    .line 149
    .local v4, "hasWorkProfile":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInCurrentUser()Z

    move-result v5

    .line 150
    .local v5, "hasCACerts":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInWorkProfile()Z

    move-result v6

    .line 151
    .local v6, "hasCACertsInWorkProfile":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->isNetworkLoggingEnabled()Z

    move-result v7

    .line 152
    .local v7, "isNetworkLoggingEnabled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->getPrimaryVpnName()Ljava/lang/String;

    move-result-object v8

    .line 153
    .local v8, "vpnName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileVpnName()Ljava/lang/String;

    move-result-object v9

    .line 154
    .local v9, "vpnNameWorkProfile":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v10

    .line 155
    .local v10, "organizationName":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileOrganizationName()Ljava/lang/CharSequence;

    move-result-object v11

    .line 157
    .local v11, "workProfileName":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    xor-int/lit8 v2, v14, 0x1

    if-nez v2, :cond_1

    :cond_0
    if-nez v5, :cond_1

    if-nez v6, :cond_1

    .line 158
    if-eqz v8, :cond_5

    .line 157
    :cond_1
    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mIsVisible:Z

    move-object/from16 v2, p0

    .line 160
    invoke-virtual/range {v2 .. v11}, Lcom/android/systemui/qs/QSSecurityFooter;->getFooterText(ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterTextContent:Ljava/lang/CharSequence;

    .line 164
    if-nez v8, :cond_2

    if-eqz v9, :cond_7

    .line 165
    :cond_2
    const v13, 0x7f080250

    .line 167
    .local v13, "footerIconId":I
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    if-eq v2, v13, :cond_3

    .line 168
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateIcon:Ljava/lang/Runnable;

    invoke-virtual {v2, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateDisplayState:Ljava/lang/Runnable;

    const-wide/16 v16, 0x1f4

    move-wide/from16 v0, v16

    invoke-virtual {v2, v15, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    return-void

    .line 146
    .end local v4    # "hasWorkProfile":Z
    .end local v5    # "hasCACerts":Z
    .end local v6    # "hasCACertsInWorkProfile":Z
    .end local v7    # "isNetworkLoggingEnabled":Z
    .end local v8    # "vpnName":Ljava/lang/String;
    .end local v9    # "vpnNameWorkProfile":Ljava/lang/String;
    .end local v10    # "organizationName":Ljava/lang/CharSequence;
    .end local v11    # "workProfileName":Ljava/lang/CharSequence;
    .end local v13    # "footerIconId":I
    :cond_4
    const/4 v14, 0x0

    .local v14, "isDemoDevice":Z
    goto/16 :goto_0

    .line 158
    .end local v14    # "isDemoDevice":Z
    .restart local v4    # "hasWorkProfile":Z
    .restart local v5    # "hasCACerts":Z
    .restart local v6    # "hasCACertsInWorkProfile":Z
    .restart local v7    # "isNetworkLoggingEnabled":Z
    .restart local v8    # "vpnName":Ljava/lang/String;
    .restart local v9    # "vpnNameWorkProfile":Ljava/lang/String;
    .restart local v10    # "organizationName":Ljava/lang/CharSequence;
    .restart local v11    # "workProfileName":Ljava/lang/CharSequence;
    :cond_5
    if-eqz v9, :cond_6

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 166
    :cond_7
    const v13, 0x7f080155

    .restart local v13    # "footerIconId":I
    goto :goto_2
.end method


# virtual methods
.method protected configSubtitleVisibility(ZZZZLandroid/view/View;)V
    .locals 3
    .param p1, "showDeviceManagement"    # Z
    .param p2, "showCaCerts"    # Z
    .param p3, "showNetworkLogging"    # Z
    .param p4, "showVpn"    # Z
    .param p5, "dialogView"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    .line 355
    if-eqz p1, :cond_0

    .line 356
    return-void

    .line 359
    :cond_0
    const/4 v0, 0x0

    .line 360
    .local v0, "mSectionCountExcludingDeviceMgt":I
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 361
    :cond_1
    if-eqz p3, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 362
    :cond_2
    if-eqz p4, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 365
    :cond_3
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 366
    return-void

    .line 368
    :cond_4
    if-eqz p2, :cond_5

    .line 369
    const v1, 0x7f0a0076

    invoke-virtual {p5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 371
    :cond_5
    if-eqz p3, :cond_6

    .line 372
    const v1, 0x7f0a01f4

    invoke-virtual {p5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 374
    :cond_6
    if-eqz p4, :cond_7

    .line 375
    const v1, 0x7f0a035f

    invoke-virtual {p5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 377
    :cond_7
    return-void
.end method

.method protected getCaCertsMessage(ZZZ)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "isDeviceManaged"    # Z
    .param p2, "hasCACerts"    # Z
    .param p3, "hasCACertsInWorkProfile"    # Z

    .prologue
    .line 398
    if-nez p2, :cond_0

    move v0, p3

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 399
    :cond_1
    if-eqz p1, :cond_2

    .line 400
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f110362

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 402
    :cond_2
    if-eqz p3, :cond_3

    .line 403
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 404
    const v1, 0x7f11035f

    .line 403
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 406
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f110358

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFooterText(ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "isDeviceManaged"    # Z
    .param p2, "hasWorkProfile"    # Z
    .param p3, "hasCACerts"    # Z
    .param p4, "hasCACertsInWorkProfile"    # Z
    .param p5, "isNetworkLoggingEnabled"    # Z
    .param p6, "vpnName"    # Ljava/lang/String;
    .param p7, "vpnNameWorkProfile"    # Ljava/lang/String;
    .param p8, "organizationName"    # Ljava/lang/CharSequence;
    .param p9, "workProfileName"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 181
    if-eqz p1, :cond_b

    .line 182
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    if-eqz p5, :cond_2

    .line 183
    :cond_0
    if-nez p8, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 185
    const v1, 0x7f110431

    .line 184
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    .line 189
    aput-object p8, v1, v2

    .line 188
    const v2, 0x7f110437

    .line 187
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 191
    :cond_2
    if-eqz p6, :cond_4

    if-eqz p7, :cond_4

    .line 192
    if-nez p8, :cond_3

    .line 193
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f110433

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    .line 196
    aput-object p8, v1, v2

    .line 195
    const v2, 0x7f110439

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 198
    :cond_4
    if-nez p6, :cond_5

    if-eqz p7, :cond_9

    .line 199
    :cond_5
    if-nez p8, :cond_7

    .line 200
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    .line 202
    if-eqz p6, :cond_6

    .end local p6    # "vpnName":Ljava/lang/String;
    :goto_0
    aput-object p6, v1, v2

    .line 201
    const v2, 0x7f110432

    .line 200
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .restart local p6    # "vpnName":Ljava/lang/String;
    :cond_6
    move-object p6, p7

    .line 202
    goto :goto_0

    .line 204
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 206
    aput-object p8, v1, v2

    .line 207
    if-eqz p6, :cond_8

    .end local p6    # "vpnName":Ljava/lang/String;
    :goto_1
    aput-object p6, v1, v3

    .line 205
    const v2, 0x7f110438

    .line 204
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .restart local p6    # "vpnName":Ljava/lang/String;
    :cond_8
    move-object p6, p7

    .line 207
    goto :goto_1

    .line 209
    :cond_9
    if-nez p8, :cond_a

    .line 210
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f110430

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 212
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    .line 213
    aput-object p8, v1, v2

    .line 212
    const v2, 0x7f110436

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 215
    :cond_b
    if-eqz p4, :cond_d

    .line 216
    if-nez p9, :cond_c

    .line 217
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 218
    const v1, 0x7f11042e

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 220
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    .line 222
    aput-object p9, v1, v2

    .line 221
    const v2, 0x7f110435

    .line 220
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 224
    :cond_d
    if-eqz p3, :cond_e

    .line 225
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f110434

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 227
    :cond_e
    if-eqz p6, :cond_f

    if-eqz p7, :cond_f

    .line 228
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f11043c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 230
    :cond_f
    if-eqz p7, :cond_10

    .line 231
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    .line 232
    aput-object p7, v1, v2

    .line 231
    const v2, 0x7f11042f

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 234
    :cond_10
    if-eqz p6, :cond_12

    .line 235
    if-eqz p2, :cond_11

    .line 236
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    .line 238
    aput-object p6, v1, v2

    .line 237
    const v2, 0x7f11043b

    .line 236
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 240
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    .line 241
    aput-object p6, v1, v2

    .line 240
    const v2, 0x7f11043a

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 243
    :cond_12
    return-object v0
.end method

.method protected getManagementMessage(ZLjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "isDeviceManaged"    # Z
    .param p2, "organizationName"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 389
    if-nez p1, :cond_0

    return-object v0

    .line 390
    :cond_0
    if-eqz p2, :cond_1

    .line 391
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 392
    const/4 v2, 0x0

    aput-object p2, v1, v2

    const v2, 0x7f110364

    .line 391
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f110361

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNetworkLoggingMessage(Z)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "isNetworkLoggingEnabled"    # Z

    .prologue
    .line 410
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f110363

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method protected getVpnMessage(ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "isDeviceManaged"    # Z
    .param p2, "hasWorkProfile"    # Z
    .param p3, "vpnName"    # Ljava/lang/String;
    .param p4, "vpnNameWorkProfile"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f110365

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 416
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-object v1

    .line 417
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 418
    .local v0, "message":Landroid/text/SpannableStringBuilder;
    if-eqz p1, :cond_3

    .line 419
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 420
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    .line 421
    aput-object p3, v2, v4

    aput-object p4, v2, v3

    .line 420
    const v3, 0x7f110368

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 442
    .end local p3    # "vpnName":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v2, 0x7f11036c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 443
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v2, 0x7f11036b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 444
    new-instance v2, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    .line 443
    invoke-virtual {v0, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 445
    return-object v0

    .line 423
    .restart local p3    # "vpnName":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    .line 424
    if-eqz p3, :cond_2

    .end local p3    # "vpnName":Ljava/lang/String;
    :goto_1
    aput-object p3, v2, v4

    .line 423
    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .restart local p3    # "vpnName":Ljava/lang/String;
    :cond_2
    move-object p3, p4

    .line 424
    goto :goto_1

    .line 427
    :cond_3
    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    .line 428
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    .line 429
    aput-object p3, v2, v4

    aput-object p4, v2, v3

    .line 428
    const v3, 0x7f110368

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 430
    :cond_4
    if-eqz p4, :cond_5

    .line 431
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    .line 433
    aput-object p4, v2, v4

    .line 432
    const v3, 0x7f110360

    .line 431
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 434
    :cond_5
    if-eqz p2, :cond_6

    .line 435
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    .line 436
    aput-object p3, v2, v4

    const v3, 0x7f110367

    .line 435
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 438
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    .line 439
    aput-object p3, v2, v4

    .line 438
    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 248
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.ENTERPRISE_PRIVACY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 251
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 253
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSSecurityFooter$H;->sendEmptyMessage(I)Z

    .line 127
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    const v1, 0x7f0703a7

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 114
    return-void
.end method

.method public refreshState()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSSecurityFooter$H;->sendEmptyMessage(I)Z

    .line 141
    return-void
.end method

.method public setHostEnvironment(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 102
    return-void
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Ljava/lang/Object;)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->removeCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public showDeviceMonitoringDialog()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->collapsePanels()V

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->createDialog()V

    .line 137
    return-void
.end method

.method public updateThemeColor()V
    .locals 2

    .prologue
    .line 530
    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->QS_TEXT:I

    invoke-static {v1}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    .line 531
    .local v0, "textColor":I
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 532
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 533
    return-void
.end method
