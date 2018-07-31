.class public Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;
.super Ljava/lang/Object;
.source "StatusBarIconController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconManager"
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mGroup:Landroid/view/ViewGroup;

.field protected final mIconSize:I

.field protected mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 2
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    .line 264
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 266
    const v1, 0x105016b

    .line 265
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIconSize:I

    .line 268
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mTag:Ljava/lang/String;

    .line 270
    return-void
.end method

.method private setHeightAndCenter(Landroid/widget/ImageView;I)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "height"    # I

    .prologue
    .line 332
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 333
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 334
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 335
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 337
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    return-void
.end method


# virtual methods
.method protected addIcon(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 5
    .param p1, "index"    # I
    .param p2, "slot"    # Ljava/lang/String;
    .param p3, "blocked"    # Z
    .param p4, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 279
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateStatusBarIconView(Ljava/lang/String;Z)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v2

    .line 282
    .local v2, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 283
    const-class v3, Lcom/android/systemui/statusbar/policy/SystemIconController;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SystemIconController;

    .line 285
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/SystemIconController;
    iget-boolean v3, p4, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, p2, v3}, Lcom/android/systemui/statusbar/policy/SystemIconController;->setIcon(Ljava/lang/String;I)V

    .line 286
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mTag:Ljava/lang/String;

    const-string/jumbo v4, "keyguard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 287
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mTag:Ljava/lang/String;

    const-string/jumbo v4, "statusbar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 286
    if-eqz v3, :cond_2

    .line 288
    :cond_0
    invoke-virtual {p4}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v1

    .line 289
    .local v1, "copy":Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/policy/SystemIconController;->isCustVisible(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 290
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 298
    .end local v0    # "controller":Lcom/android/systemui/statusbar/policy/SystemIconController;
    .end local v1    # "copy":Lcom/android/internal/statusbar/StatusBarIcon;
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 299
    return-object v2

    .line 285
    .restart local v0    # "controller":Lcom/android/systemui/statusbar/policy/SystemIconController;
    :cond_1
    const/16 v3, 0x8

    goto :goto_0

    .line 292
    :cond_2
    invoke-virtual {v2, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    goto :goto_1

    .line 295
    .end local v0    # "controller":Lcom/android/systemui/statusbar/policy/SystemIconController;
    :cond_3
    invoke-virtual {v2, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    goto :goto_1
.end method

.method protected destroy()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 313
    return-void
.end method

.method protected isBTLowBattery(Lcom/android/systemui/statusbar/StatusBarIconView;)Z
    .locals 5
    .param p1, "v"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 405
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSlot()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "bluetooth"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 406
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    .line 407
    .local v0, "resId":I
    const v3, 0x7f0803ff

    if-eq v0, v3, :cond_0

    .line 408
    const v3, 0x7f080401

    if-ne v0, v3, :cond_1

    .line 407
    :cond_0
    :goto_0
    return v1

    .line 409
    :cond_1
    const v3, 0x7f080402

    if-eq v0, v3, :cond_0

    .line 410
    const v3, 0x7f080403

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 412
    .end local v0    # "resId":I
    :cond_2
    return v2
.end method

.method protected onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 308
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mIconSize:I

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected onCreateStatusBarIconView(Ljava/lang/String;Z)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 3
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "blocked"    # Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 304
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V

    return-object v0
.end method

.method protected onIconAdded(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "slot"    # Ljava/lang/String;
    .param p3, "blocked"    # Z
    .param p4, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 274
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->addIcon(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 275
    return-void
.end method

.method protected onIconExternal(II)V
    .locals 2
    .param p1, "viewIndex"    # I
    .param p2, "height"    # I

    .prologue
    .line 316
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 317
    .local v0, "imageView":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 318
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 319
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->setHeightAndCenter(Landroid/widget/ImageView;I)V

    .line 320
    return-void
.end method

.method protected onRemoveIcon(I)V
    .locals 1
    .param p1, "viewIndex"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 342
    return-void
.end method

.method public onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 7
    .param p1, "viewIndex"    # I
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    const/4 v4, 0x0

    .line 345
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 348
    .local v3, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    if-nez v3, :cond_0

    .line 349
    return-void

    .line 351
    :cond_0
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSlot()Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "slot":Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 353
    const-class v5, Lcom/android/systemui/statusbar/policy/SystemIconController;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SystemIconController;

    .line 354
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/SystemIconController;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mTag:Ljava/lang/String;

    const-string/jumbo v6, "keyguard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 355
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mTag:Ljava/lang/String;

    const-string/jumbo v6, "statusbar"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 354
    if-eqz v5, :cond_4

    .line 356
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v1

    .line 357
    .local v1, "copy":Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/SystemIconController;->isCustVisible(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 359
    sget-boolean v5, Lcom/android/systemui/util/Utils;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_3

    iget-boolean v5, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    const/4 v4, 0x1

    :cond_2
    if-eq v5, v4, :cond_3

    .line 360
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSetIcon "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSlot()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " vis:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " view vis "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibility()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_3
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 371
    .end local v0    # "controller":Lcom/android/systemui/statusbar/policy/SystemIconController;
    .end local v1    # "copy":Lcom/android/internal/statusbar/StatusBarIcon;
    :goto_0
    return-void

    .line 365
    .restart local v0    # "controller":Lcom/android/systemui/statusbar/policy/SystemIconController;
    :cond_4
    invoke-virtual {v3, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    goto :goto_0

    .line 369
    .end local v0    # "controller":Lcom/android/systemui/statusbar/policy/SystemIconController;
    :cond_5
    invoke-virtual {v3, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    goto :goto_0
.end method

.method public onSetIconInner(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 10
    .param p1, "viewIndex"    # I
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 376
    invoke-static {}, Lcom/android/systemui/util/Utils;->isSupportCustomStatusBar()Z

    move-result v7

    if-nez v7, :cond_0

    .line 377
    return-void

    .line 379
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v7, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 380
    .local v3, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    if-nez v3, :cond_1

    .line 381
    return-void

    .line 383
    :cond_1
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSlot()Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, "slot":Ljava/lang/String;
    const-class v7, Lcom/android/systemui/statusbar/policy/SystemIconController;

    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SystemIconController;

    .line 386
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/SystemIconController;
    sget-boolean v7, Lcom/android/systemui/util/Utils;->DEBUG_ONEPLUS:Z

    if-eqz v7, :cond_2

    iget-boolean v8, p2, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_5

    move v7, v5

    :goto_0
    if-eq v8, v7, :cond_2

    .line 387
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onSetIconInner "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSlot()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "icon vis:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p2, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " view vis "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibility()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mTag:Ljava/lang/String;

    const-string/jumbo v8, "keyguard"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 391
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mTag:Ljava/lang/String;

    const-string/jumbo v8, "statusbar"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 390
    if-eqz v7, :cond_7

    .line 392
    :cond_3
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/SystemIconController;->isCustVisible(Ljava/lang/String;)Z

    move-result v4

    .line 393
    .local v4, "vis":Z
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_6

    :goto_1
    if-eq v5, v4, :cond_4

    .line 394
    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v1

    .line 395
    .local v1, "copy":Lcom/android/internal/statusbar/StatusBarIcon;
    iput-boolean v4, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 396
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 401
    .end local v1    # "copy":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v4    # "vis":Z
    :cond_4
    :goto_2
    return-void

    :cond_5
    move v7, v6

    .line 386
    goto :goto_0

    .restart local v4    # "vis":Z
    :cond_6
    move v5, v6

    .line 393
    goto :goto_1

    .line 399
    .end local v4    # "vis":Z
    :cond_7
    invoke-virtual {v3, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    goto :goto_2
.end method
