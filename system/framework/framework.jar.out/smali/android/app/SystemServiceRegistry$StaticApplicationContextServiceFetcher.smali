.class abstract Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"

# interfaces
.implements Landroid/app/SystemServiceRegistry$ServiceFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "StaticApplicationContextServiceFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/SystemServiceRegistry$ServiceFetcher",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mCachedInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1085
    .local p0, "this":Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;, "Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createService(Landroid/content/Context;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation
.end method

.method public final getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1090
    .local p0, "this":Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;, "Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher<TT;>;"
    monitor-enter p0

    .line 1091
    :try_start_0
    iget-object v2, p0, Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;->mCachedInstance:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 1092
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getApplicationContext()Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1098
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    .end local v0    # "appContext":Landroid/content/Context;
    :goto_0
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;->createService(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;->mCachedInstance:Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1103
    :cond_0
    :goto_1
    :try_start_2
    iget-object v2, p0, Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;->mCachedInstance:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .restart local v0    # "appContext":Landroid/content/Context;
    :cond_1
    move-object v0, p1

    .line 1098
    goto :goto_0

    .line 1099
    .end local v0    # "appContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 1100
    .local v1, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :try_start_3
    invoke-static {v1}, Landroid/app/SystemServiceRegistry;->onServiceNotFound(Landroid/os/ServiceManager$ServiceNotFoundException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1090
    .end local v1    # "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
