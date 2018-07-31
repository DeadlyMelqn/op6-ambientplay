.class public Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;
.super Landroid/support/v7/preference/Preference;
.source "QuickPayAnimPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$1;,
        Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$OnPreferenceViewClickListener;
    }
.end annotation


# static fields
.field private static final BEHINDQUICKPAYDRAWABLENUMBER:I = 0xd3

.field private static final DURATION:I = 0x10

.field private static final MSG_PLAY:I = 0x0

.field private static final QUICKPAYDRAWABLENUMBER:I = 0x99

.field private static pFrameRess:[I


# instance fields
.field private img_quickpay_instructions:Landroid/widget/ImageView;

.field private img_quickpay_phone_ui:Landroid/widget/ImageView;

.field private img_quickpay_play:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mListener:Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$OnPreferenceViewClickListener;

.field private resid:I

.field private sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->startOrStopAnim()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->pFrameRess:[I

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 26
    const v0, 0x7f040119

    iput v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->resid:I

    .line 39
    new-instance v0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$1;-><init>(Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;)V

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->mHandler:Landroid/os/Handler;

    .line 63
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->initViews(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const v0, 0x7f040119

    iput v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->resid:I

    .line 39
    new-instance v0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$1;-><init>(Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;)V

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->mHandler:Landroid/os/Handler;

    .line 58
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->initViews(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const v0, 0x7f040119

    iput v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->resid:I

    .line 39
    new-instance v0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$1;-><init>(Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;)V

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->mHandler:Landroid/os/Handler;

    .line 53
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->initViews(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public static autoGenericCode(II)Ljava/lang/String;
    .locals 5
    .param p0, "code"    # I
    .param p1, "num"    # I

    .prologue
    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->mContext:Landroid/content/Context;

    .line 68
    iget v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->resid:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->setLayoutResource(I)V

    .line 69
    return-void
.end method

.method private setResourceforAnimation(Ljava/lang/String;I)V
    .locals 7
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "number"    # I

    .prologue
    .line 99
    new-array v3, p2, [I

    sput-object v3, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->pFrameRess:[I

    .line 100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 102
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v1, v5}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->autoGenericCode(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "drawable"

    iget-object v6, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 103
    .local v2, "resId":I
    sget-object v3, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->pFrameRess:[I

    aput v2, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v2    # "resId":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private startAnim()V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->img_quickpay_play:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/oneplus/settings/quickpay/SceneAnimation;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->img_quickpay_instructions:Landroid/widget/ImageView;

    sget-object v2, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->pFrameRess:[I

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/settings/quickpay/SceneAnimation;-><init>(Landroid/widget/ImageView;[II)V

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    invoke-virtual {v0}, Lcom/oneplus/settings/quickpay/SceneAnimation;->play()V

    .line 140
    return-void
.end method

.method private startOrStopAnim()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    invoke-virtual {v0}, Lcom/oneplus/settings/quickpay/SceneAnimation;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->stopAnim()V

    .line 128
    return-void

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->startAnim()V

    .line 132
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const v2, 0x7f020076

    .line 73
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 74
    const v0, 0x7f0a0274

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->img_quickpay_play:Landroid/widget/ImageView;

    .line 75
    const v0, 0x7f0a0273

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->img_quickpay_instructions:Landroid/widget/ImageView;

    .line 76
    const v0, 0x7f0a0272

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->img_quickpay_phone_ui:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->img_quickpay_play:Landroid/widget/ImageView;

    const v1, 0x7f020075

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->img_quickpay_instructions:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->img_quickpay_phone_ui:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->img_quickpay_play:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->img_quickpay_instructions:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->img_quickpay_phone_ui:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    sget-object v0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->pFrameRess:[I

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 87
    const-string/jumbo v0, "quick_pay_"

    const/16 v1, 0x99

    invoke-direct {p0, v0, v1}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->setResourceforAnimation(Ljava/lang/String;I)V

    .line 93
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    if-nez v0, :cond_2

    .line 94
    new-instance v0, Lcom/oneplus/settings/quickpay/SceneAnimation;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->img_quickpay_instructions:Landroid/widget/ImageView;

    sget-object v2, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->pFrameRess:[I

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/settings/quickpay/SceneAnimation;-><init>(Landroid/widget/ImageView;[II)V

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    .line 96
    :cond_2
    return-void

    .line 90
    :cond_3
    const-string/jumbo v0, "behind_quick_pay__"

    const/16 v1, 0xd3

    invoke-direct {p0, v0, v1}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->setResourceforAnimation(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->mListener:Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$OnPreferenceViewClickListener;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->mListener:Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$OnPreferenceViewClickListener;

    invoke-interface {v0, p1}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$OnPreferenceViewClickListener;->onPreferenceViewClick(Landroid/view/View;)V

    .line 172
    :cond_0
    return-void
.end method

.method public playOrStopAnim()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 120
    return-void
.end method

.method public setViewOnClick(Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$OnPreferenceViewClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$OnPreferenceViewClickListener;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->mListener:Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$OnPreferenceViewClickListener;

    .line 112
    return-void
.end method

.method public stopAnim()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    invoke-virtual {v0}, Lcom/oneplus/settings/quickpay/SceneAnimation;->stop()V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->img_quickpay_play:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->img_quickpay_play:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    :cond_1
    return-void
.end method
