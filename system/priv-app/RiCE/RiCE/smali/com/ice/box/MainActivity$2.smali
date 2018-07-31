.class Lcom/ice/box/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/MainActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/MainActivity;

.field final synthetic val$isNightly:Z


# direct methods
.method constructor <init>(Lcom/ice/box/MainActivity;Z)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/ice/box/MainActivity$2;->this$0:Lcom/ice/box/MainActivity;

    iput-boolean p2, p0, Lcom/ice/box/MainActivity$2;->val$isNightly:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 270
    iget-boolean v0, p0, Lcom/ice/box/MainActivity$2;->val$isNightly:Z

    if-nez v0, :cond_0

    .line 271
    iget-object p0, p0, Lcom/ice/box/MainActivity$2;->this$0:Lcom/ice/box/MainActivity;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/MainActivity;->access$000(Lcom/ice/box/MainActivity;)V

    goto :goto_0

    .line 273
    :cond_0
    iget-object p0, p0, Lcom/ice/box/MainActivity$2;->this$0:Lcom/ice/box/MainActivity;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/MainActivity;->access$100(Lcom/ice/box/MainActivity;)V

    :goto_0
    return-void
.end method
