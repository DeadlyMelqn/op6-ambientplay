.class Lcom/android/systemui/plugins/PluginManagerImpl$CrashWhilePluginActiveException;
.super Ljava/lang/RuntimeException;
.source "PluginManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/PluginManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrashWhilePluginActiveException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/plugins/PluginManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/PluginManagerImpl;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/plugins/PluginManagerImpl;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/systemui/plugins/PluginManagerImpl$CrashWhilePluginActiveException;->this$0:Lcom/android/systemui/plugins/PluginManagerImpl;

    .line 380
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 381
    return-void
.end method
