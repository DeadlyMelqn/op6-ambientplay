.class Landroid/hardware/LegacySensorManager$1;
.super Landroid/view/IRotationWatcher$Stub;
.source "LegacySensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/LegacySensorManager;-><init>(Landroid/hardware/SensorManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/LegacySensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/LegacySensorManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/LegacySensorManager;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/hardware/LegacySensorManager$1;->this$0:Landroid/hardware/LegacySensorManager;

    .line 58
    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    .line 60
    invoke-static {p1}, Landroid/hardware/LegacySensorManager;->onRotationChanged(I)V

    .line 61
    return-void
.end method
