.class Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$4;
.super Ljava/lang/Object;
.source "VolumeDialogControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onLayoutDirectionChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

.field final synthetic val$entry:Ljava/util/Map$Entry;

.field final synthetic val$layoutDirection:I


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$4;->this$1:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$4;->val$entry:Ljava/util/Map$Entry;

    iput p3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$4;->val$layoutDirection:I

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$4;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$4;->val$layoutDirection:I

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;->onLayoutDirectionChanged(I)V

    .line 751
    return-void
.end method
