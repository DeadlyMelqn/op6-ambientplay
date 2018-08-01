.class Lcom/android/systemui/qs/QSPanel$1;
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
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/qs/QSPanel$1;->val$resolver:Landroid/content/ContentResolver;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v8, -0x40800000    # -1.0f

    const/4 v7, 0x0

    .line 120
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel$1;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/qs/QSPanel;->isAdaptiveBrightness(Landroid/content/Context;)Z

    move-result v0

    .line 121
    .local v0, "adaptive":Z
    if-eqz v0, :cond_1

    .line 122
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel$1;->val$resolver:Landroid/content/ContentResolver;

    .line 123
    const-string/jumbo v6, "screen_auto_brightness_adj"

    const/4 v7, 0x0

    .line 122
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    .line 124
    .local v3, "currentValue":F
    const v5, 0x3d23d70a    # 0.04f

    sub-float v1, v3, v5

    .line 125
    .local v1, "brightness":F
    cmpl-float v5, v3, v8

    if-eqz v5, :cond_0

    .line 126
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel$1;->val$resolver:Landroid/content/ContentResolver;

    .line 127
    const-string/jumbo v6, "screen_auto_brightness_adj"

    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 126
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 138
    .end local v1    # "brightness":F
    .end local v3    # "currentValue":F
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel$1;->val$resolver:Landroid/content/ContentResolver;

    .line 131
    const-string/jumbo v6, "screen_brightness"

    .line 130
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 132
    .local v4, "currentValue":I
    add-int/lit8 v2, v4, -0xa

    .line 133
    .local v2, "brightness":I
    if-eqz v4, :cond_0

    .line 134
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel$1;->val$resolver:Landroid/content/ContentResolver;

    .line 135
    const-string/jumbo v6, "screen_brightness"

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 134
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
