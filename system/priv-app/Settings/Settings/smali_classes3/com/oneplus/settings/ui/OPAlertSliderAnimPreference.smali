.class public Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;
.super Landroid/support/v7/preference/Preference;
.source "OPAlertSliderAnimPreference.java"


# static fields
.field private static final DURATION:I = 0x14

.field private static pFrameRess:[I


# instance fields
.field private ImgeAlertSliderInstructions:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private resid:I

.field private sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->pFrameRess:[I

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 22
    const v0, 0x7f0400d2

    iput v0, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->resid:I

    .line 41
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->initViews(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const v0, 0x7f0400d2

    iput v0, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->resid:I

    .line 36
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->initViews(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const v0, 0x7f0400d2

    iput v0, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->resid:I

    .line 31
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->initViews(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public static autoGenericCode(II)Ljava/lang/String;
    .locals 5
    .param p0, "code"    # I
    .param p1, "num"    # I

    .prologue
    .line 115
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

    .line 116
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->mContext:Landroid/content/Context;

    .line 46
    iget v0, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->resid:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->setLayoutResource(I)V

    .line 47
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 8
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/16 v7, 0xee

    .line 51
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 52
    const v3, 0x7f0a01e9

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->ImgeAlertSliderInstructions:Landroid/widget/ImageView;

    .line 53
    sget-object v3, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->pFrameRess:[I

    if-nez v3, :cond_4

    .line 54
    new-array v3, v7, [I

    sput-object v3, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->pFrameRess:[I

    .line 55
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x19

    if-ge v1, v3, :cond_0

    .line 57
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "op_alert_slider_1"

    const-string/jumbo v5, "drawable"

    iget-object v6, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 58
    .local v2, "resId":I
    sget-object v3, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->pFrameRess:[I

    aput v2, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v2    # "resId":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/16 v1, 0x19

    :goto_2
    const/16 v3, 0x3d

    if-ge v1, v3, :cond_1

    .line 65
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "op_alert_slider_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, -0x17

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->autoGenericCode(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "drawable"

    iget-object v6, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 66
    .restart local v2    # "resId":I
    sget-object v3, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->pFrameRess:[I

    aput v2, v3, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    .end local v2    # "resId":I
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 67
    :catch_1
    move-exception v0

    .line 68
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v1, 0x3d

    :goto_4
    const/16 v3, 0x83

    if-ge v1, v3, :cond_2

    .line 73
    :try_start_2
    iget-object v3, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "op_alert_slider_38"

    const-string/jumbo v5, "drawable"

    iget-object v6, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 74
    .restart local v2    # "resId":I
    sget-object v3, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->pFrameRess:[I

    aput v2, v3, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 71
    .end local v2    # "resId":I
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 75
    :catch_2
    move-exception v0

    .line 76
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 79
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/16 v1, 0x83

    :goto_6
    const/16 v3, 0xa8

    if-ge v1, v3, :cond_3

    .line 81
    :try_start_3
    sget-object v3, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->pFrameRess:[I

    sget-object v4, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->pFrameRess:[I

    rsub-int v5, v1, 0xc0

    aget v4, v4, v5

    aput v4, v3, v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 79
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 82
    :catch_3
    move-exception v0

    .line 83
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/16 v1, 0xa8

    :goto_8
    if-ge v1, v7, :cond_4

    .line 88
    :try_start_4
    sget-object v3, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->pFrameRess:[I

    sget-object v4, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->pFrameRess:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v3, v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 86
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 89
    :catch_4
    move-exception v0

    .line 90
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    if-nez v3, :cond_5

    .line 96
    new-instance v3, Lcom/oneplus/settings/quickpay/SceneAnimation;

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->ImgeAlertSliderInstructions:Landroid/widget/ImageView;

    sget-object v5, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->pFrameRess:[I

    const/16 v6, 0x14

    invoke-direct {v3, v4, v5, v6}, Lcom/oneplus/settings/quickpay/SceneAnimation;-><init>(Landroid/widget/ImageView;[II)V

    iput-object v3, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    .line 98
    :cond_5
    iget-object v3, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    invoke-virtual {v3}, Lcom/oneplus/settings/quickpay/SceneAnimation;->play()V

    .line 99
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    invoke-virtual {v0}, Lcom/oneplus/settings/quickpay/SceneAnimation;->stop()V

    .line 106
    :cond_0
    return-void
.end method
