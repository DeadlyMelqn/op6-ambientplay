.class Lcom/android/systemui/RoundedCorners$1;
.super Lcom/android/systemui/qs/SecureSetting;
.source "RoundedCorners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/RoundedCorners;->setupRounding()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/RoundedCorners;


# direct methods
.method constructor <init>(Lcom/android/systemui/RoundedCorners;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/RoundedCorners;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Landroid/os/Handler;
    .param p4, "$anonymous2"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/RoundedCorners$1;->this$0:Lcom/android/systemui/RoundedCorners;

    .line 101
    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SecureSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "observedChange"    # Z

    .prologue
    const v4, 0x7f0a0289

    const v3, 0x7f0a019a

    .line 105
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 106
    .local v0, "tint":I
    :goto_0
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 107
    .local v1, "tintList":Landroid/content/res/ColorStateList;
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners$1;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v2}, Lcom/android/systemui/RoundedCorners;->-get1(Lcom/android/systemui/RoundedCorners;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 108
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners$1;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v2}, Lcom/android/systemui/RoundedCorners;->-get1(Lcom/android/systemui/RoundedCorners;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 109
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners$1;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v2}, Lcom/android/systemui/RoundedCorners;->-get0(Lcom/android/systemui/RoundedCorners;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 110
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners$1;->this$0:Lcom/android/systemui/RoundedCorners;

    invoke-static {v2}, Lcom/android/systemui/RoundedCorners;->-get0(Lcom/android/systemui/RoundedCorners;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 111
    return-void

    .line 105
    .end local v0    # "tint":I
    .end local v1    # "tintList":Landroid/content/res/ColorStateList;
    :cond_0
    const/high16 v0, -0x1000000

    .restart local v0    # "tint":I
    goto :goto_0
.end method
