.class Landroid/telephony/mbms/InternalStreamingServiceCallback$4;
.super Ljava/lang/Object;
.source "InternalStreamingServiceCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalStreamingServiceCallback;->onBroadcastSignalStrengthUpdated(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

.field final synthetic val$signalStrength:I


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/mbms/InternalStreamingServiceCallback;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$4;->this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    iput p2, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$4;->val$signalStrength:I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$4;->this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    invoke-static {v0}, Landroid/telephony/mbms/InternalStreamingServiceCallback;->-get0(Landroid/telephony/mbms/InternalStreamingServiceCallback;)Landroid/telephony/mbms/StreamingServiceCallback;

    move-result-object v0

    iget v1, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$4;->val$signalStrength:I

    invoke-virtual {v0, v1}, Landroid/telephony/mbms/StreamingServiceCallback;->onBroadcastSignalStrengthUpdated(I)V

    .line 85
    return-void
.end method
