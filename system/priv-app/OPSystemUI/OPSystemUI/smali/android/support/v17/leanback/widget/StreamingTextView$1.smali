.class final Landroid/support/v17/leanback/widget/StreamingTextView$1;
.super Landroid/util/Property;
.source "StreamingTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/StreamingTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/support/v17/leanback/widget/StreamingTextView;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous1"    # Ljava/lang/String;

    .prologue
    .line 58
    .local p1, "$anonymous0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public get(Landroid/support/v17/leanback/widget/StreamingTextView;)Ljava/lang/Integer;
    .locals 1
    .param p1, "view"    # Landroid/support/v17/leanback/widget/StreamingTextView;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/StreamingTextView;->getStreamPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    check-cast p1, Landroid/support/v17/leanback/widget/StreamingTextView;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StreamingTextView$1;->get(Landroid/support/v17/leanback/widget/StreamingTextView;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public set(Landroid/support/v17/leanback/widget/StreamingTextView;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "view"    # Landroid/support/v17/leanback/widget/StreamingTextView;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 67
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/StreamingTextView;->setStreamPosition(I)V

    .line 68
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    check-cast p1, Landroid/support/v17/leanback/widget/StreamingTextView;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/StreamingTextView$1;->set(Landroid/support/v17/leanback/widget/StreamingTextView;Ljava/lang/Integer;)V

    return-void
.end method
