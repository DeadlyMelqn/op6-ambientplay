.class abstract Landroid/arch/core/internal/SafeIterableMap$ListIterator;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/core/internal/SafeIterableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;",
        "Landroid/arch/core/internal/SafeIterableMap$SupportRemove",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field mExpectedEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/internal/SafeIterableMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/internal/SafeIterableMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/arch/core/internal/SafeIterableMap$Entry;Landroid/arch/core/internal/SafeIterableMap$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/core/internal/SafeIterableMap$Entry",
            "<TK;TV;>;",
            "Landroid/arch/core/internal/SafeIterableMap$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap$ListIterator;, "Landroid/arch/core/internal/SafeIterableMap$ListIterator<TK;TV;>;"
    .local p1, "start":Landroid/arch/core/internal/SafeIterableMap$Entry;, "Landroid/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    .local p2, "expectedEnd":Landroid/arch/core/internal/SafeIterableMap$Entry;, "Landroid/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p2, p0, Landroid/arch/core/internal/SafeIterableMap$ListIterator;->mExpectedEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    .line 225
    iput-object p1, p0, Landroid/arch/core/internal/SafeIterableMap$ListIterator;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    .line 226
    return-void
.end method

.method private nextNode()Landroid/arch/core/internal/SafeIterableMap$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/core/internal/SafeIterableMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap$ListIterator;, "Landroid/arch/core/internal/SafeIterableMap$ListIterator<TK;TV;>;"
    const/4 v2, 0x0

    .line 250
    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$ListIterator;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iget-object v1, p0, Landroid/arch/core/internal/SafeIterableMap$ListIterator;->mExpectedEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    if-ne v0, v1, :cond_1

    .line 251
    :cond_0
    return-object v2

    .line 250
    :cond_1
    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$ListIterator;->mExpectedEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$ListIterator;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    invoke-virtual {p0, v0}, Landroid/arch/core/internal/SafeIterableMap$ListIterator;->forward(Landroid/arch/core/internal/SafeIterableMap$Entry;)Landroid/arch/core/internal/SafeIterableMap$Entry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract forward(Landroid/arch/core/internal/SafeIterableMap$Entry;)Landroid/arch/core/internal/SafeIterableMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/core/internal/SafeIterableMap$Entry",
            "<TK;TV;>;)",
            "Landroid/arch/core/internal/SafeIterableMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 230
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap$ListIterator;, "Landroid/arch/core/internal/SafeIterableMap$ListIterator<TK;TV;>;"
    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$ListIterator;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 218
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap$ListIterator;, "Landroid/arch/core/internal/SafeIterableMap$ListIterator<TK;TV;>;"
    invoke-virtual {p0}, Landroid/arch/core/internal/SafeIterableMap$ListIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap$ListIterator;, "Landroid/arch/core/internal/SafeIterableMap$ListIterator<TK;TV;>;"
    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap$ListIterator;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    .line 259
    .local v0, "result":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-direct {p0}, Landroid/arch/core/internal/SafeIterableMap$ListIterator;->nextNode()Landroid/arch/core/internal/SafeIterableMap$Entry;

    move-result-object v1

    iput-object v1, p0, Landroid/arch/core/internal/SafeIterableMap$ListIterator;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    .line 260
    return-object v0
.end method
