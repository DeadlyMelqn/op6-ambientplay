.class Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener$1;
.super Ljava/lang/Object;
.source "QSEditTileAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener$1;->this$1:Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener$1;->this$1:Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;

    invoke-static {}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->-get5()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;->-wrap0(Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;I)V

    .line 235
    return-void
.end method