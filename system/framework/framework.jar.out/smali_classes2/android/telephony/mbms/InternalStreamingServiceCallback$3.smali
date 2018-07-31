.class Landroid/telephony/mbms/InternalStreamingServiceCallback$3;
.super Ljava/lang/Object;
.source "InternalStreamingServiceCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalStreamingServiceCallback;->onMediaDescriptionUpdated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/mbms/InternalStreamingServiceCallback;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$3;->this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$3;->this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    invoke-static {v0}, Landroid/telephony/mbms/InternalStreamingServiceCallback;->-get0(Landroid/telephony/mbms/InternalStreamingServiceCallback;)Landroid/telephony/mbms/StreamingServiceCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/mbms/StreamingServiceCallback;->onMediaDescriptionUpdated()V

    .line 71
    return-void
.end method
