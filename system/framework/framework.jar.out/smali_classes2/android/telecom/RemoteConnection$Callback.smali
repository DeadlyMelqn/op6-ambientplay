.class public abstract Landroid/telecom/RemoteConnection$Callback;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddressChanged(Landroid/telecom/RemoteConnection;Landroid/net/Uri;I)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "presentation"    # I

    .prologue
    .line 152
    return-void
.end method

.method public onCallerDisplayNameChanged(Landroid/telecom/RemoteConnection;Ljava/lang/String;I)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .prologue
    .line 164
    return-void
.end method

.method public onConferenceChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConference;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "conference"    # Landroid/telecom/RemoteConference;

    .prologue
    .line 216
    return-void
.end method

.method public onConferenceableConnectionsChanged(Landroid/telecom/RemoteConnection;Ljava/util/List;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/RemoteConnection;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p2, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    return-void
.end method

.method public onConnectionCapabilitiesChanged(Landroid/telecom/RemoteConnection;I)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "connectionCapabilities"    # I

    .prologue
    .line 92
    return-void
.end method

.method public onConnectionEvent(Landroid/telecom/RemoteConnection;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 235
    return-void
.end method

.method public onConnectionPropertiesChanged(Landroid/telecom/RemoteConnection;I)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "connectionProperties"    # I

    .prologue
    .line 103
    return-void
.end method

.method public onDestroyed(Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 181
    return-void
.end method

.method public onDisconnected(Landroid/telecom/RemoteConnection;Landroid/telecom/DisconnectCause;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 72
    return-void
.end method

.method public onExtrasChanged(Landroid/telecom/RemoteConnection;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 224
    return-void
.end method

.method public onPostDialChar(Landroid/telecom/RemoteConnection;C)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "nextChar"    # C

    .prologue
    .line 123
    return-void
.end method

.method public onPostDialWait(Landroid/telecom/RemoteConnection;Ljava/lang/String;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "remainingPostDialSequence"    # Ljava/lang/String;

    .prologue
    .line 114
    return-void
.end method

.method public onRemoteRttRequest(Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 270
    return-void
.end method

.method public onRingbackRequested(Landroid/telecom/RemoteConnection;Z)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "ringback"    # Z

    .prologue
    .line 81
    return-void
.end method

.method public onRttInitiationFailure(Landroid/telecom/RemoteConnection;I)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "reason"    # I

    .prologue
    .line 254
    return-void
.end method

.method public onRttInitiationSuccess(Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 243
    return-void
.end method

.method public onRttSessionRemotelyTerminated(Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 262
    return-void
.end method

.method public onStateChanged(Landroid/telecom/RemoteConnection;I)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "state"    # I

    .prologue
    .line 61
    return-void
.end method

.method public onStatusHintsChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/StatusHints;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    .line 141
    return-void
.end method

.method public onVideoProviderChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$VideoProvider;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "videoProvider"    # Landroid/telecom/RemoteConnection$VideoProvider;

    .prologue
    .line 204
    return-void
.end method

.method public onVideoStateChanged(Landroid/telecom/RemoteConnection;I)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "videoState"    # I

    .prologue
    .line 173
    return-void
.end method

.method public onVoipAudioChanged(Landroid/telecom/RemoteConnection;Z)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;
    .param p2, "isVoip"    # Z

    .prologue
    .line 132
    return-void
.end method
