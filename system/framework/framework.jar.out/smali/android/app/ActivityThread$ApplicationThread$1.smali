.class Landroid/app/ActivityThread$ApplicationThread$1;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityThread$ApplicationThread;->dumpDbInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/ActivityThread$ApplicationThread;

.field final synthetic val$args:[Ljava/lang/String;

.field final synthetic val$dup:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread$ApplicationThread;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Landroid/app/ActivityThread$ApplicationThread;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread$1;->this$1:Landroid/app/ActivityThread$ApplicationThread;

    iput-object p2, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$dup:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$args:[Ljava/lang/String;

    .line 1314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1318
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread$1;->this$1:Landroid/app/ActivityThread$ApplicationThread;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$dup:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$args:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread$ApplicationThread;->-wrap0(Landroid/app/ActivityThread$ApplicationThread;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1320
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$dup:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1322
    return-void

    .line 1319
    :catchall_0
    move-exception v0

    .line 1320
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread$1;->val$dup:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1319
    throw v0
.end method
