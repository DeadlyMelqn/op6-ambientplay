.class public Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ReverseLinearLayout.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$Reversable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReverseFrameLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 128
    return-void
.end method


# virtual methods
.method public reverse()V
    .locals 3

    .prologue
    .line 132
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseFrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 133
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->-wrap0(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method
