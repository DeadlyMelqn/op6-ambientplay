.class Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;
.super Ljava/lang/Object;
.source "PrivateVolumeSettings.java"

# interfaces
.implements Lcom/oneplus/settings/storage/OPMediaProvider$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public loaded(Lcom/oneplus/settings/storage/OPMediaProvider$FileType;J)V
    .locals 2
    .param p1, "type"    # Lcom/oneplus/settings/storage/OPMediaProvider$FileType;
    .param p2, "size"    # J

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$2;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-static {v0, p1, p2, p3}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->-wrap1(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Lcom/oneplus/settings/storage/OPMediaProvider$FileType;J)V

    .line 756
    return-void
.end method
