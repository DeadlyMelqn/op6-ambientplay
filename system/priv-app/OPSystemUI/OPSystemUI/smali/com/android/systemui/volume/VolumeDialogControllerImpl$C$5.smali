.class Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$5;
.super Ljava/lang/Object;
.source "VolumeDialogControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onConfigurationChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

.field final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$5;->this$1:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$5;->val$entry:Ljava/util/Map$Entry;

    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$5;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;->onConfigurationChanged()V

    .line 815
    return-void
.end method