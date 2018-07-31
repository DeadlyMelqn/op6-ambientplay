.class Lcom/android/server/IpSecService$ManagedResourceArray;
.super Ljava/lang/Object;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManagedResourceArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/server/IpSecService$ManagedResource;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/IpSecService;


# direct methods
.method private constructor <init>(Lcom/android/server/IpSecService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/IpSecService;

    .prologue
    .line 204
    .local p0, "this":Lcom/android/server/IpSecService$ManagedResourceArray;, "Lcom/android/server/IpSecService$ManagedResourceArray<TT;>;"
    iput-object p1, p0, Lcom/android/server/IpSecService$ManagedResourceArray;->this$0:Lcom/android/server/IpSecService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/IpSecService$ManagedResourceArray;->mArray:Landroid/util/SparseArray;

    .line 204
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$ManagedResourceArray;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/IpSecService;
    .param p2, "-this1"    # Lcom/android/server/IpSecService$ManagedResourceArray;

    .prologue
    .local p0, "this":Lcom/android/server/IpSecService$ManagedResourceArray;, "Lcom/android/server/IpSecService$ManagedResourceArray<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/server/IpSecService$ManagedResourceArray;-><init>(Lcom/android/server/IpSecService;)V

    return-void
.end method


# virtual methods
.method get(I)Lcom/android/server/IpSecService$ManagedResource;
    .locals 2
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lcom/android/server/IpSecService$ManagedResourceArray;, "Lcom/android/server/IpSecService$ManagedResourceArray<TT;>;"
    iget-object v1, p0, Lcom/android/server/IpSecService$ManagedResourceArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IpSecService$ManagedResource;

    .line 211
    .local v0, "val":Lcom/android/server/IpSecService$ManagedResource;, "TT;"
    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Lcom/android/server/IpSecService$ManagedResource;->checkOwnerOrSystemAndThrow()V

    .line 214
    :cond_0
    return-object v0
.end method

.method put(ILcom/android/server/IpSecService$ManagedResource;)V
    .locals 1
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Lcom/android/server/IpSecService$ManagedResourceArray;, "Lcom/android/server/IpSecService$ManagedResourceArray<TT;>;"
    .local p2, "obj":Lcom/android/server/IpSecService$ManagedResource;, "TT;"
    const-string/jumbo v0, "Null resources cannot be added"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/android/server/IpSecService$ManagedResourceArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    return-void
.end method

.method remove(I)V
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 223
    .local p0, "this":Lcom/android/server/IpSecService$ManagedResourceArray;, "Lcom/android/server/IpSecService$ManagedResourceArray<TT;>;"
    iget-object v0, p0, Lcom/android/server/IpSecService$ManagedResourceArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 224
    return-void
.end method
