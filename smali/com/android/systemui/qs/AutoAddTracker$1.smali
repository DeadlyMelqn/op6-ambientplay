.class Lcom/android/systemui/qs/AutoAddTracker$1;
.super Landroid/database/ContentObserver;
.source "AutoAddTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/AutoAddTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/AutoAddTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/AutoAddTracker;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/AutoAddTracker;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/AutoAddTracker$1;->this$0:Lcom/android/systemui/qs/AutoAddTracker;

    .line 92
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/AutoAddTracker$1;->this$0:Lcom/android/systemui/qs/AutoAddTracker;

    invoke-static {v0}, Lcom/android/systemui/qs/AutoAddTracker;->-get0(Lcom/android/systemui/qs/AutoAddTracker;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/AutoAddTracker$1;->this$0:Lcom/android/systemui/qs/AutoAddTracker;

    invoke-static {v1}, Lcom/android/systemui/qs/AutoAddTracker;->-wrap0(Lcom/android/systemui/qs/AutoAddTracker;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 96
    return-void
.end method
