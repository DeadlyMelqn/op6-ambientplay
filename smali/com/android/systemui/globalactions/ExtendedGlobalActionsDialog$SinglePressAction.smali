.class abstract Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$SinglePressAction;
.super Ljava/lang/Object;
.source "ExtendedGlobalActionsDialog.java"

# interfaces
.implements Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "messageResId"    # I

    .prologue
    const/4 v0, 0x0

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput p1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$SinglePressAction;->mIconResId:I

    .line 423
    iput p2, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$SinglePressAction;->mMessageResId:I

    .line 424
    iput-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 425
    iput-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 426
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v6, 0x0

    .line 455
    const v5, 0x7f0d0033

    invoke-virtual {p4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 458
    .local v4, "v":Landroid/view/View;
    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 459
    .local v0, "icon":Landroid/widget/ImageView;
    const v5, 0x102000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 461
    .local v1, "messageView":Landroid/widget/TextView;
    const v5, 0x1020405

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 462
    .local v3, "statusView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$SinglePressAction;->getStatus()Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, "status":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 464
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 469
    iget-object v5, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 470
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 474
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    .line 475
    iget-object v5, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    :goto_2
    return-object v4

    .line 466
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 471
    :cond_2
    iget v5, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$SinglePressAction;->mIconResId:I

    if-eqz v5, :cond_0

    .line 472
    iget v5, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$SinglePressAction;->mIconResId:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 477
    :cond_3
    iget v5, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$SinglePressAction;->mMessageResId:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    return-object v0

    .line 449
    :cond_0
    iget v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$SinglePressAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onPress()V
.end method
