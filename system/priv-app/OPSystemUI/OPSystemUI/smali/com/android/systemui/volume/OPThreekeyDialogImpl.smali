.class public Lcom/android/systemui/volume/OPThreekeyDialogImpl;
.super Ljava/lang/Object;
.source "OPThreekeyDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/plugins/Plugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDensity:I

.field private mDialog:Landroid/app/Dialog;

.field private mDialogPosition:I

.field private mDialogView:Landroid/view/ViewGroup;

.field private final mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

.field private mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

.field private mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

.field mOrientationListener:Landroid/view/OrientationEventListener;

.field private mOrientationType:I

.field private mShowing:Z

.field private mThreeKeyIcon:Landroid/widget/ImageView;

.field private mThreeKeyText:Landroid/widget/TextView;

.field private mThreeKeystate:I

.field private mWindow:Landroid/view/Window;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowType:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/volume/OPThreekeyDialogImpl;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    .prologue
    iget v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationType:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/volume/OPThreekeyDialogImpl;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/OPThreekeyDialogImpl;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationType:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/OPThreekeyDialogImpl;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/OPThreekeyDialogImpl;
    .param p1, "reason"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->dismissH(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/volume/OPThreekeyDialogImpl;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/OPThreekeyDialogImpl;
    .param p1, "reason"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->showH(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/volume/OPThreekeyDialogImpl;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/OPThreekeyDialogImpl;
    .param p1, "threeKey"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->stateChange(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/volume/OPThreekeyDialogImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->updateThreekeyLayout()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string/jumbo v0, "OPThreekeyDialogImpl"

    sput-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    .line 56
    sget-boolean v0, Lcom/android/systemui/util/Utils;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->DEBUG:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;-><init>(Lcom/android/systemui/volume/OPThreekeyDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    .line 70
    iput-boolean v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mShowing:Z

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    .line 75
    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationType:I

    .line 81
    iput-object p1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    .line 82
    const-class v0, Lcom/android/systemui/statusbar/policy/OPZenModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/OPZenModeController;

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

    .line 84
    new-instance v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$1;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    .line 85
    const/4 v2, 0x3

    .line 84
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$1;-><init>(Lcom/android/systemui/volume/OPThreekeyDialogImpl;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 104
    return-void
.end method

.method private computeTimeoutH()I
    .locals 1

    .prologue
    .line 356
    const/16 v0, 0xbb8

    return v0
.end method

.method private dismissH(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    const/4 v2, 0x0

    .line 320
    sget-boolean v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dismissH r="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->removeMessages(I)V

    .line 322
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->removeMessages(I)V

    .line 323
    iget-boolean v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mShowing:Z

    if-nez v0, :cond_1

    return-void

    .line 325
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->registerOrientationListener(Z)V

    .line 327
    iput-boolean v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mShowing:Z

    .line 329
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 331
    return-void
.end method

.method private initDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 121
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    .line 122
    iput-boolean v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mShowing:Z

    .line 124
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    .line 125
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 126
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    const v1, 0x10c0128

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 137
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 138
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 139
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-class v1, Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x35

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 141
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialogPosition:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 142
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f0d00d2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f0a0307

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 149
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f0a0306

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyIcon:Landroid/widget/ImageView;

    .line 150
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f0a0308

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyText:Landroid/widget/TextView;

    .line 151
    return-void
.end method

.method private registerOrientationListener(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 169
    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Can detect orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 175
    :goto_0
    return-void

    .line 172
    :cond_0
    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Cannot detect orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0
.end method

.method private showH(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    const/4 v2, 0x1

    .line 304
    sget-boolean v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showH r="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->removeMessages(I)V

    .line 306
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->removeMessages(I)V

    .line 307
    invoke-virtual {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->rescheduleTimeoutH()V

    .line 308
    iget-boolean v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mShowing:Z

    if-eqz v0, :cond_1

    return-void

    .line 310
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->registerOrientationListener(Z)V

    .line 312
    iput-boolean v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mShowing:Z

    .line 313
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 314
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;->onThreekeyStateUserActivity()V

    .line 317
    :cond_2
    return-void
.end method

.method private stateChange(I)V
    .locals 3
    .param p1, "threeKey"    # I

    .prologue
    .line 334
    sget-boolean v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stateChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    iget v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-eq p1, v0, :cond_1

    .line 336
    iput p1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    .line 337
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->updateThreekeyLayout()V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;->onThreekeyStateUserActivity()V

    .line 342
    :cond_1
    return-void
.end method

.method private updateThreekeyLayout()V
    .locals 13

    .prologue
    const v9, 0x7f07045c

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 178
    iget-object v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    if-nez v8, :cond_0

    .line 179
    return-void

    .line 181
    :cond_0
    const/4 v2, 0x0

    .line 182
    .local v2, "iconId":I
    const/4 v6, 0x0

    .line 184
    .local v6, "textId":I
    const/4 v0, 0x0

    .line 185
    .local v0, "bgid":I
    iget-object v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 187
    .local v5, "res":Landroid/content/res/Resources;
    if-nez v5, :cond_1

    .line 188
    return-void

    .line 191
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 192
    .local v4, "positionY":I
    iget-object v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 193
    .local v3, "positionX":I
    iget-object v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 194
    .local v1, "gravity":I
    iget v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    packed-switch v8, :pswitch_data_0

    .line 211
    :goto_0
    iget v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOrientationType:I

    packed-switch v8, :pswitch_data_1

    .line 252
    const/16 v1, 0x35

    .line 253
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 254
    iget v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v8, v10, :cond_11

    .line 255
    const v8, 0x7f070461

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 256
    const v0, 0x7f0800dd

    .line 267
    :cond_2
    :goto_1
    const v8, 0x7f0702e4

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 270
    .local v7, "textSize":I
    iget v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_6

    .line 271
    iget-object v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyIcon:Landroid/widget/ImageView;

    if-eqz v8, :cond_3

    .line 272
    iget-object v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 274
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyText:Landroid/widget/TextView;

    if-eqz v8, :cond_4

    .line 275
    iget-object v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyText:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeyText:Landroid/widget/TextView;

    int-to-float v9, v7

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 280
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    if-eqz v8, :cond_5

    .line 281
    iget-object v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    :cond_5
    iput v4, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDialogPosition:I

    .line 286
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 287
    iget-object v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 288
    iget-object v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 289
    iget-object v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindow:Landroid/view/Window;

    iget-object v9, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->rescheduleTimeoutH()V

    .line 291
    sget-boolean v8, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->DEBUG:Z

    if-eqz v8, :cond_7

    sget-object v8, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateThreekeyLayout mThreeKeystate:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_7
    return-void

    .line 196
    .end local v7    # "textSize":I
    :pswitch_0
    const v2, 0x7f080370

    .line 197
    const v6, 0x7f1105a3

    .line 198
    goto/16 :goto_0

    .line 200
    :pswitch_1
    const v2, 0x7f080371

    .line 201
    const v6, 0x7f1105b1

    .line 202
    goto/16 :goto_0

    .line 204
    :pswitch_2
    const v2, 0x7f08036d

    .line 205
    const v6, 0x7f1105a2

    .line 206
    goto/16 :goto_0

    .line 213
    :pswitch_3
    const/16 v1, 0x33

    .line 215
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 216
    const v9, 0x105016a

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 215
    add-int v4, v8, v9

    .line 218
    iget v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v8, v10, :cond_9

    .line 219
    const v8, 0x7f070462

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 225
    :cond_8
    :goto_2
    const v0, 0x7f0800dc

    .line 226
    goto/16 :goto_1

    .line 220
    :cond_9
    iget v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v8, v11, :cond_a

    .line 221
    const v8, 0x7f070460

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_2

    .line 222
    :cond_a
    iget v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v8, v12, :cond_8

    .line 223
    const v8, 0x7f07045e

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_2

    .line 228
    :pswitch_4
    const/16 v1, 0x53

    .line 229
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 230
    iget v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v8, v10, :cond_c

    .line 231
    const v8, 0x7f070461

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 237
    :cond_b
    :goto_3
    const v0, 0x7f0800dc

    .line 238
    goto/16 :goto_1

    .line 232
    :cond_c
    iget v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v8, v11, :cond_d

    .line 233
    const v8, 0x7f07045f

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_3

    .line 234
    :cond_d
    iget v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v8, v12, :cond_b

    .line 235
    const v8, 0x7f07045d

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_3

    .line 240
    :pswitch_5
    const/16 v1, 0x55

    .line 241
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 242
    iget v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v8, v10, :cond_f

    .line 243
    const v8, 0x7f070462

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 249
    :cond_e
    :goto_4
    const v0, 0x7f0800dc

    .line 250
    goto/16 :goto_1

    .line 244
    :cond_f
    iget v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v8, v11, :cond_10

    .line 245
    const v8, 0x7f070460

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_4

    .line 246
    :cond_10
    iget v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v8, v12, :cond_e

    .line 247
    const v8, 0x7f07045e

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_4

    .line 257
    :cond_11
    iget v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v8, v11, :cond_12

    .line 258
    const v8, 0x7f07045f

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 259
    const v0, 0x7f0800dc

    goto/16 :goto_1

    .line 260
    :cond_12
    iget v8, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    if-ne v8, v12, :cond_2

    .line 261
    const v8, 0x7f07045d

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 262
    const v0, 0x7f0800db

    goto/16 :goto_1

    .line 194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 211
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public init(ILcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;)V
    .locals 2
    .param p1, "windowType"    # I
    .param p2, "listener"    # Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    .prologue
    .line 107
    iput p1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mWindowType:I

    .line 108
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 109
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mDensity:I

    .line 110
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/OPZenModeController;->addCallback(Ljava/lang/Object;)V

    .line 111
    iput-object p2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->initDialog()V

    .line 113
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->dismissH(I)V

    .line 386
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->initDialog()V

    .line 387
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->updateThreekeyLayout()V

    .line 388
    return-void
.end method

.method public onThreeKeyStatus(I)V
    .locals 4
    .param p1, "threekey"    # I

    .prologue
    const/4 v3, 0x0

    .line 296
    sget-boolean v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onThreeKeyStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, v3}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 298
    iget v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mThreeKeystate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 299
    invoke-virtual {p0, v3}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->show(I)V

    .line 301
    :cond_1
    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 345
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->removeMessages(I)V

    .line 346
    invoke-direct {p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->computeTimeoutH()I

    move-result v0

    .line 347
    .local v0, "timeout":I
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    iget-object v2, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    .line 348
    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 347
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 348
    int-to-long v4, v0

    .line 347
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 349
    sget-boolean v1, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rescheduleTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    if-eqz v1, :cond_1

    .line 351
    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mListener:Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;->onThreekeyStateUserActivity()V

    .line 353
    :cond_1
    return-void
.end method

.method public show(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 155
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->mHandler:Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 158
    return-void
.end method
