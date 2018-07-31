.class Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
.super Lcom/android/server/wm/WindowContainer;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DisplayChildWindowContainer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/android/server/wm/WindowContainer;",
        ">",
        "Lcom/android/server/wm/WindowContainer",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3365
    .local p0, "this":Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;, "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer<TE;>;"
    invoke-direct {p0}, Lcom/android/server/wm/WindowContainer;-><init>()V

    return-void
.end method


# virtual methods
.method fillsParent()Z
    .locals 1

    .prologue
    .line 3377
    .local p0, "this":Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;, "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method get(I)Lcom/android/server/wm/WindowContainer;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 3372
    .local p0, "this":Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;, "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    return-object v0
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 3382
    .local p0, "this":Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;, "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method size()I
    .locals 1

    .prologue
    .line 3368
    .local p0, "this":Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;, "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    return v0
.end method
