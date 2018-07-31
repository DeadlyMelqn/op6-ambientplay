.class Lcom/android/server/wm/WindowContainerController;
.super Ljava/lang/Object;
.source "WindowContainerController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/android/server/wm/WindowContainer;",
        "I::",
        "Lcom/android/server/wm/WindowContainerListener;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mContainer:Lcom/android/server/wm/WindowContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final mListener:Lcom/android/server/wm/WindowContainerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field final mRoot:Lcom/android/server/wm/RootWindowContainer;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mWindowMap:Lcom/android/server/wm/WindowHashMap;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowContainerListener;Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lcom/android/server/wm/WindowManagerService;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/wm/WindowContainerController;, "Lcom/android/server/wm/WindowContainerController<TE;TI;>;"
    .local p1, "listener":Lcom/android/server/wm/WindowContainerListener;, "TI;"
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/wm/WindowContainerController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    .line 45
    iput-object p2, p0, Lcom/android/server/wm/WindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 47
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    :cond_0
    iput-object v1, p0, Lcom/android/server/wm/WindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    .line 48
    return-void

    :cond_1
    move-object v0, v1

    .line 46
    goto :goto_0
.end method


# virtual methods
.method checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    .prologue
    .line 68
    .local p0, "this":Lcom/android/server/wm/WindowContainerController;, "Lcom/android/server/wm/WindowContainerController<TE;TI;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method removeContainer()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/server/wm/WindowContainerController;, "Lcom/android/server/wm/WindowContainerController<TE;TI;>;"
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->setController(Lcom/android/server/wm/WindowContainerController;)V

    .line 63
    iput-object v1, p0, Lcom/android/server/wm/WindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 65
    :cond_0
    return-void
.end method

.method setContainer(Lcom/android/server/wm/WindowContainer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/android/server/wm/WindowContainerController;, "Lcom/android/server/wm/WindowContainerController<TE;TI;>;"
    .local p1, "container":Lcom/android/server/wm/WindowContainer;, "TE;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t set container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 53
    const-string/jumbo v2, " for controller="

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 53
    const-string/jumbo v2, " Already set to="

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 53
    iget-object v2, p0, Lcom/android/server/wm/WindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/WindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 56
    return-void
.end method
