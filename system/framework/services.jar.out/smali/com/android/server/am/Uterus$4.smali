.class Lcom/android/server/am/Uterus$4;
.super Ljava/lang/Object;
.source "Uterus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/Uterus;->scheduleBackup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/Uterus;


# direct methods
.method constructor <init>(Lcom/android/server/am/Uterus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/Uterus;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/am/Uterus$4;->this$0:Lcom/android/server/am/Uterus;

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/server/am/Uterus$4;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v0}, Lcom/android/server/am/Uterus;->-wrap0(Lcom/android/server/am/Uterus;)V

    .line 368
    iget-object v0, p0, Lcom/android/server/am/Uterus$4;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v0}, Lcom/android/server/am/Uterus;->-wrap1(Lcom/android/server/am/Uterus;)V

    .line 369
    return-void
.end method