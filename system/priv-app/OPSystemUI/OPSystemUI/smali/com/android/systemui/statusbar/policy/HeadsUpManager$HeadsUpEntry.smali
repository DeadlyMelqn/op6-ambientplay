.class public Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
.super Ljava/lang/Object;
.source "HeadsUpManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HeadsUpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeadsUpEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public earliestRemovaltime:J

.field public entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field public expanded:Z

.field private mRemoveHeadsUpRunnable:Ljava/lang/Runnable;

.field public postTime:J

.field public remoteInputActive:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .prologue
    .line 687
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;)I
    .locals 10
    .param p1, "o"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 749
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v6, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    .line 750
    .local v0, "isPinned":Z
    iget-object v6, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v6, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v2

    .line 751
    .local v2, "otherPinned":Z
    if-eqz v0, :cond_0

    xor-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_0

    .line 752
    return v5

    .line 753
    :cond_0
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    .line 754
    return v4

    .line 756
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-wrap0(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v3

    .line 757
    .local v3, "selfFullscreen":Z
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v7, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-wrap0(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    .line 758
    .local v1, "otherFullscreen":Z
    if-eqz v3, :cond_2

    xor-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_2

    .line 759
    return v5

    .line 760
    :cond_2
    if-nez v3, :cond_3

    if-eqz v1, :cond_3

    .line 761
    return v4

    .line 764
    :cond_3
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    .line 765
    return v5

    .line 766
    :cond_4
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    if-nez v6, :cond_5

    iget-boolean v6, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    if-eqz v6, :cond_5

    .line 767
    return v4

    .line 770
    :cond_5
    iget-wide v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->postTime:J

    iget-wide v8, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->postTime:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    :goto_0
    return v4

    .line 771
    :cond_6
    iget-wide v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->postTime:J

    iget-wide v8, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->postTime:J

    cmp-long v4, v6, v8

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v5, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_7
    move v4, v5

    .line 772
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 747
    check-cast p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->compareTo(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;)I

    move-result v0

    return v0
.end method

.method public isSticky()Z
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->expanded:Z

    if-nez v0, :cond_1

    .line 744
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    .line 743
    if-nez v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-wrap0(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    .line 743
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeAsSoonAsPossible()V
    .locals 6

    .prologue
    .line 784
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->removeAutoRemovalCallbacks()V

    .line 785
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get3(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->mRemoveHeadsUpRunnable:Ljava/lang/Runnable;

    .line 786
    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->earliestRemovaltime:J

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get0(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 785
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 787
    return-void
.end method

.method public removeAutoRemovalCallbacks()V
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get3(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->mRemoveHeadsUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 777
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 790
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->removeAutoRemovalCallbacks()V

    .line 791
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 792
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->mRemoveHeadsUpRunnable:Ljava/lang/Runnable;

    .line 793
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->expanded:Z

    .line 794
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->remoteInputActive:Z

    .line 795
    return-void
.end method

.method public setEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 4
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 696
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 699
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get0(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get9(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->postTime:J

    .line 700
    new-instance v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry$1;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->mRemoveHeadsUpRunnable:Ljava/lang/Runnable;

    .line 713
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->updateEntry()V

    .line 714
    return-void
.end method

.method public updateEntry()V
    .locals 1

    .prologue
    .line 717
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->updateEntry(Z)V

    .line 718
    return-void
.end method

.method public updateEntry(Z)V
    .locals 10
    .param p1, "updatePostTime"    # Z

    .prologue
    .line 721
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get0(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 722
    .local v0, "currentTime":J
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get5(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->earliestRemovaltime:J

    .line 723
    if-eqz p1, :cond_0

    .line 724
    iget-wide v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->postTime:J

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->postTime:J

    .line 726
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->removeAutoRemovalCallbacks()V

    .line 727
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get1(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Ljava/util/HashSet;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 728
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get1(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Ljava/util/HashSet;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 730
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get2(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Landroid/support/v4/util/ArraySet;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v6, v7}, Landroid/support/v4/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 731
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get2(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Landroid/support/v4/util/ArraySet;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v6, v7}, Landroid/support/v4/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 733
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->isSticky()Z

    move-result v6

    if-nez v6, :cond_3

    .line 734
    iget-wide v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->postTime:J

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get4(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)I

    move-result v8

    int-to-long v8, v8

    add-long v2, v6, v8

    .line 735
    .local v2, "finishTime":J
    sub-long v6, v2, v0

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get5(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 736
    .local v4, "removeDelay":J
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get3(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->mRemoveHeadsUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 738
    .end local v2    # "finishTime":J
    .end local v4    # "removeDelay":J
    :cond_3
    return-void
.end method

.method public wasShownLongEnough()Z
    .locals 4

    .prologue
    .line 780
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->earliestRemovaltime:J

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->-get0(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
