.class Lcom/android/server/policy/OemGestureButton$EdgeEffectView;
.super Landroid/widget/ImageView;
.source "OemGestureButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemGestureButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeEffectView"
.end annotation


# instance fields
.field mEffect:Lcom/android/server/policy/OPEdgeEffect;

.field final synthetic this$0:Lcom/android/server/policy/OemGestureButton;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/OemGestureButton;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/policy/OemGestureButton;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->this$0:Lcom/android/server/policy/OemGestureButton;

    .line 1242
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1243
    new-instance v0, Lcom/android/server/policy/OPEdgeEffect;

    invoke-direct {v0, p2}, Lcom/android/server/policy/OPEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    .line 1244
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1248
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 1249
    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v3}, Lcom/android/server/policy/OPEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1250
    const/16 v0, 0xb4

    .line 1251
    .local v0, "rotate":I
    const/4 v1, 0x0

    .line 1252
    .local v1, "translate_x":I
    const/4 v2, 0x0

    .line 1254
    .local v2, "translate_y":I
    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v3}, Lcom/android/server/policy/OemGestureButton;->-get10(Lcom/android/server/policy/OemGestureButton;)I

    move-result v3

    if-nez v3, :cond_2

    .line 1255
    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v3}, Lcom/android/server/policy/OemGestureButton;->-get4(Lcom/android/server/policy/OemGestureButton;)F

    move-result v3

    iget-object v4, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v4}, Lcom/android/server/policy/OemGestureButton;->-get15(Lcom/android/server/policy/OemGestureButton;)I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 1256
    const/16 v1, -0x168

    .line 1260
    :goto_0
    const/16 v2, -0x3c

    .line 1264
    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1265
    int-to-float v3, v1

    const/high16 v4, -0x3d900000    # -60.0f

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1266
    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v3, p1}, Lcom/android/server/policy/OPEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 1268
    .end local v0    # "rotate":I
    .end local v1    # "translate_x":I
    .end local v2    # "translate_y":I
    :cond_0
    return-void

    .line 1258
    .restart local v0    # "rotate":I
    .restart local v1    # "translate_x":I
    .restart local v2    # "translate_y":I
    :cond_1
    const/16 v1, -0x42e

    goto :goto_0

    .line 1262
    :cond_2
    return-void
.end method

.method public onAbsorb(I)V
    .locals 1
    .param p1, "velocity"    # I

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/OPEdgeEffect;->onAbsorb(I)V

    .line 1288
    return-void
.end method

.method public onPull(F)V
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/OPEdgeEffect;->onPull(F)V

    .line 1272
    invoke-virtual {p0}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->postInvalidateOnAnimation()V

    .line 1273
    return-void
.end method

.method public onPull(FF)V
    .locals 1
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/OPEdgeEffect;->onPull(FF)V

    .line 1277
    invoke-virtual {p0}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->postInvalidateOnAnimation()V

    .line 1278
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v0}, Lcom/android/server/policy/OPEdgeEffect;->onRelease()V

    .line 1292
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v0}, Lcom/android/server/policy/OPEdgeEffect;->finish()V

    .line 1293
    invoke-virtual {p0}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->postInvalidateOnAnimation()V

    .line 1294
    return-void
.end method

.method public setSize()V
    .locals 3

    .prologue
    .line 1281
    const/16 v1, 0x15e

    .line 1282
    .local v1, "width":I
    const/16 v0, 0x15e

    .line 1283
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/policy/OPEdgeEffect;->setSize(II)V

    .line 1284
    return-void
.end method
