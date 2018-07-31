.class Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi17Impl;
.super Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi16Impl;
.source "TextViewCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextViewCompatApi17Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi16Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 267
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v2, 0x1

    .line 268
    .local v2, "rtl":Z
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 269
    .local v0, "compounds":[Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 271
    aget-object v3, v0, v7

    .line 272
    .local v3, "start":Landroid/graphics/drawable/Drawable;
    aget-object v1, v0, v6

    .line 273
    .local v1, "end":Landroid/graphics/drawable/Drawable;
    aput-object v3, v0, v6

    .line 274
    aput-object v1, v0, v7

    .line 276
    .end local v1    # "end":Landroid/graphics/drawable/Drawable;
    .end local v3    # "start":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v0

    .line 267
    .end local v0    # "compounds":[Landroid/graphics/drawable/Drawable;
    .end local v2    # "rtl":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "rtl":Z
    goto :goto_0
.end method

.method public setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "start"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "end"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 244
    .local v0, "rtl":Z
    :goto_0
    if-eqz v0, :cond_1

    move-object v1, p4

    :goto_1
    if-eqz v0, :cond_2

    .end local p2    # "start":Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {p1, v1, p3, p2, p5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 245
    return-void

    .line 243
    .end local v0    # "rtl":Z
    .restart local p2    # "start":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "rtl":Z
    goto :goto_0

    :cond_1
    move-object v1, p2

    .line 244
    goto :goto_1

    :cond_2
    move-object p2, p4

    goto :goto_2
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "start"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "top"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4, "end"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p5, "bottom"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 261
    .local v0, "rtl":Z
    :goto_0
    if-eqz v0, :cond_1

    move v1, p4

    .line 262
    :goto_1
    if-eqz v0, :cond_2

    .line 261
    .end local p2    # "start":I
    :goto_2
    invoke-virtual {p1, v1, p3, p2, p5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 263
    return-void

    .line 260
    .end local v0    # "rtl":Z
    .restart local p2    # "start":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "rtl":Z
    goto :goto_0

    :cond_1
    move v1, p2

    .line 261
    goto :goto_1

    :cond_2
    move p2, p4

    .line 262
    goto :goto_2
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "start"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "end"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 251
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 252
    .local v0, "rtl":Z
    :goto_0
    if-eqz v0, :cond_1

    move-object v1, p4

    .line 253
    :goto_1
    if-eqz v0, :cond_2

    .line 252
    .end local p2    # "start":Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {p1, v1, p3, p2, p5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 254
    return-void

    .line 251
    .end local v0    # "rtl":Z
    .restart local p2    # "start":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "rtl":Z
    goto :goto_0

    :cond_1
    move-object v1, p2

    .line 252
    goto :goto_1

    :cond_2
    move-object p2, p4

    .line 253
    goto :goto_2
.end method