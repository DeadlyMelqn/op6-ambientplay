.class Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;
.super Landroid/telephony/ims/stub/ImsCallSessionListenerImplBase;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IImsCallSessionListenerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/internal/ImsCallSession;


# direct methods
.method private constructor <init>(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsCallSessionListenerImplBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "-this1"    # Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;-><init>(Lcom/android/ims/internal/ImsCallSession;)V

    return-void
.end method


# virtual methods
.method public callSessionConferenceExtendFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionConferenceExtendFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 1246
    :cond_0
    return-void
.end method

.method public callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 1253
    new-instance v2, Lcom/android/ims/internal/ImsCallSession;

    invoke-direct {v2, p2}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    .line 1252
    invoke-virtual {v0, v1, v2, p3}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionConferenceExtendReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 1255
    :cond_0
    return-void
.end method

.method public callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1235
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 1236
    new-instance v2, Lcom/android/ims/internal/ImsCallSession;

    invoke-direct {v2, p2}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    .line 1235
    invoke-virtual {v0, v1, v2, p3}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionConferenceExtended(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 1238
    :cond_0
    return-void
.end method

.method public callSessionConferenceStateUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsConferenceState;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "state"    # Lcom/android/ims/ImsConferenceState;

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionConferenceStateUpdated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsConferenceState;)V

    .line 1302
    :cond_0
    return-void
.end method

.method public callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionHandover(Lcom/android/ims/internal/ImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    .line 1348
    :cond_0
    return-void
.end method

.method public callSessionHandoverFailed(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1358
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionHandoverFailed(Lcom/android/ims/internal/ImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    .line 1361
    :cond_0
    return-void
.end method

.method public callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionHeld(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 1102
    :cond_0
    return-void
.end method

.method public callSessionHoldFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionHoldFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 1110
    :cond_0
    return-void
.end method

.method public callSessionHoldReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionHoldReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 1118
    :cond_0
    return-void
.end method

.method public callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/ImsCallSession;)V

    .line 1266
    :cond_0
    return-void
.end method

.method public callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1272
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 1275
    :cond_0
    return-void
.end method

.method public callSessionMayHandover(Lcom/android/ims/internal/IImsCallSession;II)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionMayHandover(Lcom/android/ims/internal/ImsCallSession;II)V

    .line 1335
    :cond_0
    return-void
.end method

.method public callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 5
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;

    .prologue
    const/4 v4, 0x0

    .line 1166
    iget-object v3, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v3}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1167
    if-eqz p1, :cond_2

    .line 1170
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    .line 1172
    .local v1, "validActiveSession":Lcom/android/ims/internal/ImsCallSession;
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v3}, Lcom/android/ims/internal/ImsCallSession;->-get1(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1174
    new-instance v2, Lcom/android/ims/internal/ImsCallSession;

    invoke-direct {v2, p1}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "validActiveSession":Lcom/android/ims/internal/ImsCallSession;
    .local v2, "validActiveSession":Lcom/android/ims/internal/ImsCallSession;
    move-object v1, v2

    .line 1179
    .end local v2    # "validActiveSession":Lcom/android/ims/internal/ImsCallSession;
    .restart local v1    # "validActiveSession":Lcom/android/ims/internal/ImsCallSession;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v3}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionMergeComplete(Lcom/android/ims/internal/ImsCallSession;)V

    .line 1185
    .end local v1    # "validActiveSession":Lcom/android/ims/internal/ImsCallSession;
    :cond_1
    :goto_1
    return-void

    .line 1176
    .restart local v1    # "validActiveSession":Lcom/android/ims/internal/ImsCallSession;
    :catch_0
    move-exception v0

    .line 1177
    .local v0, "rex":Landroid/os/RemoteException;
    const-string/jumbo v3, "ImsCallSession"

    const-string/jumbo v4, "callSessionMergeComplete: exception for getCallId!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1182
    .end local v0    # "rex":Landroid/os/RemoteException;
    .end local v1    # "validActiveSession":Lcom/android/ims/internal/ImsCallSession;
    :cond_2
    iget-object v3, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v3}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionMergeComplete(Lcom/android/ims/internal/ImsCallSession;)V

    goto :goto_1
.end method

.method public callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionMergeFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 1199
    :cond_0
    return-void
.end method

.method public callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 1156
    const-string/jumbo v0, "ImsCallSession"

    const-string/jumbo v1, "callSessionMergeStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    return-void
.end method

.method public callSessionMultipartyStateChanged(Lcom/android/ims/internal/IImsCallSession;Z)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "isMultiParty"    # Z

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionMultipartyStateChanged(Lcom/android/ims/internal/ImsCallSession;Z)V

    .line 1401
    :cond_0
    return-void
.end method

.method public callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionProgressing(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V

    .line 1067
    :cond_0
    return-void
.end method

.method public callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/ImsCallSession;)V

    .line 1282
    :cond_0
    return-void
.end method

.method public callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1288
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 1291
    :cond_0
    return-void
.end method

.method public callSessionResumeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionResumeFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 1134
    :cond_0
    return-void
.end method

.method public callSessionResumeReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionResumeReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 1142
    :cond_0
    return-void
.end method

.method public callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionResumed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 1126
    :cond_0
    return-void
.end method

.method public callSessionRttMessageReceived(Ljava/lang/String;)V
    .locals 1
    .param p1, "rttMessage"    # Ljava/lang/String;

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionRttMessageReceived(Ljava/lang/String;)V

    .line 1440
    :cond_0
    return-void
.end method

.method public callSessionRttModifyRequestReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "callProfile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionRttModifyRequestReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 1420
    :cond_0
    return-void
.end method

.method public callSessionRttModifyResponseReceived(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1428
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionRttModifyResponseReceived(I)V

    .line 1430
    :cond_0
    return-void
.end method

.method public callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionStartFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 1083
    :cond_0
    return-void
.end method

.method public callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionStarted(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 1075
    :cond_0
    return-void
.end method

.method public callSessionSuppServiceReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsSuppServiceNotification;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "suppServiceInfo"    # Lcom/android/ims/ImsSuppServiceNotification;

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionSuppServiceReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsSuppServiceNotification;)V

    .line 1409
    :cond_0
    return-void
.end method

.method public callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionTerminated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 1091
    :cond_0
    return-void
.end method

.method public callSessionTtyModeReceived(Lcom/android/ims/internal/IImsCallSession;I)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "mode"    # I

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionTtyModeReceived(Lcom/android/ims/internal/ImsCallSession;I)V

    .line 1386
    :cond_0
    return-void
.end method

.method public callSessionUpdateFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionUpdateFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 1218
    :cond_0
    return-void
.end method

.method public callSessionUpdateReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionUpdateReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 1226
    :cond_0
    return-void
.end method

.method public callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionUpdated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 1210
    :cond_0
    return-void
.end method

.method public callSessionUssdMessageReceived(Lcom/android/ims/internal/IImsCallSession;ILjava/lang/String;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "mode"    # I
    .param p3, "ussdMessage"    # Ljava/lang/String;

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionUssdMessageReceived(Lcom/android/ims/internal/ImsCallSession;ILjava/lang/String;)V

    .line 1313
    :cond_0
    return-void
.end method
