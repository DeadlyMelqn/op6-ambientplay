.class public Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;
.super Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;
.source "StatusBarIconController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TintedIconManager"
.end annotation


# instance fields
.field private mColor:I

.field public mIconColor:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 0
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method private isDarkIcon()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 240
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0600ef

    invoke-static {v3, v4}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 242
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "qs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    invoke-static {}, Lcom/android/systemui/util/ThemeColorUtils;->getCurrentTheme()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 242
    goto :goto_0
.end method

.method private updateBTLowBatteryIcon(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 6
    .param p1, "v"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .prologue
    const v5, 0x7f080403

    const v4, 0x7f080402

    const v3, 0x7f080401

    const v2, 0x7f0803ff

    .line 222
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    .line 223
    .local v0, "resId":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->isDarkIcon()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    if-ne v0, v2, :cond_1

    .line 225
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageResource(I)V

    .line 236
    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    .line 237
    return-void

    .line 226
    :cond_1
    if-ne v0, v4, :cond_0

    .line 227
    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageResource(I)V

    goto :goto_0

    .line 230
    :cond_2
    if-ne v0, v3, :cond_3

    .line 231
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageResource(I)V

    goto :goto_0

    .line 232
    :cond_3
    if-ne v0, v5, :cond_0

    .line 233
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onIconAdded(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "slot"    # Ljava/lang/String;
    .param p3, "blocked"    # Z
    .param p4, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 180
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->addIcon(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    .line 183
    .local v0, "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->isBTLowBattery(Lcom/android/systemui/statusbar/StatusBarIconView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->updateBTLowBatteryIcon(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    goto :goto_0
.end method

.method public onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2
    .param p1, "viewIndex"    # I
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 212
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 213
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 214
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->isBTLowBattery(Lcom/android/systemui/statusbar/StatusBarIconView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->updateBTLowBatteryIcon(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    goto :goto_0
.end method

.method public setTint(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    .line 193
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 194
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 195
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 196
    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 199
    .local v2, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->isBTLowBattery(Lcom/android/systemui/statusbar/StatusBarIconView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->updateBTLowBatteryIcon(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 193
    .end local v2    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .restart local v2    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mColor:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    goto :goto_1

    .line 207
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_2
    return-void
.end method

.method public setTintLockscreen()V
    .locals 4

    .prologue
    .line 193
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 194
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 195
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 196
    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 199
    .local v2, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->isBTLowBattery(Lcom/android/systemui/statusbar/StatusBarIconView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->updateBTLowBatteryIcon(Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 193
    .end local v2    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .restart local v2    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getLockscreenIconColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    goto :goto_1

    .line 207
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_2
    return-void
.end method
