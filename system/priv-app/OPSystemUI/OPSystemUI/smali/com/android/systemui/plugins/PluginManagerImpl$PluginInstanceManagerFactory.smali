.class public Lcom/android/systemui/plugins/PluginManagerImpl$PluginInstanceManagerFactory;
.super Ljava/lang/Object;
.source "PluginManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/PluginManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluginInstanceManagerFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPluginInstanceManager(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;ZLandroid/os/Looper;Ljava/lang/Class;Lcom/android/systemui/plugins/PluginManagerImpl;)Lcom/android/systemui/plugins/PluginInstanceManager;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p4, "allowMultiple"    # Z
    .param p5, "looper"    # Landroid/os/Looper;
    .param p7, "manager"    # Lcom/android/systemui/plugins/PluginManagerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/PluginListener",
            "<TT;>;Z",
            "Landroid/os/Looper;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/android/systemui/plugins/PluginManagerImpl;",
            ")",
            "Lcom/android/systemui/plugins/PluginInstanceManager;"
        }
    .end annotation

    .prologue
    .line 311
    .local p3, "listener":Lcom/android/systemui/plugins/PluginListener;, "Lcom/android/systemui/plugins/PluginListener<TT;>;"
    .local p6, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/android/systemui/plugins/PluginInstanceManager;

    .line 312
    new-instance v1, Lcom/android/systemui/plugins/VersionInfo;

    invoke-direct {v1}, Lcom/android/systemui/plugins/VersionInfo;-><init>()V

    invoke-virtual {v1, p6}, Lcom/android/systemui/plugins/VersionInfo;->addClass(Ljava/lang/Class;)Lcom/android/systemui/plugins/VersionInfo;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p7

    .line 311
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/plugins/PluginInstanceManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;ZLandroid/os/Looper;Lcom/android/systemui/plugins/VersionInfo;Lcom/android/systemui/plugins/PluginManagerImpl;)V

    return-object v0
.end method
