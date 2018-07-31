.class Lcom/android/systemui/recents/model/TaskKeyLruCache$1;
.super Landroid/util/LruCache;
.source "TaskKeyLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/model/TaskKeyLruCache;-><init>(ILcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Integer;",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/TaskKeyLruCache;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/TaskKeyLruCache;I)V
    .locals 0
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    .local p1, "this$0":Lcom/android/systemui/recents/model/TaskKeyLruCache;, "Lcom/android/systemui/recents/model/TaskKeyLruCache<TV;>;"
    iput-object p1, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache$1;->this$0:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    .line 46
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    .line 1
    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "evicted"    # Z
    .param p2, "taskId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Integer;",
            "TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p3, "oldV":Ljava/lang/Object;, "TV;"
    .local p4, "newV":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache$1;->this$0:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-static {v0}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->-get0(Lcom/android/systemui/recents/model/TaskKeyLruCache;)Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache$1;->this$0:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    invoke-static {v0}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->-get0(Lcom/android/systemui/recents/model/TaskKeyLruCache;)Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache$1;->this$0:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mKeys:Landroid/util/SparseArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-interface {v1, v0}, Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;->onEntryEvicted(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache$1;->this$0:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mKeys:Landroid/util/SparseArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 54
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/model/TaskKeyLruCache$1;->entryRemoved(ZLjava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
