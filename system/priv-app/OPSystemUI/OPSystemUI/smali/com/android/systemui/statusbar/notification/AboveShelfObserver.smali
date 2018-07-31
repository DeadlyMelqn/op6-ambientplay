.class public Lcom/android/systemui/statusbar/notification/AboveShelfObserver;
.super Ljava/lang/Object;
.source "AboveShelfObserver.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;
    }
.end annotation


# instance fields
.field private mHasViewsAboveShelf:Z

.field private final mHostLayout:Landroid/view/ViewGroup;

.field private mListener:Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "hostLayout"    # Landroid/view/ViewGroup;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mHasViewsAboveShelf:Z

    .line 35
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mHostLayout:Landroid/view/ViewGroup;

    .line 36
    return-void
.end method


# virtual methods
.method hasViewsAboveShelf()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mHasViewsAboveShelf:Z

    return v0
.end method

.method public onAboveShelfStateChanged(Z)V
    .locals 5
    .param p1, "aboveShelf"    # Z

    .prologue
    .line 44
    move v1, p1

    .line 45
    .local v1, "hasViewsAboveShelf":Z
    if-nez p1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mHostLayout:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 46
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mHostLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 47
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 48
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mHostLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_2

    .line 50
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 51
    const/4 v1, 0x1

    .line 57
    .end local v1    # "hasViewsAboveShelf":Z
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mHasViewsAboveShelf:Z

    if-eq v4, v1, :cond_1

    .line 58
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mHasViewsAboveShelf:Z

    .line 59
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mListener:Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;

    if-eqz v4, :cond_1

    .line 60
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mListener:Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;

    invoke-interface {v4, v1}, Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;->onHasViewsAboveShelfChanged(Z)V

    .line 63
    :cond_1
    return-void

    .line 47
    .restart local v1    # "hasViewsAboveShelf":Z
    .restart local v2    # "i":I
    .restart local v3    # "n":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setListener(Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mListener:Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;

    .line 40
    return-void
.end method
