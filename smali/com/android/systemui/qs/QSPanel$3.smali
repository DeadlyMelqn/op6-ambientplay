.class Lcom/android/systemui/qs/QSPanel$3;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$3;->this$0:Lcom/android/systemui/qs/QSPanel;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/qs/QSPanel$3;->val$resolver:Landroid/content/ContentResolver;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v9, 0xff

    const/high16 v8, 0x3f800000    # 1.0f

    .line 152
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel$3;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/qs/QSPanel;->isAdaptiveBrightness(Landroid/content/Context;)Z

    move-result v0

    .line 153
    .local v0, "adaptive":Z
    if-eqz v0, :cond_1

    .line 154
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel$3;->val$resolver:Landroid/content/ContentResolver;

    .line 155
    const-string/jumbo v6, "screen_auto_brightness_adj"

    const/4 v7, 0x0

    .line 154
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    .line 156
    .local v3, "currentValue":F
    const v5, 0x3d23d70a    # 0.04f

    add-float v1, v3, v5

    .line 157
    .local v1, "brightness":F
    cmpl-float v5, v3, v8

    if-eqz v5, :cond_0

    .line 158
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel$3;->val$resolver:Landroid/content/ContentResolver;

    .line 159
    const-string/jumbo v6, "screen_auto_brightness_adj"

    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 158
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 170
    .end local v1    # "brightness":F
    .end local v3    # "currentValue":F
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel$3;->val$resolver:Landroid/content/ContentResolver;

    .line 163
    const-string/jumbo v6, "screen_brightness"

    const/4 v7, 0x0

    .line 162
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 164
    .local v4, "currentValue":I
    add-int/lit8 v2, v4, 0xa

    .line 165
    .local v2, "brightness":I
    if-eq v4, v9, :cond_0

    .line 166
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel$3;->val$resolver:Landroid/content/ContentResolver;

    .line 167
    const-string/jumbo v6, "screen_brightness"

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 166
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
