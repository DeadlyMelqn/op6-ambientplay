.class final Lcom/android/server/wm/WindowState$1;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/wm/WindowState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .locals 3
    .param p1, "w1"    # Lcom/android/server/wm/WindowState;
    .param p2, "w2"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 597
    iget v0, p1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 598
    .local v0, "layer1":I
    iget v1, p2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 599
    .local v1, "layer2":I
    if-lt v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    if-gez v1, :cond_1

    .line 604
    :cond_0
    const/4 v2, -0x1

    return v2

    .line 606
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 595
    check-cast p1, Lcom/android/server/wm/WindowState;

    check-cast p2, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowState$1;->compare(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v0

    return v0
.end method
