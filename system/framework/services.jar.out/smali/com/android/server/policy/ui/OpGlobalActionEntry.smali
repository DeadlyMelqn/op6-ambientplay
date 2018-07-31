.class public Lcom/android/server/policy/ui/OpGlobalActionEntry;
.super Landroid/widget/FrameLayout;
.source "OpGlobalActionEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;
    }
.end annotation


# static fields
.field private static final RIPPLE_COLOR:I = -0x1


# instance fields
.field private mAction:Lcom/android/server/policy/OpGlobalActions$Action;

.field private mActionConfirmLabel:Landroid/widget/TextView;

.field private mActionIcon:Landroid/widget/ImageView;

.field private mActionLabel:Landroid/widget/TextView;

.field private mAnims:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

.field private mContext:Landroid/content/Context;

.field private mOnGlobalActionAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mOnGlobalActionClickListener:Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;

.field private mSelected:Z

.field private mState:Lcom/android/server/policy/OpGlobalActions$ActionState;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Lcom/android/server/policy/OpGlobalActions$Action;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAction:Lcom/android/server/policy/OpGlobalActions$Action;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Landroid/widget/TextView;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionConfirmLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Landroid/widget/TextView;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mOnGlobalActionClickListener:Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mSelected:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Lcom/android/server/policy/OpGlobalActions$ActionState;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/ui/OpGlobalActionEntry;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/policy/ui/OpGlobalActionEntry;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mSelected:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    .line 30
    iput-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionLabel:Landroid/widget/TextView;

    .line 31
    iput-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionConfirmLabel:Landroid/widget/TextView;

    .line 36
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mSelected:Z

    .line 38
    sget-object v1, Lcom/android/server/policy/OpGlobalActions$ActionState;->INIT:Lcom/android/server/policy/OpGlobalActions$ActionState;

    iput-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    .line 43
    iput-object p1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 45
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x5030005

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    .line 30
    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionLabel:Landroid/widget/TextView;

    .line 31
    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionConfirmLabel:Landroid/widget/TextView;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mSelected:Z

    .line 38
    sget-object v0, Lcom/android/server/policy/OpGlobalActions$ActionState;->INIT:Lcom/android/server/policy/OpGlobalActions$ActionState;

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    .line 30
    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionLabel:Landroid/widget/TextView;

    .line 31
    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionConfirmLabel:Landroid/widget/TextView;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mSelected:Z

    .line 38
    sget-object v0, Lcom/android/server/policy/OpGlobalActions$ActionState;->INIT:Lcom/android/server/policy/OpGlobalActions$ActionState;

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    .line 78
    return-void
.end method

.method private setAction(Lcom/android/server/policy/OpGlobalActions$Action;)V
    .locals 0
    .param p1, "action"    # Lcom/android/server/policy/OpGlobalActions$Action;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAction:Lcom/android/server/policy/OpGlobalActions$Action;

    .line 301
    return-void
.end method

