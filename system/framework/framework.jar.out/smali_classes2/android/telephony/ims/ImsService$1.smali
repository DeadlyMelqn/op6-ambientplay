.class Landroid/telephony/ims/ImsService$1;
.super Lcom/android/ims/internal/IImsServiceController$Stub;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/ims/ImsService;


# direct methods
.method constructor <init>(Landroid/telephony/ims/ImsService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/ims/ImsService;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    .line 102
    invoke-direct {p0}, Lcom/android/ims/internal/IImsServiceController$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "addRegistrationListener"

    invoke-static {v1, v2}, Landroid/telephony/ims/ImsService;->-wrap1(Landroid/telephony/ims/ImsService;Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 192
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    .line 193
    .local v0, "feature":Landroid/telephony/ims/feature/MMTelFeature;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0, p3}, Landroid/telephony/ims/feature/MMTelFeature;->addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 197
    return-void

    .line 191
    .end local v0    # "feature":Landroid/telephony/ims/feature/MMTelFeature;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public createCallProfile(IIIII)Lcom/android/ims/ImsCallProfile;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "sessionId"    # I
    .param p4, "callSessionType"    # I
    .param p5, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 214
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "createCallProfile"

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 216
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    .line 217
    .local v0, "feature":Landroid/telephony/ims/feature/MMTelFeature;
    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0, p3, p4, p5}, Landroid/telephony/ims/feature/MMTelFeature;->createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    .line 221
    return-object v4

    .line 215
    .end local v0    # "feature":Landroid/telephony/ims/feature/MMTelFeature;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public createCallSession(IIILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "sessionId"    # I
    .param p4, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p5, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 227
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "createCallSession"

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 229
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    .line 230
    .local v0, "feature":Landroid/telephony/ims/feature/MMTelFeature;
    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0, p3, p4, p5}, Landroid/telephony/ims/feature/MMTelFeature;->createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    .line 234
    return-object v4

    .line 228
    .end local v0    # "feature":Landroid/telephony/ims/feature/MMTelFeature;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public createImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "feature"    # I
    .param p3, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v0}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "createImsFeature"

    invoke-virtual {v0, v2, v3}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v0, p1, p2, p3}, Landroid/telephony/ims/ImsService;->-wrap2(Landroid/telephony/ims/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 111
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public endSession(III)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 138
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v3, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v4, "endSession"

    invoke-virtual {v1, v3, v4}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    .line 140
    .local v0, "feature":Landroid/telephony/ims/feature/MMTelFeature;
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0, p3}, Landroid/telephony/ims/feature/MMTelFeature;->endSession(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 144
    return-void

    .line 137
    .end local v0    # "feature":Landroid/telephony/ims/feature/MMTelFeature;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getConfigInterface(II)Lcom/android/ims/internal/IImsConfig;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 266
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "getConfigInterface"

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 268
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    .line 269
    .local v0, "feature":Landroid/telephony/ims/feature/MMTelFeature;
    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Landroid/telephony/ims/feature/MMTelFeature;->getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    .line 273
    return-object v4

    .line 267
    .end local v0    # "feature":Landroid/telephony/ims/feature/MMTelFeature;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getEcbmInterface(II)Lcom/android/ims/internal/IImsEcbm;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 301
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "getEcbmInterface"

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 303
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    .line 304
    .local v0, "feature":Landroid/telephony/ims/feature/MMTelFeature;
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Landroid/telephony/ims/feature/MMTelFeature;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    .line 308
    return-object v4

    .line 302
    .end local v0    # "feature":Landroid/telephony/ims/feature/MMTelFeature;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getFeatureStatus(II)I
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v3, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v4, "getFeatureStatus"

    invoke-static {v3, v4}, Landroid/telephony/ims/ImsService;->-wrap1(Landroid/telephony/ims/ImsService;Ljava/lang/String;)V

    .line 174
    const/4 v2, 0x0

    .line 175
    .local v2, "status":I
    iget-object v3, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v3}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    .line 176
    :try_start_0
    iget-object v3, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v3}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 177
    .local v1, "featureMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/feature/ImsFeature;>;"
    if-eqz v1, :cond_0

    .line 178
    iget-object v3, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-virtual {v3, v1, p2}, Landroid/telephony/ims/ImsService;->getImsFeatureFromType(Landroid/util/SparseArray;I)Landroid/telephony/ims/feature/ImsFeature;

    move-result-object v0

    .line 179
    .local v0, "feature":Landroid/telephony/ims/feature/ImsFeature;
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Landroid/telephony/ims/feature/ImsFeature;->getFeatureState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .end local v0    # "feature":Landroid/telephony/ims/feature/ImsFeature;
    :cond_0
    monitor-exit v4

    .line 184
    return v2

    .line 175
    .end local v1    # "featureMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/feature/ImsFeature;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getMultiEndpointInterface(II)Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 326
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "getMultiEndpointInterface"

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 328
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    .line 329
    .local v0, "feature":Landroid/telephony/ims/feature/MMTelFeature;
    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Landroid/telephony/ims/feature/MMTelFeature;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    .line 333
    return-object v4

    .line 327
    .end local v0    # "feature":Landroid/telephony/ims/feature/MMTelFeature;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getPendingCallSession(IIILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "sessionId"    # I
    .param p4, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 240
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "getPendingCallSession"

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 242
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    .line 243
    .local v0, "feature":Landroid/telephony/ims/feature/MMTelFeature;
    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0, p3, p4}, Landroid/telephony/ims/feature/MMTelFeature;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    .line 247
    return-object v4

    .line 241
    .end local v0    # "feature":Landroid/telephony/ims/feature/MMTelFeature;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getUtInterface(II)Lcom/android/ims/internal/IImsUt;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 253
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "getUtInterface"

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 255
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    .line 256
    .local v0, "feature":Landroid/telephony/ims/feature/MMTelFeature;
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Landroid/telephony/ims/feature/MMTelFeature;->getUtInterface()Lcom/android/ims/internal/IImsUt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    .line 260
    return-object v4

    .line 254
    .end local v0    # "feature":Landroid/telephony/ims/feature/MMTelFeature;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isConnected(IIII)Z
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "callSessionType"    # I
    .param p4, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "isConnected"

    invoke-static {v1, v2}, Landroid/telephony/ims/ImsService;->-wrap1(Landroid/telephony/ims/ImsService;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 151
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    .line 152
    .local v0, "feature":Landroid/telephony/ims/feature/MMTelFeature;
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0, p3, p4}, Landroid/telephony/ims/feature/MMTelFeature;->isConnected(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :cond_0
    monitor-exit v2

    .line 156
    const/4 v1, 0x0

    return v1

    .line 150
    .end local v0    # "feature":Landroid/telephony/ims/feature/MMTelFeature;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isOpened(II)Z
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "isOpened"

    invoke-static {v1, v2}, Landroid/telephony/ims/ImsService;->-wrap1(Landroid/telephony/ims/ImsService;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 163
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    .line 164
    .local v0, "feature":Landroid/telephony/ims/feature/MMTelFeature;
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Landroid/telephony/ims/feature/MMTelFeature;->isOpened()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :cond_0
    monitor-exit v2

    .line 168
    const/4 v1, 0x0

    return v1

    .line 162
    .end local v0    # "feature":Landroid/telephony/ims/feature/MMTelFeature;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public removeImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "feature"    # I
    .param p3, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v0}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "removeImsFeature"

    invoke-virtual {v0, v2, v3}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v0, p1, p2, p3}, Landroid/telephony/ims/ImsService;->-wrap3(Landroid/telephony/ims/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 120
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "removeRegistrationListener"

    invoke-static {v1, v2}, Landroid/telephony/ims/ImsService;->-wrap1(Landroid/telephony/ims/ImsService;Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 204
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    .line 205
    .local v0, "feature":Landroid/telephony/ims/feature/MMTelFeature;
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0, p3}, Landroid/telephony/ims/feature/MMTelFeature;->removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 209
    return-void

    .line 203
    .end local v0    # "feature":Landroid/telephony/ims/feature/MMTelFeature;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setUiTTYMode(IIILandroid/os/Message;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "uiTtyMode"    # I
    .param p4, "onComplete"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "setUiTTYMode"

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 316
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    .line 317
    .local v0, "feature":Landroid/telephony/ims/feature/MMTelFeature;
    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0, p3, p4}, Landroid/telephony/ims/feature/MMTelFeature;->setUiTTYMode(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 321
    return-void

    .line 315
    .end local v0    # "feature":Landroid/telephony/ims/feature/MMTelFeature;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public startSession(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p4, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "startSession"

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 127
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    .line 128
    .local v0, "feature":Landroid/telephony/ims/feature/MMTelFeature;
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p3, p4}, Landroid/telephony/ims/feature/MMTelFeature;->startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :cond_0
    monitor-exit v2

    .line 132
    const/4 v1, 0x0

    return v1

    .line 126
    .end local v0    # "feature":Landroid/telephony/ims/feature/MMTelFeature;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public turnOffIms(II)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 289
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "turnOffIms"

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 291
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    .line 292
    .local v0, "feature":Landroid/telephony/ims/feature/MMTelFeature;
    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Landroid/telephony/ims/feature/MMTelFeature;->turnOffIms()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 296
    return-void

    .line 290
    .end local v0    # "feature":Landroid/telephony/ims/feature/MMTelFeature;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public turnOnIms(II)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "turnOnIms"

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 280
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    .line 281
    .local v0, "feature":Landroid/telephony/ims/feature/MMTelFeature;
    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0}, Landroid/telephony/ims/feature/MMTelFeature;->turnOnIms()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 285
    return-void

    .line 279
    .end local v0    # "feature":Landroid/telephony/ims/feature/MMTelFeature;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
