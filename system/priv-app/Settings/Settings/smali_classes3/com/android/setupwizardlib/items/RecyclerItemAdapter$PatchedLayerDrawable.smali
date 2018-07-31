.class Lcom/android/setupwizardlib/items/RecyclerItemAdapter$PatchedLayerDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "RecyclerItemAdapter.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/items/RecyclerItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PatchedLayerDrawable"
.end annotation


# direct methods
.method constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 238
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 239
    return-void
.end method


# virtual methods
.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 243
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    .line 244
    .local v0, "superHasPadding":Z
    if-eqz v0, :cond_2

    .line 245
    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-nez v3, :cond_0

    .line 246
    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-eqz v3, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v1

    .line 247
    :cond_1
    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-nez v3, :cond_0

    .line 248
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 244
    goto :goto_0
.end method