.method private setActionConfirmText(I)V
    .locals 2
    .param p1, "textResId"    # I

    .prologue
    .line 131
    const v0, 0x50e000b

    invoke-virtual {p0, v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionConfirmLabel:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionConfirmLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 134
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionConfirmLabel:Landroid/widget/TextView;

    new-instance v1, Lcom/android/server/policy/ui/OpGlobalActionEntry$4;

    invoke-direct {v1, p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry$4;-><init>(Lcom/android/server/policy/ui/OpGlobalActionEntry;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method

.method private setActionIcon(Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bgResId"    # I

    .prologue
    const/16 v2, 0xd8

    .line 81
    const v0, 0x50e0009

    invoke-virtual {p0, v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    .line 82
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 83
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 84
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 86
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 88
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/server/policy/ui/OpGlobalActionEntry$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry$1;-><init>(Lcom/android/server/policy/ui/OpGlobalActionEntry;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/server/policy/ui/OpGlobalActionEntry$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry$2;-><init>(Lcom/android/server/policy/ui/OpGlobalActionEntry;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 116
    return-void
.end method

.method private setActionText(I)V
    .locals 2
    .param p1, "textResId"    # I

    .prologue
    .line 119
    const v0, 0x50e000a

    invoke-virtual {p0, v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionLabel:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 122
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionLabel:Landroid/widget/TextView;

    new-instance v1, Lcom/android/server/policy/ui/OpGlobalActionEntry$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry$3;-><init>(Lcom/android/server/policy/ui/OpGlobalActionEntry;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-void
.end method

.method private setAnimation(Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;)V
    .locals 0
    .param p1, "anim"    # Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAnims:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    .line 305
    return-void
.end method

.method private setOnGlobalActionAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mOnGlobalActionAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 232
    return-void
.end method

.method private setOnGlobalActionClickListener(Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mOnGlobalActionClickListener:Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;

    .line 228
    return-void
.end method

.method private startAnimateBackground()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x190

    .line 280
    const/4 v2, 0x0

    const/16 v3, 0x190

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 281
    .local v1, "mAnimator":Landroid/animation/ValueAnimator;
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 282
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    new-instance v2, Lcom/android/server/policy/ui/OpGlobalActionEntry$6;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry$6;-><init>(Lcom/android/server/policy/ui/OpGlobalActionEntry;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 292
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 293
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 294
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 296
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 297
    return-void
.end method

.method private startAnimateIcon()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/ui/OpGlobalActionIcon;

    invoke-virtual {v0}, Lcom/android/server/policy/ui/OpGlobalActionIcon;->startAnimateConfirmed()V

    .line 275
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 276
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 277
    return-void
.end method


# virtual methods
.method public getMyIndex()I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAction:Lcom/android/server/policy/OpGlobalActions$Action;

    invoke-virtual {v0}, Lcom/android/server/policy/OpGlobalActions$Action;->ordinal()I

    move-result v0

    return v0
.end method

.method public setRippleColor(J)V
    .locals 9
    .param p1, "color"    # J

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 313
    iget-object v5, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mContext:Landroid/content/Context;

    const v6, 0x5020016

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/RippleDrawable;

    .line 315
    .local v3, "ripple":Landroid/graphics/drawable/RippleDrawable;
    long-to-int v1, p1

    .line 317
    .local v1, "color_":I
    new-array v2, v8, [I

    aput v1, v2, v7

    .line 318
    .local v2, "colors":[I
    new-array v4, v8, [[I

    .line 319
    .local v4, "states":[[I
    new-array v5, v7, [I

    aput-object v5, v4, v7

    .line 320
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v4, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 322
    .local v0, "colorList":Landroid/content/res/ColorStateList;
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 324
    iget-object v5, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 325
    return-void
.end method

.method public setup(Landroid/graphics/drawable/Drawable;IIILcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;Landroid/view/animation/Animation$AnimationListener;Lcom/android/server/policy/OpGlobalActions$Action;Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;I)V
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bgResId"    # I
    .param p3, "actionTextId"    # I
    .param p4, "confirmTextId"    # I
    .param p5, "clickListener"    # Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;
    .param p6, "animationListener"    # Landroid/view/animation/Animation$AnimationListener;
    .param p7, "action"    # Lcom/android/server/policy/OpGlobalActions$Action;
    .param p8, "animationCollect"    # Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;
    .param p9, "marginTop"    # I

    .prologue
    const/4 v3, -0x2

    .line 52
    const v1, 0x50e0009

    invoke-virtual {p0, v1}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    .line 53
    iget-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setActionIcon(Landroid/graphics/drawable/Drawable;I)V

    .line 59
    invoke-direct {p0, p3}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setActionText(I)V

    .line 60
    invoke-direct {p0, p4}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setActionConfirmText(I)V

    .line 61
    invoke-direct {p0, p5}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setOnGlobalActionClickListener(Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;)V

    .line 62
    invoke-direct {p0, p6}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setOnGlobalActionAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 63
    invoke-direct {p0, p7}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setAction(Lcom/android/server/policy/OpGlobalActions$Action;)V

    .line 64
    invoke-direct {p0, p8}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setAnimation(Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;)V

    .line 65
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 67
    iput p9, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    const-wide/16 v2, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setRippleColor(J)V

    .line 70
    return-void
.end method

.method public startAnimate(Lcom/android/server/policy/OpGlobalActions$ActionState;)V
    .locals 8
    .param p1, "state"    # Lcom/android/server/policy/OpGlobalActions$ActionState;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/4 v5, 0x1

    const/4 v4, -0x2

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "animSet":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    .line 146
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput-object p1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;

    .line 147
    sget-object v2, Lcom/android/server/policy/OpGlobalActions$ActionState;->SHOWING:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-ne p1, v2, :cond_2

    .line 149
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAnims:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    invoke-virtual {v2}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->getShowAnimSets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->getMyIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "animSet":Landroid/view/animation/AnimationSet;
    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 150
    .local v0, "animSet":Landroid/view/animation/AnimationSet;
    iput-boolean v6, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mSelected:Z

    .line 221
    .end local v0    # "animSet":Landroid/view/animation/AnimationSet;
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p0, v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->startAnimation(Landroid/view/animation/Animation;)V

    .line 224
    :cond_1
    return-void

    .line 151
    .local v0, "animSet":Landroid/view/animation/AnimationSet;
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    sget-object v2, Lcom/android/server/policy/OpGlobalActions$ActionState;->ADVANCED_SHOWN:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-ne p1, v2, :cond_5

    .line 152
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAction:Lcom/android/server/policy/OpGlobalActions$Action;

    sget-object v3, Lcom/android/server/policy/OpGlobalActions$Action;->POWER_OFF:Lcom/android/server/policy/OpGlobalActions$Action;

    if-ne v2, v3, :cond_3

    .line 154
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAnims:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    invoke-virtual {v2}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->getHideAnimSet()Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 167
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .local v0, "animSet":Landroid/view/animation/AnimationSet;
    :goto_1
    iput-boolean v6, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mSelected:Z

    goto :goto_0

    .line 155
    .local v0, "animSet":Landroid/view/animation/AnimationSet;
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAction:Lcom/android/server/policy/OpGlobalActions$Action;

    sget-object v3, Lcom/android/server/policy/OpGlobalActions$Action;->REBOOT:Lcom/android/server/policy/OpGlobalActions$Action;

    if-ne v2, v3, :cond_4

    .line 157
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 158
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x1dd

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 159
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 160
    invoke-virtual {p0, v1}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAnims:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    invoke-virtual {v2}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->getAdvShowAnimSets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->getMyIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "animSet":Landroid/view/animation/AnimationSet;
    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 162
    .local v0, "animSet":Landroid/view/animation/AnimationSet;
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mOnGlobalActionAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    .line 165
    .local v0, "animSet":Landroid/view/animation/AnimationSet;
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAnims:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    invoke-virtual {v2}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->getAdvShowAnimSets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->getMyIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "animSet":Landroid/view/animation/AnimationSet;
    check-cast v0, Landroid/view/animation/AnimationSet;

    .local v0, "animSet":Landroid/view/animation/AnimationSet;
    goto :goto_1

    .line 168
    .local v0, "animSet":Landroid/view/animation/AnimationSet;
    :cond_5
    sget-object v2, Lcom/android/server/policy/OpGlobalActions$ActionState;->SELECTED:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-ne p1, v2, :cond_7

    .line 169
    iget-boolean v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mSelected:Z

    if-eqz v2, :cond_6

    .line 171
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 172
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x333

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 173
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 174
    invoke-virtual {p0, v1}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    invoke-virtual {p0, v3}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setZ(F)V

    .line 177
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAnims:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    invoke-virtual {v2}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->getSelectedAnimSets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->getMyIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "animSet":Landroid/view/animation/AnimationSet;
    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 178
    .local v0, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->startSelectedAnimator()V

    goto :goto_0

    .line 182
    .local v0, "animSet":Landroid/view/animation/AnimationSet;
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAnims:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    invoke-virtual {v2}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->getHideAnimSet()Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 183
    .local v0, "animSet":Landroid/view/animation/AnimationSet;
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mOnGlobalActionAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_0

    .line 185
    .local v0, "animSet":Landroid/view/animation/AnimationSet;
    :cond_7
    sget-object v2, Lcom/android/server/policy/OpGlobalActions$ActionState;->ADVANCE_SELECTED:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-ne p1, v2, :cond_a

    .line 186
    iget-boolean v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mSelected:Z

    if-eqz v2, :cond_8

    .line 188
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 189
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x333

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 190
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 191
    invoke-virtual {p0, v1}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    invoke-virtual {p0, v3}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setZ(F)V

    .line 195
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAnims:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    invoke-virtual {v2}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->getAdvSelectedAnimSets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->getMyIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "animSet":Landroid/view/animation/AnimationSet;
    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 196
    .local v0, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->startSelectedAnimator()V

    goto/16 :goto_0

    .line 200
    .local v0, "animSet":Landroid/view/animation/AnimationSet;
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_8
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAction:Lcom/android/server/policy/OpGlobalActions$Action;

    sget-object v3, Lcom/android/server/policy/OpGlobalActions$Action;->POWER_OFF:Lcom/android/server/policy/OpGlobalActions$Action;

    if-ne v2, v3, :cond_9

    .line 202
    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->clearAnimation()V

    .line 203
    invoke-virtual {p0, v7}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setVisibility(I)V

    goto/16 :goto_0

    .line 206
    :cond_9
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAnims:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    invoke-virtual {v2}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->getHideAnimSet()Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 207
    .local v0, "animSet":Landroid/view/animation/AnimationSet;
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mOnGlobalActionAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_0

    .line 210
    .local v0, "animSet":Landroid/view/animation/AnimationSet;
    :cond_a
    sget-object v2, Lcom/android/server/policy/OpGlobalActions$ActionState;->CONFIRMED:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-ne p1, v2, :cond_0

    .line 211
    iget-boolean v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mSelected:Z

    if-nez v2, :cond_b

    .line 213
    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->clearAnimation()V

    .line 214
    invoke-virtual {p0, v7}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->setVisibility(I)V

    .line 218
    :goto_2
    return-void

    .line 216
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->startConfirmedAnimator()V

    goto :goto_2
.end method

.method public startAnimateShowAdv()V
    .locals 3

    .prologue
    .line 235
    iget-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAnims:Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;

    invoke-virtual {v1}, Lcom/android/server/policy/ui/OpGlobalActionEntryAnimations;->getAdvShowAnimSets()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->getMyIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 236
    .local v0, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {p0, v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->startAnimation(Landroid/view/animation/Animation;)V

    .line 237
    return-void
.end method

.method public startConfirmedAnimator()V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->startAnimateBackground()V

    .line 270
    invoke-direct {p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->startAnimateIcon()V

    .line 271
    return-void
.end method

.method public startSelectedAnimator()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x190

    .line 240
    const/4 v1, 0x0

    const/16 v2, 0x190

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 241
    .local v0, "mAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/server/policy/ui/OpGlobalActionEntry$5;

    invoke-direct {v1, p0}, Lcom/android/server/policy/ui/OpGlobalActionEntry$5;-><init>(Lcom/android/server/policy/ui/OpGlobalActionEntry;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 258
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 259
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 260
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 262
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 263
    return-void
.end method
