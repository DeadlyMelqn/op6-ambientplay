.class Lcom/google/tagmanager/PersistentHitStore$StoreDispatchListener;
.super Ljava/lang/Object;
.source "PersistentHitStore.java"

# interfaces
.implements Lcom/google/tagmanager/SimpleNetworkDispatcher$DispatchListener;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/PersistentHitStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoreDispatchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/PersistentHitStore;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/PersistentHitStore;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/google/tagmanager/PersistentHitStore$StoreDispatchListener;->this$0:Lcom/google/tagmanager/PersistentHitStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
