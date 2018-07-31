.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;,
        Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    }
.end annotation


# static fields
.field public static final FAILURE_WIFI_DISABLED:I = 0x4

.field public static final SCAN_FAILURE_INTERRUPTED:I = 0x2

.field public static final SCAN_FAILURE_INVALID_CONFIGURATION:I = 0x3

.field public static final SCAN_SUCCESS:I = 0x1

.field public static final SCAN_UNKNOWN:I = 0x0

.field public static final WIFI_ASSOCIATED:I = 0x3

.field public static final WIFI_DISABLED:I = 0x1

.field public static final WIFI_DISCONNECTED:I = 0x2

.field public static final WIFI_UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;


# instance fields
.field public alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

.field public availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

.field public backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

.field public connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

.field public connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

.field public connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

.field public fullBandAllSingleScanListenerResults:I

.field public isLocationEnabled:Z

.field public isScanningAlwaysEnabled:Z

.field public isWifiNetworksAvailableNotificationOn:Z

.field public numBackgroundScans:I

.field public numConnectivityWatchdogBackgroundBad:I

.field public numConnectivityWatchdogBackgroundGood:I

.field public numConnectivityWatchdogPnoBad:I

.field public numConnectivityWatchdogPnoGood:I

.field public numEmptyScanResults:I

.field public numEnterpriseNetworkScanResults:I

.field public numEnterpriseNetworks:I

.field public numHalCrashes:I

.field public numHiddenNetworkScanResults:I

.field public numHiddenNetworks:I

.field public numHotspot2R1NetworkScanResults:I

.field public numHotspot2R2NetworkScanResults:I

.field public numLastResortWatchdogAvailableNetworksTotal:I

.field public numLastResortWatchdogBadAssociationNetworksTotal:I

.field public numLastResortWatchdogBadAuthenticationNetworksTotal:I

.field public numLastResortWatchdogBadDhcpNetworksTotal:I

.field public numLastResortWatchdogBadOtherNetworksTotal:I

.field public numLastResortWatchdogSuccesses:I

.field public numLastResortWatchdogTriggers:I

.field public numLastResortWatchdogTriggersWithBadAssociation:I

.field public numLastResortWatchdogTriggersWithBadAuthentication:I

.field public numLastResortWatchdogTriggersWithBadDhcp:I

.field public numLastResortWatchdogTriggersWithBadOther:I

.field public numNetworksAddedByApps:I

.field public numNetworksAddedByUser:I

.field public numNonEmptyScanResults:I

.field public numOneshotScans:I

.field public numOpenNetworkConnectMessageFailedToSend:I

.field public numOpenNetworkRecommendationUpdates:I

.field public numOpenNetworkScanResults:I

.field public numOpenNetworks:I

.field public numPasspointNetworks:I

.field public numPasspointProviderInstallSuccess:I

.field public numPasspointProviderInstallation:I

.field public numPasspointProviderUninstallSuccess:I

.field public numPasspointProviderUninstallation:I

.field public numPasspointProviders:I

.field public numPasspointProvidersSuccessfullyConnected:I

.field public numPersonalNetworkScanResults:I

.field public numPersonalNetworks:I

.field public numSavedNetworks:I

.field public numScans:I

.field public numTotalScanResults:I

.field public numWifiOnFailureDueToHal:I

.field public numWifiOnFailureDueToWificond:I

.field public numWifiToggledViaAirplane:I

.field public numWifiToggledViaSettings:I

.field public numWificondCrashes:I

.field public openNetworkRecommenderBlacklistSize:I

.field public partialAllSingleScanListenerResults:I

.field public pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

.field public recordDurationSec:I

.field public rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

.field public rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

.field public scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

.field public softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

.field public softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

.field public staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

.field public totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

.field public wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

.field public wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 515
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    .line 516
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 2

    .prologue
    .line 257
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    if-nez v0, :cond_1

    .line 258
    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    if-nez v0, :cond_0

    .line 261
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    sput-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 265
    :cond_1
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    return-object v0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2176
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2170
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 519
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    .line 520
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    .line 521
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    .line 522
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    .line 523
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    .line 524
    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    .line 525
    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    .line 526
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    .line 527
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    .line 528
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    .line 529
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    .line 530
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    .line 531
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    .line 532
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    .line 533
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    .line 534
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 535
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 536
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 537
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 538
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    .line 539
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    .line 540
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    .line 541
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    .line 542
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    .line 543
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    .line 544
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    .line 545
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    .line 546
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    .line 547
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    .line 548
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    .line 549
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    .line 550
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    .line 551
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    .line 552
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    .line 553
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 554
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    .line 555
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    .line 556
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    .line 557
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    .line 558
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    .line 559
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    .line 560
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    .line 561
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    .line 562
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    .line 563
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    .line 564
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    .line 565
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    .line 566
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    .line 567
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    .line 568
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    .line 569
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 570
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    .line 571
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    .line 572
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    .line 573
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToHal:I

    .line 574
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToWificond:I

    .line 575
    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    .line 576
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    .line 577
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    .line 578
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    .line 579
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    .line 580
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    .line 581
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    .line 582
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 583
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 584
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 585
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 586
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 587
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 588
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 589
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 590
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 591
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 592
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    .line 593
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    .line 594
    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    .line 595
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 596
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 597
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    .line 598
    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    .line 599
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    .line 600
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    .line 601
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->cachedSize:I

    .line 602
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 15

    .prologue
    .line 979
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v12

    .line 980
    .local v12, "size":I
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    if-eqz v13, :cond_1

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v13, v13

    if-lez v13, :cond_1

    .line 981
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v13, v13

    if-ge v11, v13, :cond_1

    .line 982
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    aget-object v2, v13, v11

    .line 983
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;
    if-eqz v2, :cond_0

    .line 985
    const/4 v13, 0x1

    .line 984
    invoke-static {v13, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    .line 981
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 989
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;
    .end local v11    # "i":I
    :cond_1
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    if-eqz v13, :cond_2

    .line 991
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    const/4 v14, 0x2

    .line 990
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 993
    :cond_2
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    if-eqz v13, :cond_3

    .line 995
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    const/4 v14, 0x3

    .line 994
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 997
    :cond_3
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    if-eqz v13, :cond_4

    .line 999
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    const/4 v14, 0x4

    .line 998
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1001
    :cond_4
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    if-eqz v13, :cond_5

    .line 1003
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    const/4 v14, 0x5

    .line 1002
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1005
    :cond_5
    iget-boolean v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    if-eqz v13, :cond_6

    .line 1007
    iget-boolean v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    const/4 v14, 0x6

    .line 1006
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v13

    add-int/2addr v12, v13

    .line 1009
    :cond_6
    iget-boolean v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    if-eqz v13, :cond_7

    .line 1011
    iget-boolean v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    const/4 v14, 0x7

    .line 1010
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v13

    add-int/2addr v12, v13

    .line 1013
    :cond_7
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    if-eqz v13, :cond_8

    .line 1015
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    const/16 v14, 0x8

    .line 1014
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1017
    :cond_8
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    if-eqz v13, :cond_9

    .line 1019
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    const/16 v14, 0x9

    .line 1018
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1021
    :cond_9
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    if-eqz v13, :cond_a

    .line 1023
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    const/16 v14, 0xa

    .line 1022
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1025
    :cond_a
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    if-eqz v13, :cond_b

    .line 1027
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    const/16 v14, 0xb

    .line 1026
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1029
    :cond_b
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    if-eqz v13, :cond_c

    .line 1031
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    const/16 v14, 0xc

    .line 1030
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1033
    :cond_c
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    if-eqz v13, :cond_d

    .line 1035
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    const/16 v14, 0xd

    .line 1034
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1037
    :cond_d
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    if-eqz v13, :cond_e

    .line 1039
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    const/16 v14, 0xe

    .line 1038
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1041
    :cond_e
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    if-eqz v13, :cond_f

    .line 1043
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    const/16 v14, 0xf

    .line 1042
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1045
    :cond_f
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v13, :cond_11

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v13, v13

    if-lez v13, :cond_11

    .line 1046
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_1
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v13, v13

    if-ge v11, v13, :cond_11

    .line 1047
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v8, v13, v11

    .line 1048
    .local v8, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v8, :cond_10

    .line 1050
    const/16 v13, 0x10

    .line 1049
    invoke-static {v13, v8}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    .line 1046
    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1054
    .end local v8    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    .end local v11    # "i":I
    :cond_11
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v13, :cond_13

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v13, v13

    if-lez v13, :cond_13

    .line 1055
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v13, v13

    if-ge v11, v13, :cond_13

    .line 1056
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v9, v13, v11

    .line 1057
    .local v9, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v9, :cond_12

    .line 1059
    const/16 v13, 0x11

    .line 1058
    invoke-static {v13, v9}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    .line 1055
    :cond_12
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1063
    .end local v9    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .end local v11    # "i":I
    :cond_13
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v13, :cond_15

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v13, v13

    if-lez v13, :cond_15

    .line 1064
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v13, v13

    if-ge v11, v13, :cond_15

    .line 1065
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v8, v13, v11

    .line 1066
    .restart local v8    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v8, :cond_14

    .line 1068
    const/16 v13, 0x12

    .line 1067
    invoke-static {v13, v8}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    .line 1064
    :cond_14
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1072
    .end local v8    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    .end local v11    # "i":I
    :cond_15
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v13, :cond_17

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v13, v13

    if-lez v13, :cond_17

    .line 1073
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_4
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v13, v13

    if-ge v11, v13, :cond_17

    .line 1074
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v9, v13, v11

    .line 1075
    .restart local v9    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v9, :cond_16

    .line 1077
    const/16 v13, 0x13

    .line 1076
    invoke-static {v13, v9}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    .line 1073
    :cond_16
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1081
    .end local v9    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .end local v11    # "i":I
    :cond_17
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    if-eqz v13, :cond_18

    .line 1083
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    const/16 v14, 0x14

    .line 1082
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1085
    :cond_18
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    if-eqz v13, :cond_19

    .line 1087
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    const/16 v14, 0x15

    .line 1086
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1089
    :cond_19
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    if-eqz v13, :cond_1a

    .line 1091
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    const/16 v14, 0x16

    .line 1090
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1093
    :cond_1a
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    if-eqz v13, :cond_1b

    .line 1095
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    const/16 v14, 0x17

    .line 1094
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1097
    :cond_1b
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    if-eqz v13, :cond_1c

    .line 1099
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    const/16 v14, 0x18

    .line 1098
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1101
    :cond_1c
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    if-eqz v13, :cond_1d

    .line 1103
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    const/16 v14, 0x19

    .line 1102
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1105
    :cond_1d
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    if-eqz v13, :cond_1e

    .line 1107
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    const/16 v14, 0x1a

    .line 1106
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1109
    :cond_1e
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    if-eqz v13, :cond_1f

    .line 1111
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    const/16 v14, 0x1b

    .line 1110
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1113
    :cond_1f
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    if-eqz v13, :cond_20

    .line 1115
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    const/16 v14, 0x1c

    .line 1114
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1117
    :cond_20
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    if-eqz v13, :cond_21

    .line 1119
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    const/16 v14, 0x1d

    .line 1118
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1121
    :cond_21
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    if-eqz v13, :cond_22

    .line 1123
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    const/16 v14, 0x1e

    .line 1122
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1125
    :cond_22
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    if-eqz v13, :cond_23

    .line 1127
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    const/16 v14, 0x1f

    .line 1126
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1129
    :cond_23
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    if-eqz v13, :cond_24

    .line 1131
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    const/16 v14, 0x20

    .line 1130
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1133
    :cond_24
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    if-eqz v13, :cond_25

    .line 1135
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    const/16 v14, 0x21

    .line 1134
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1137
    :cond_25
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    if-eqz v13, :cond_26

    .line 1139
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    const/16 v14, 0x22

    .line 1138
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1141
    :cond_26
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v13, :cond_28

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v13, v13

    if-lez v13, :cond_28

    .line 1142
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_5
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v13, v13

    if-ge v11, v13, :cond_28

    .line 1143
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    aget-object v4, v13, v11

    .line 1144
    .local v4, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    if-eqz v4, :cond_27

    .line 1146
    const/16 v13, 0x23

    .line 1145
    invoke-static {v13, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    .line 1142
    :cond_27
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1150
    .end local v4    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    .end local v11    # "i":I
    :cond_28
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    if-eqz v13, :cond_29

    .line 1152
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    const/16 v14, 0x24

    .line 1151
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1154
    :cond_29
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    if-eqz v13, :cond_2a

    .line 1156
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    const/16 v14, 0x25

    .line 1155
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1158
    :cond_2a
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    if-eqz v13, :cond_2b

    .line 1160
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    const/16 v14, 0x26

    .line 1159
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1162
    :cond_2b
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    if-eqz v13, :cond_2c

    .line 1164
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    const/16 v14, 0x27

    .line 1163
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1166
    :cond_2c
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    if-eqz v13, :cond_2d

    .line 1168
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    const/16 v14, 0x28

    .line 1167
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1170
    :cond_2d
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    if-eqz v13, :cond_2e

    .line 1172
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    const/16 v14, 0x29

    .line 1171
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1174
    :cond_2e
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    if-eqz v13, :cond_2f

    .line 1176
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    const/16 v14, 0x2a

    .line 1175
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1178
    :cond_2f
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    if-eqz v13, :cond_30

    .line 1180
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    const/16 v14, 0x2b

    .line 1179
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1182
    :cond_30
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    if-eqz v13, :cond_31

    .line 1184
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    const/16 v14, 0x2c

    .line 1183
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1186
    :cond_31
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    if-eqz v13, :cond_32

    .line 1188
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    const/16 v14, 0x2d

    .line 1187
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1190
    :cond_32
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    if-eqz v13, :cond_33

    .line 1192
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    const/16 v14, 0x2e

    .line 1191
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1194
    :cond_33
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    if-eqz v13, :cond_35

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v13, v13

    if-lez v13, :cond_35

    .line 1195
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_6
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v13, v13

    if-ge v11, v13, :cond_35

    .line 1196
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    aget-object v0, v13, v11

    .line 1197
    .local v0, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    if-eqz v0, :cond_34

    .line 1199
    const/16 v13, 0x2f

    .line 1198
    invoke-static {v13, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    .line 1195
    :cond_34
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 1203
    .end local v0    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    .end local v11    # "i":I
    :cond_35
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    if-eqz v13, :cond_37

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v13, v13

    if-lez v13, :cond_37

    .line 1204
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_7
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v13, v13

    if-ge v11, v13, :cond_37

    .line 1205
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    aget-object v10, v13, v11

    .line 1206
    .local v10, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;
    if-eqz v10, :cond_36

    .line 1208
    const/16 v13, 0x30

    .line 1207
    invoke-static {v13, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    .line 1204
    :cond_36
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1212
    .end local v10    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;
    .end local v11    # "i":I
    :cond_37
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    if-eqz v13, :cond_39

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v13, v13

    if-lez v13, :cond_39

    .line 1213
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_8
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v13, v13

    if-ge v11, v13, :cond_39

    .line 1214
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    aget-object v5, v13, v11

    .line 1215
    .local v5, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    if-eqz v5, :cond_38

    .line 1217
    const/16 v13, 0x31

    .line 1216
    invoke-static {v13, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    .line 1213
    :cond_38
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 1221
    .end local v5    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    .end local v11    # "i":I
    :cond_39
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    if-eqz v13, :cond_3b

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v13, v13

    if-lez v13, :cond_3b

    .line 1222
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_9
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v13, v13

    if-ge v11, v13, :cond_3b

    .line 1223
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    aget-object v6, v13, v11

    .line 1224
    .local v6, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    if-eqz v6, :cond_3a

    .line 1226
    const/16 v13, 0x32

    .line 1225
    invoke-static {v13, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    .line 1222
    :cond_3a
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 1230
    .end local v6    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    .end local v11    # "i":I
    :cond_3b
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v13, :cond_3d

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v13, v13

    if-lez v13, :cond_3d

    .line 1231
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_a
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v13, v13

    if-ge v11, v13, :cond_3d

    .line 1232
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    aget-object v4, v13, v11

    .line 1233
    .restart local v4    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    if-eqz v4, :cond_3c

    .line 1235
    const/16 v13, 0x33

    .line 1234
    invoke-static {v13, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    .line 1231
    :cond_3c
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 1239
    .end local v4    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    .end local v11    # "i":I
    :cond_3d
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    if-eqz v13, :cond_3f

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v13, v13

    if-lez v13, :cond_3f

    .line 1240
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_b
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v13, v13

    if-ge v11, v13, :cond_3f

    .line 1241
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    aget-object v7, v13, v11

    .line 1242
    .local v7, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    if-eqz v7, :cond_3e

    .line 1244
    const/16 v13, 0x34

    .line 1243
    invoke-static {v13, v7}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    .line 1240
    :cond_3e
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 1248
    .end local v7    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    .end local v11    # "i":I
    :cond_3f
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    if-eqz v13, :cond_40

    .line 1250
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    const/16 v14, 0x35

    .line 1249
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1252
    :cond_40
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    if-eqz v13, :cond_41

    .line 1254
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    const/16 v14, 0x36

    .line 1253
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1256
    :cond_41
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToHal:I

    if-eqz v13, :cond_42

    .line 1258
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToHal:I

    const/16 v14, 0x37

    .line 1257
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1260
    :cond_42
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToWificond:I

    if-eqz v13, :cond_43

    .line 1262
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToWificond:I

    const/16 v14, 0x38

    .line 1261
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1264
    :cond_43
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    if-eqz v13, :cond_44

    .line 1266
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    const/16 v14, 0x39

    .line 1265
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    .line 1268
    :cond_44
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    if-eqz v13, :cond_45

    .line 1270
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    const/16 v14, 0x3a

    .line 1269
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1272
    :cond_45
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    if-eqz v13, :cond_46

    .line 1274
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    const/16 v14, 0x3b

    .line 1273
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1276
    :cond_46
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    if-eqz v13, :cond_47

    .line 1278
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    const/16 v14, 0x3c

    .line 1277
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1280
    :cond_47
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    if-eqz v13, :cond_48

    .line 1282
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    const/16 v14, 0x3d

    .line 1281
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1284
    :cond_48
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    if-eqz v13, :cond_49

    .line 1286
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    const/16 v14, 0x3e

    .line 1285
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1288
    :cond_49
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    if-eqz v13, :cond_4a

    .line 1290
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    const/16 v14, 0x3f

    .line 1289
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1292
    :cond_4a
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v13, :cond_4c

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-lez v13, :cond_4c

    .line 1293
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_c
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-ge v11, v13, :cond_4c

    .line 1294
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v13, v11

    .line 1295
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_4b

    .line 1297
    const/16 v13, 0x40

    .line 1296
    invoke-static {v13, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    .line 1293
    :cond_4b
    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    .line 1301
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .end local v11    # "i":I
    :cond_4c
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v13, :cond_4e

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-lez v13, :cond_4e

    .line 1302
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_d
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-ge v11, v13, :cond_4e

    .line 1303
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v13, v11

    .line 1304
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_4d

    .line 1306
    const/16 v13, 0x41

    .line 1305
    invoke-static {v13, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    .line 1302
    :cond_4d
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 1310
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .end local v11    # "i":I
    :cond_4e
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v13, :cond_50

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-lez v13, :cond_50

    .line 1311
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_e
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-ge v11, v13, :cond_50

    .line 1312
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v13, v11

    .line 1313
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_4f

    .line 1315
    const/16 v13, 0x42

    .line 1314
    invoke-static {v13, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    .line 1311
    :cond_4f
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    .line 1319
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .end local v11    # "i":I
    :cond_50
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v13, :cond_52

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-lez v13, :cond_52

    .line 1320
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_f
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-ge v11, v13, :cond_52

    .line 1321
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v13, v11

    .line 1322
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_51

    .line 1324
    const/16 v13, 0x43

    .line 1323
    invoke-static {v13, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    .line 1320
    :cond_51
    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    .line 1328
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .end local v11    # "i":I
    :cond_52
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v13, :cond_54

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-lez v13, :cond_54

    .line 1329
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_10
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-ge v11, v13, :cond_54

    .line 1330
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v13, v11

    .line 1331
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_53

    .line 1333
    const/16 v13, 0x44

    .line 1332
    invoke-static {v13, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    .line 1329
    :cond_53
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    .line 1337
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .end local v11    # "i":I
    :cond_54
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v13, :cond_56

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-lez v13, :cond_56

    .line 1338
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_11
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-ge v11, v13, :cond_56

    .line 1339
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v13, v11

    .line 1340
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_55

    .line 1342
    const/16 v13, 0x45

    .line 1341
    invoke-static {v13, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    .line 1338
    :cond_55
    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    .line 1346
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .end local v11    # "i":I
    :cond_56
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v13, :cond_58

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-lez v13, :cond_58

    .line 1347
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_12
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-ge v11, v13, :cond_58

    .line 1348
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v13, v11

    .line 1349
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_57

    .line 1351
    const/16 v13, 0x46

    .line 1350
    invoke-static {v13, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    .line 1347
    :cond_57
    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    .line 1355
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .end local v11    # "i":I
    :cond_58
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v13, :cond_5a

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-lez v13, :cond_5a

    .line 1356
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_13
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-ge v11, v13, :cond_5a

    .line 1357
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v13, v11

    .line 1358
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_59

    .line 1360
    const/16 v13, 0x47

    .line 1359
    invoke-static {v13, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    .line 1356
    :cond_59
    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    .line 1364
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .end local v11    # "i":I
    :cond_5a
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v13, :cond_5c

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-lez v13, :cond_5c

    .line 1365
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_14
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-ge v11, v13, :cond_5c

    .line 1366
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v13, v11

    .line 1367
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_5b

    .line 1369
    const/16 v13, 0x48

    .line 1368
    invoke-static {v13, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    .line 1365
    :cond_5b
    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    .line 1373
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .end local v11    # "i":I
    :cond_5c
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v13, :cond_5e

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-lez v13, :cond_5e

    .line 1374
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_15
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v13, v13

    if-ge v11, v13, :cond_5e

    .line 1375
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v13, v11

    .line 1376
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_5d

    .line 1378
    const/16 v13, 0x49

    .line 1377
    invoke-static {v13, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    .line 1374
    :cond_5d
    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    .line 1382
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .end local v11    # "i":I
    :cond_5e
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    if-eqz v13, :cond_5f

    .line 1384
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    const/16 v14, 0x4a

    .line 1383
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1386
    :cond_5f
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    if-eqz v13, :cond_60

    .line 1388
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    const/16 v14, 0x4b

    .line 1387
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1390
    :cond_60
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    if-eqz v13, :cond_61

    .line 1392
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    const/16 v14, 0x4c

    .line 1391
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    .line 1394
    :cond_61
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-eqz v13, :cond_63

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v13, v13

    if-lez v13, :cond_63

    .line 1395
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_16
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v13, v13

    if-ge v11, v13, :cond_63

    .line 1396
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    aget-object v1, v13, v11

    .line 1397
    .local v1, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    if-eqz v1, :cond_62

    .line 1399
    const/16 v13, 0x4d

    .line 1398
    invoke-static {v13, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    .line 1395
    :cond_62
    add-int/lit8 v11, v11, 0x1

    goto :goto_16

    .line 1403
    .end local v1    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    .end local v11    # "i":I
    :cond_63
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-eqz v13, :cond_65

    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v13, v13

    if-lez v13, :cond_65

    .line 1404
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_17
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v13, v13

    if-ge v11, v13, :cond_65

    .line 1405
    iget-object v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    aget-object v1, v13, v11

    .line 1406
    .restart local v1    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    if-eqz v1, :cond_64

    .line 1408
    const/16 v13, 0x4e

    .line 1407
    invoke-static {v13, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v13

    add-int/2addr v12, v13

    .line 1404
    :cond_64
    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    .line 1412
    .end local v1    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    .end local v11    # "i":I
    :cond_65
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    if-eqz v13, :cond_66

    .line 1414
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    const/16 v14, 0x4f

    .line 1413
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1416
    :cond_66
    iget-boolean v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    if-eqz v13, :cond_67

    .line 1418
    iget-boolean v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    const/16 v14, 0x50

    .line 1417
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v13

    add-int/2addr v12, v13

    .line 1420
    :cond_67
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    if-eqz v13, :cond_68

    .line 1422
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    const/16 v14, 0x51

    .line 1421
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1424
    :cond_68
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    if-eqz v13, :cond_69

    .line 1426
    iget v13, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    const/16 v14, 0x52

    .line 1425
    invoke-static {v14, v13}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v13

    add-int/2addr v12, v13

    .line 1428
    :cond_69
    return v12
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1431
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 20
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1436
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v16

    .line 1437
    .local v16, "tag":I
    sparse-switch v16, :sswitch_data_0

    .line 1441
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v17

    if-nez v17, :cond_0

    .line 1442
    return-object p0

    .line 1439
    :sswitch_0
    return-object p0

    .line 1448
    :sswitch_1
    const/16 v17, 0xa

    .line 1447
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 1449
    .local v3, "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    const/4 v4, 0x0

    .line 1451
    .local v4, "i":I
    :goto_1
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v7, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    .line 1452
    .local v7, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;
    if-eqz v4, :cond_1

    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v7, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1455
    :cond_1
    :goto_2
    array-length v0, v7

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_3

    .line 1456
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;-><init>()V

    aput-object v17, v7, v4

    .line 1457
    aget-object v17, v7, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1458
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1455
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1449
    .end local v4    # "i":I
    .end local v7    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .restart local v4    # "i":I
    goto :goto_1

    .line 1461
    .restart local v7    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;
    :cond_3
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;-><init>()V

    aput-object v17, v7, v4

    .line 1462
    aget-object v17, v7, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1463
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    goto :goto_0

    .line 1467
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v7    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    goto/16 :goto_0

    .line 1471
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    goto/16 :goto_0

    .line 1475
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    goto/16 :goto_0

    .line 1479
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    goto/16 :goto_0

    .line 1483
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    goto/16 :goto_0

    .line 1487
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    goto/16 :goto_0

    .line 1491
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    goto/16 :goto_0

    .line 1495
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    goto/16 :goto_0

    .line 1499
    :sswitch_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    goto/16 :goto_0

    .line 1503
    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    goto/16 :goto_0

    .line 1507
    :sswitch_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    goto/16 :goto_0

    .line 1511
    :sswitch_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    goto/16 :goto_0

    .line 1515
    :sswitch_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    goto/16 :goto_0

    .line 1519
    :sswitch_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    goto/16 :goto_0

    .line 1524
    :sswitch_10
    const/16 v17, 0x82

    .line 1523
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 1525
    .restart local v3    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    const/4 v4, 0x0

    .line 1527
    .restart local v4    # "i":I
    :goto_3
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v13, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 1528
    .local v13, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v4, :cond_4

    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v13, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1531
    :cond_4
    :goto_4
    array-length v0, v13

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_6

    .line 1532
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v17, v13, v4

    .line 1533
    aget-object v17, v13, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1534
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1531
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1525
    .end local v4    # "i":I
    .end local v13    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .restart local v4    # "i":I
    goto :goto_3

    .line 1537
    .restart local v13    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_6
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v17, v13, v4

    .line 1538
    aget-object v17, v13, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1539
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    goto/16 :goto_0

    .line 1544
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v13    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :sswitch_11
    const/16 v17, 0x8a

    .line 1543
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 1545
    .restart local v3    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-object/from16 v17, v0

    if-nez v17, :cond_8

    const/4 v4, 0x0

    .line 1547
    .restart local v4    # "i":I
    :goto_5
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v14, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 1548
    .local v14, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v4, :cond_7

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v14, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1551
    :cond_7
    :goto_6
    array-length v0, v14

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_9

    .line 1552
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v17, v14, v4

    .line 1553
    aget-object v17, v14, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1554
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1551
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1545
    .end local v4    # "i":I
    .end local v14    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .restart local v4    # "i":I
    goto :goto_5

    .line 1557
    .restart local v14    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_9
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v17, v14, v4

    .line 1558
    aget-object v17, v14, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1559
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    goto/16 :goto_0

    .line 1564
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v14    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :sswitch_12
    const/16 v17, 0x92

    .line 1563
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 1565
    .restart local v3    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-object/from16 v17, v0

    if-nez v17, :cond_b

    const/4 v4, 0x0

    .line 1567
    .restart local v4    # "i":I
    :goto_7
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v13, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 1568
    .restart local v13    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v4, :cond_a

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v13, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1571
    :cond_a
    :goto_8
    array-length v0, v13

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_c

    .line 1572
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v17, v13, v4

    .line 1573
    aget-object v17, v13, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1574
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1571
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1565
    .end local v4    # "i":I
    .end local v13    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .restart local v4    # "i":I
    goto :goto_7

    .line 1577
    .restart local v13    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :cond_c
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v17, v13, v4

    .line 1578
    aget-object v17, v13, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1579
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    goto/16 :goto_0

    .line 1584
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v13    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    :sswitch_13
    const/16 v17, 0x9a

    .line 1583
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 1585
    .restart local v3    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-object/from16 v17, v0

    if-nez v17, :cond_e

    const/4 v4, 0x0

    .line 1587
    .restart local v4    # "i":I
    :goto_9
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v14, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 1588
    .restart local v14    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v4, :cond_d

    .line 1589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v14, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1591
    :cond_d
    :goto_a
    array-length v0, v14

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_f

    .line 1592
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v17, v14, v4

    .line 1593
    aget-object v17, v14, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1594
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1591
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 1585
    .end local v4    # "i":I
    .end local v14    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .restart local v4    # "i":I
    goto :goto_9

    .line 1597
    .restart local v14    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :cond_f
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v17, v14, v4

    .line 1598
    aget-object v17, v14, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1599
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    goto/16 :goto_0

    .line 1603
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v14    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    :sswitch_14
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    goto/16 :goto_0

    .line 1607
    :sswitch_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    goto/16 :goto_0

    .line 1611
    :sswitch_16
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    goto/16 :goto_0

    .line 1615
    :sswitch_17
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    goto/16 :goto_0

    .line 1619
    :sswitch_18
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    goto/16 :goto_0

    .line 1623
    :sswitch_19
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    goto/16 :goto_0

    .line 1627
    :sswitch_1a
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    goto/16 :goto_0

    .line 1631
    :sswitch_1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    goto/16 :goto_0

    .line 1635
    :sswitch_1c
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    goto/16 :goto_0

    .line 1639
    :sswitch_1d
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    goto/16 :goto_0

    .line 1643
    :sswitch_1e
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    goto/16 :goto_0

    .line 1647
    :sswitch_1f
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    goto/16 :goto_0

    .line 1651
    :sswitch_20
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    goto/16 :goto_0

    .line 1655
    :sswitch_21
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    goto/16 :goto_0

    .line 1659
    :sswitch_22
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    goto/16 :goto_0

    .line 1664
    :sswitch_23
    const/16 v17, 0x11a

    .line 1663
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 1665
    .restart local v3    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-object/from16 v17, v0

    if-nez v17, :cond_11

    const/4 v4, 0x0

    .line 1667
    .restart local v4    # "i":I
    :goto_b
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v9, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 1668
    .local v9, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    if-eqz v4, :cond_10

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v9, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1671
    :cond_10
    :goto_c
    array-length v0, v9

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_12

    .line 1672
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v17, v9, v4

    .line 1673
    aget-object v17, v9, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1674
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1671
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1665
    .end local v4    # "i":I
    .end local v9    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .restart local v4    # "i":I
    goto :goto_b

    .line 1677
    .restart local v9    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    :cond_12
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v17, v9, v4

    .line 1678
    aget-object v17, v9, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1679
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    goto/16 :goto_0

    .line 1683
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v9    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    :sswitch_24
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    goto/16 :goto_0

    .line 1687
    :sswitch_25
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    goto/16 :goto_0

    .line 1691
    :sswitch_26
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    goto/16 :goto_0

    .line 1695
    :sswitch_27
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    goto/16 :goto_0

    .line 1699
    :sswitch_28
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    goto/16 :goto_0

    .line 1703
    :sswitch_29
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    goto/16 :goto_0

    .line 1707
    :sswitch_2a
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    goto/16 :goto_0

    .line 1711
    :sswitch_2b
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    goto/16 :goto_0

    .line 1715
    :sswitch_2c
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    goto/16 :goto_0

    .line 1719
    :sswitch_2d
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    goto/16 :goto_0

    .line 1723
    :sswitch_2e
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    goto/16 :goto_0

    .line 1728
    :sswitch_2f
    const/16 v17, 0x17a

    .line 1727
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 1729
    .restart local v3    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    move-object/from16 v17, v0

    if-nez v17, :cond_14

    const/4 v4, 0x0

    .line 1731
    .restart local v4    # "i":I
    :goto_d
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v5, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    .line 1732
    .local v5, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    if-eqz v4, :cond_13

    .line 1733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1735
    :cond_13
    :goto_e
    array-length v0, v5

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_15

    .line 1736
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;-><init>()V

    aput-object v17, v5, v4

    .line 1737
    aget-object v17, v5, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1738
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1735
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1729
    .end local v4    # "i":I
    .end local v5    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .restart local v4    # "i":I
    goto :goto_d

    .line 1741
    .restart local v5    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    :cond_15
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;-><init>()V

    aput-object v17, v5, v4

    .line 1742
    aget-object v17, v5, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1743
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    goto/16 :goto_0

    .line 1748
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    :sswitch_30
    const/16 v17, 0x182

    .line 1747
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 1749
    .restart local v3    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    move-object/from16 v17, v0

    if-nez v17, :cond_17

    const/4 v4, 0x0

    .line 1751
    .restart local v4    # "i":I
    :goto_f
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v15, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    .line 1752
    .local v15, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;
    if-eqz v4, :cond_16

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v15, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1755
    :cond_16
    :goto_10
    array-length v0, v15

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_18

    .line 1756
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;-><init>()V

    aput-object v17, v15, v4

    .line 1757
    aget-object v17, v15, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1758
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1755
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1749
    .end local v4    # "i":I
    .end local v15    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .restart local v4    # "i":I
    goto :goto_f

    .line 1761
    .restart local v15    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;
    :cond_18
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;-><init>()V

    aput-object v17, v15, v4

    .line 1762
    aget-object v17, v15, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1763
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    goto/16 :goto_0

    .line 1768
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v15    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;
    :sswitch_31
    const/16 v17, 0x18a

    .line 1767
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 1769
    .restart local v3    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    move-object/from16 v17, v0

    if-nez v17, :cond_1a

    const/4 v4, 0x0

    .line 1771
    .restart local v4    # "i":I
    :goto_11
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v10, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    .line 1772
    .local v10, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    if-eqz v4, :cond_19

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v10, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1775
    :cond_19
    :goto_12
    array-length v0, v10

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_1b

    .line 1776
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;-><init>()V

    aput-object v17, v10, v4

    .line 1777
    aget-object v17, v10, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1778
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1775
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 1769
    .end local v4    # "i":I
    .end local v10    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .restart local v4    # "i":I
    goto :goto_11

    .line 1781
    .restart local v10    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    :cond_1b
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;-><init>()V

    aput-object v17, v10, v4

    .line 1782
    aget-object v17, v10, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1783
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    goto/16 :goto_0

    .line 1788
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v10    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    :sswitch_32
    const/16 v17, 0x192

    .line 1787
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 1789
    .restart local v3    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    move-object/from16 v17, v0

    if-nez v17, :cond_1d

    const/4 v4, 0x0

    .line 1791
    .restart local v4    # "i":I
    :goto_13
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v11, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    .line 1792
    .local v11, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    if-eqz v4, :cond_1c

    .line 1793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v11, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1795
    :cond_1c
    :goto_14
    array-length v0, v11

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_1e

    .line 1796
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;-><init>()V

    aput-object v17, v11, v4

    .line 1797
    aget-object v17, v11, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1798
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1795
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 1789
    .end local v4    # "i":I
    .end local v11    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .restart local v4    # "i":I
    goto :goto_13

    .line 1801
    .restart local v11    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    :cond_1e
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;-><init>()V

    aput-object v17, v11, v4

    .line 1802
    aget-object v17, v11, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1803
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    goto/16 :goto_0

    .line 1808
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v11    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    :sswitch_33
    const/16 v17, 0x19a

    .line 1807
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 1809
    .restart local v3    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-object/from16 v17, v0

    if-nez v17, :cond_20

    const/4 v4, 0x0

    .line 1811
    .restart local v4    # "i":I
    :goto_15
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v9, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 1812
    .restart local v9    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    if-eqz v4, :cond_1f

    .line 1813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v9, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1815
    :cond_1f
    :goto_16
    array-length v0, v9

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_21

    .line 1816
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v17, v9, v4

    .line 1817
    aget-object v17, v9, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1818
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1815
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 1809
    .end local v4    # "i":I
    .end local v9    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .restart local v4    # "i":I
    goto :goto_15

    .line 1821
    .restart local v9    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    :cond_21
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v17, v9, v4

    .line 1822
    aget-object v17, v9, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1823
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    goto/16 :goto_0

    .line 1828
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v9    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    :sswitch_34
    const/16 v17, 0x1a2

    .line 1827
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 1829
    .restart local v3    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    move-object/from16 v17, v0

    if-nez v17, :cond_23

    const/4 v4, 0x0

    .line 1831
    .restart local v4    # "i":I
    :goto_17
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v12, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    .line 1832
    .local v12, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    if-eqz v4, :cond_22

    .line 1833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v12, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1835
    :cond_22
    :goto_18
    array-length v0, v12

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_24

    .line 1836
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;-><init>()V

    aput-object v17, v12, v4

    .line 1837
    aget-object v17, v12, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1838
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1835
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 1829
    .end local v4    # "i":I
    .end local v12    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .restart local v4    # "i":I
    goto :goto_17

    .line 1841
    .restart local v12    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    :cond_24
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;-><init>()V

    aput-object v17, v12, v4

    .line 1842
    aget-object v17, v12, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1843
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    goto/16 :goto_0

    .line 1847
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v12    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    :sswitch_35
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    goto/16 :goto_0

    .line 1851
    :sswitch_36
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    goto/16 :goto_0

    .line 1855
    :sswitch_37
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToHal:I

    goto/16 :goto_0

    .line 1859
    :sswitch_38
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToWificond:I

    goto/16 :goto_0

    .line 1863
    :sswitch_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    move-object/from16 v17, v0

    if-nez v17, :cond_25

    .line 1864
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    .line 1866
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1870
    :sswitch_3a
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    goto/16 :goto_0

    .line 1874
    :sswitch_3b
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    goto/16 :goto_0

    .line 1878
    :sswitch_3c
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    goto/16 :goto_0

    .line 1882
    :sswitch_3d
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    goto/16 :goto_0

    .line 1886
    :sswitch_3e
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    goto/16 :goto_0

    .line 1890
    :sswitch_3f
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    goto/16 :goto_0

    .line 1895
    :sswitch_40
    const/16 v17, 0x202

    .line 1894
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 1896
    .restart local v3    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    if-nez v17, :cond_27

    const/4 v4, 0x0

    .line 1898
    .restart local v4    # "i":I
    :goto_19
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v8, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 1899
    .local v8, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v4, :cond_26

    .line 1900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1902
    :cond_26
    :goto_1a
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_28

    .line 1903
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    .line 1904
    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1905
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1902
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 1896
    .end local v4    # "i":I
    .end local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .restart local v4    # "i":I
    goto :goto_19

    .line 1908
    .restart local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_28
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    .line 1909
    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1910
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    .line 1915
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_41
    const/16 v17, 0x20a

    .line 1914
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 1916
    .restart local v3    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    if-nez v17, :cond_2a

    const/4 v4, 0x0

    .line 1918
    .restart local v4    # "i":I
    :goto_1b
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v8, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 1919
    .restart local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v4, :cond_29

    .line 1920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1922
    :cond_29
    :goto_1c
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_2b

    .line 1923
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    .line 1924
    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1925
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1922
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 1916
    .end local v4    # "i":I
    .end local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .restart local v4    # "i":I
    goto :goto_1b

    .line 1928
    .restart local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_2b
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    .line 1929
    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1930
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    .line 1935
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_42
    const/16 v17, 0x212

    .line 1934
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 1936
    .restart local v3    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    if-nez v17, :cond_2d

    const/4 v4, 0x0

    .line 1938
    .restart local v4    # "i":I
    :goto_1d
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v8, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 1939
    .restart local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v4, :cond_2c

    .line 1940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1942
    :cond_2c
    :goto_1e
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_2e

    .line 1943
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    .line 1944
    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1945
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1942
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 1936
    .end local v4    # "i":I
    .end local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .restart local v4    # "i":I
    goto :goto_1d

    .line 1948
    .restart local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_2e
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    .line 1949
    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1950
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    .line 1955
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_43
    const/16 v17, 0x21a

    .line 1954
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 1956
    .restart local v3    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    if-nez v17, :cond_30

    const/4 v4, 0x0

    .line 1958
    .restart local v4    # "i":I
    :goto_1f
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v8, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 1959
    .restart local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v4, :cond_2f

    .line 1960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1962
    :cond_2f
    :goto_20
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_31

    .line 1963
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    .line 1964
    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1965
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1962
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 1956
    .end local v4    # "i":I
    .end local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .restart local v4    # "i":I
    goto :goto_1f

    .line 1968
    .restart local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_31
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    .line 1969
    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1970
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    .line 1975
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_44
    const/16 v17, 0x222

    .line 1974
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 1976
    .restart local v3    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    if-nez v17, :cond_33

    const/4 v4, 0x0

    .line 1978
    .restart local v4    # "i":I
    :goto_21
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v8, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 1979
    .restart local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v4, :cond_32

    .line 1980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1982
    :cond_32
    :goto_22
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_34

    .line 1983
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    .line 1984
    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1985
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1982
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 1976
    .end local v4    # "i":I
    .end local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .restart local v4    # "i":I
    goto :goto_21

    .line 1988
    .restart local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_34
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    .line 1989
    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1990
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    .line 1995
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_45
    const/16 v17, 0x22a

    .line 1994
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 1996
    .restart local v3    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    if-nez v17, :cond_36

    const/4 v4, 0x0

    .line 1998
    .restart local v4    # "i":I
    :goto_23
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v8, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 1999
    .restart local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v4, :cond_35

    .line 2000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2002
    :cond_35
    :goto_24
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_37

    .line 2003
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    .line 2004
    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2005
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2002
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 1996
    .end local v4    # "i":I
    .end local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .restart local v4    # "i":I
    goto :goto_23

    .line 2008
    .restart local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_37
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    .line 2009
    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2010
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    .line 2015
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_46
    const/16 v17, 0x232

    .line 2014
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 2016
    .restart local v3    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    if-nez v17, :cond_39

    const/4 v4, 0x0

    .line 2018
    .restart local v4    # "i":I
    :goto_25
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v8, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2019
    .restart local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v4, :cond_38

    .line 2020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2022
    :cond_38
    :goto_26
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_3a

    .line 2023
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    .line 2024
    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2025
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2022
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 2016
    .end local v4    # "i":I
    .end local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .restart local v4    # "i":I
    goto :goto_25

    .line 2028
    .restart local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_3a
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    .line 2029
    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2030
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    .line 2035
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_47
    const/16 v17, 0x23a

    .line 2034
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 2036
    .restart local v3    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    if-nez v17, :cond_3c

    const/4 v4, 0x0

    .line 2038
    .restart local v4    # "i":I
    :goto_27
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v8, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2039
    .restart local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v4, :cond_3b

    .line 2040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2042
    :cond_3b
    :goto_28
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_3d

    .line 2043
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    .line 2044
    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2045
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2042
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 2036
    .end local v4    # "i":I
    .end local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .restart local v4    # "i":I
    goto :goto_27

    .line 2048
    .restart local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_3d
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    .line 2049
    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2050
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    .line 2055
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_48
    const/16 v17, 0x242

    .line 2054
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 2056
    .restart local v3    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    if-nez v17, :cond_3f

    const/4 v4, 0x0

    .line 2058
    .restart local v4    # "i":I
    :goto_29
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v8, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2059
    .restart local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v4, :cond_3e

    .line 2060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2062
    :cond_3e
    :goto_2a
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_40

    .line 2063
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    .line 2064
    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2065
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2062
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 2056
    .end local v4    # "i":I
    .end local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .restart local v4    # "i":I
    goto :goto_29

    .line 2068
    .restart local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_40
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    .line 2069
    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2070
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    .line 2075
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_49
    const/16 v17, 0x24a

    .line 2074
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 2076
    .restart local v3    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    if-nez v17, :cond_42

    const/4 v4, 0x0

    .line 2078
    .restart local v4    # "i":I
    :goto_2b
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v8, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 2079
    .restart local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v4, :cond_41

    .line 2080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v8, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2082
    :cond_41
    :goto_2c
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_43

    .line 2083
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    .line 2084
    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2085
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2082
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 2076
    .end local v4    # "i":I
    .end local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .restart local v4    # "i":I
    goto :goto_2b

    .line 2088
    .restart local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :cond_43
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v17, v8, v4

    .line 2089
    aget-object v17, v8, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2090
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    .line 2094
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v8    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :sswitch_4a
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    goto/16 :goto_0

    .line 2098
    :sswitch_4b
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    goto/16 :goto_0

    .line 2102
    :sswitch_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    move-object/from16 v17, v0

    if-nez v17, :cond_44

    .line 2103
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    .line 2105
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2110
    :sswitch_4d
    const/16 v17, 0x26a

    .line 2109
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 2111
    .restart local v3    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    move-object/from16 v17, v0

    if-nez v17, :cond_46

    const/4 v4, 0x0

    .line 2113
    .restart local v4    # "i":I
    :goto_2d
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v6, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 2114
    .local v6, "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    if-eqz v4, :cond_45

    .line 2115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2117
    :cond_45
    :goto_2e
    array-length v0, v6

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_47

    .line 2118
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    aput-object v17, v6, v4

    .line 2119
    aget-object v17, v6, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2120
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2117
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 2111
    .end local v4    # "i":I
    .end local v6    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .restart local v4    # "i":I
    goto :goto_2d

    .line 2123
    .restart local v6    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    :cond_47
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    aput-object v17, v6, v4

    .line 2124
    aget-object v17, v6, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2125
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    goto/16 :goto_0

    .line 2130
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v6    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    :sswitch_4e
    const/16 v17, 0x272

    .line 2129
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v3

    .line 2131
    .restart local v3    # "arrayLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    move-object/from16 v17, v0

    if-nez v17, :cond_49

    const/4 v4, 0x0

    .line 2133
    .restart local v4    # "i":I
    :goto_2f
    add-int v17, v4, v3

    move/from16 v0, v17

    new-array v6, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 2134
    .restart local v6    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    if-eqz v4, :cond_48

    .line 2135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2137
    :cond_48
    :goto_30
    array-length v0, v6

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_4a

    .line 2138
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    aput-object v17, v6, v4

    .line 2139
    aget-object v17, v6, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2140
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2137
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 2131
    .end local v4    # "i":I
    .end local v6    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .restart local v4    # "i":I
    goto :goto_2f

    .line 2143
    .restart local v6    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    :cond_4a
    new-instance v17, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    aput-object v17, v6, v4

    .line 2144
    aget-object v17, v6, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 2145
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    goto/16 :goto_0

    .line 2149
    .end local v3    # "arrayLength":I
    .end local v4    # "i":I
    .end local v6    # "newArray":[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    :sswitch_4f
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    goto/16 :goto_0

    .line 2153
    :sswitch_50
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    goto/16 :goto_0

    .line 2157
    :sswitch_51
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    goto/16 :goto_0

    .line 2161
    :sswitch_52
    invoke-virtual/range {p1 .. p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    goto/16 :goto_0

    .line 1437
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa0 -> :sswitch_14
        0xa8 -> :sswitch_15
        0xb0 -> :sswitch_16
        0xb8 -> :sswitch_17
        0xc0 -> :sswitch_18
        0xc8 -> :sswitch_19
        0xd0 -> :sswitch_1a
        0xd8 -> :sswitch_1b
        0xe0 -> :sswitch_1c
        0xe8 -> :sswitch_1d
        0xf0 -> :sswitch_1e
        0xf8 -> :sswitch_1f
        0x100 -> :sswitch_20
        0x108 -> :sswitch_21
        0x110 -> :sswitch_22
        0x11a -> :sswitch_23
        0x120 -> :sswitch_24
        0x128 -> :sswitch_25
        0x130 -> :sswitch_26
        0x138 -> :sswitch_27
        0x140 -> :sswitch_28
        0x148 -> :sswitch_29
        0x150 -> :sswitch_2a
        0x158 -> :sswitch_2b
        0x160 -> :sswitch_2c
        0x168 -> :sswitch_2d
        0x170 -> :sswitch_2e
        0x17a -> :sswitch_2f
        0x182 -> :sswitch_30
        0x18a -> :sswitch_31
        0x192 -> :sswitch_32
        0x19a -> :sswitch_33
        0x1a2 -> :sswitch_34
        0x1a8 -> :sswitch_35
        0x1b0 -> :sswitch_36
        0x1b8 -> :sswitch_37
        0x1c0 -> :sswitch_38
        0x1ca -> :sswitch_39
        0x1d0 -> :sswitch_3a
        0x1d8 -> :sswitch_3b
        0x1e0 -> :sswitch_3c
        0x1e8 -> :sswitch_3d
        0x1f0 -> :sswitch_3e
        0x1f8 -> :sswitch_3f
        0x202 -> :sswitch_40
        0x20a -> :sswitch_41
        0x212 -> :sswitch_42
        0x21a -> :sswitch_43
        0x222 -> :sswitch_44
        0x22a -> :sswitch_45
        0x232 -> :sswitch_46
        0x23a -> :sswitch_47
        0x242 -> :sswitch_48
        0x24a -> :sswitch_49
        0x250 -> :sswitch_4a
        0x258 -> :sswitch_4b
        0x262 -> :sswitch_4c
        0x26a -> :sswitch_4d
        0x272 -> :sswitch_4e
        0x278 -> :sswitch_4f
        0x280 -> :sswitch_50
        0x288 -> :sswitch_51
        0x290 -> :sswitch_52
    .end sparse-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 14
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 608
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v12, v12

    if-lez v12, :cond_1

    .line 609
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    array-length v12, v12

    if-ge v11, v12, :cond_1

    .line 610
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    aget-object v2, v12, v11

    .line 611
    .local v2, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;
    if-eqz v2, :cond_0

    .line 612
    const/4 v12, 0x1

    invoke-virtual {p1, v12, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 609
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 616
    .end local v2    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;
    .end local v11    # "i":I
    :cond_1
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    if-eqz v12, :cond_2

    .line 617
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    const/4 v13, 0x2

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 619
    :cond_2
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    if-eqz v12, :cond_3

    .line 620
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    const/4 v13, 0x3

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 622
    :cond_3
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    if-eqz v12, :cond_4

    .line 623
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    const/4 v13, 0x4

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 625
    :cond_4
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    if-eqz v12, :cond_5

    .line 626
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    const/4 v13, 0x5

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 628
    :cond_5
    iget-boolean v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    if-eqz v12, :cond_6

    .line 629
    iget-boolean v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    const/4 v13, 0x6

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 631
    :cond_6
    iget-boolean v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    if-eqz v12, :cond_7

    .line 632
    iget-boolean v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    const/4 v13, 0x7

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 634
    :cond_7
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    if-eqz v12, :cond_8

    .line 635
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    const/16 v13, 0x8

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 637
    :cond_8
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    if-eqz v12, :cond_9

    .line 638
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    const/16 v13, 0x9

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 640
    :cond_9
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    if-eqz v12, :cond_a

    .line 641
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    const/16 v13, 0xa

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 643
    :cond_a
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    if-eqz v12, :cond_b

    .line 644
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    const/16 v13, 0xb

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 646
    :cond_b
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    if-eqz v12, :cond_c

    .line 647
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    const/16 v13, 0xc

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 649
    :cond_c
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    if-eqz v12, :cond_d

    .line 650
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    const/16 v13, 0xd

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 652
    :cond_d
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    if-eqz v12, :cond_e

    .line 653
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    const/16 v13, 0xe

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 655
    :cond_e
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    if-eqz v12, :cond_f

    .line 656
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    const/16 v13, 0xf

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 658
    :cond_f
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v12, :cond_11

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v12, v12

    if-lez v12, :cond_11

    .line 659
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_1
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v12, v12

    if-ge v11, v12, :cond_11

    .line 660
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v8, v12, v11

    .line 661
    .local v8, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v8, :cond_10

    .line 662
    const/16 v12, 0x10

    invoke-virtual {p1, v12, v8}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 659
    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 666
    .end local v8    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    .end local v11    # "i":I
    :cond_11
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v12, :cond_13

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v12, v12

    if-lez v12, :cond_13

    .line 667
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v12, v12

    if-ge v11, v12, :cond_13

    .line 668
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v9, v12, v11

    .line 669
    .local v9, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v9, :cond_12

    .line 670
    const/16 v12, 0x11

    invoke-virtual {p1, v12, v9}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 667
    :cond_12
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 674
    .end local v9    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .end local v11    # "i":I
    :cond_13
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v12, :cond_15

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v12, v12

    if-lez v12, :cond_15

    .line 675
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    array-length v12, v12

    if-ge v11, v12, :cond_15

    .line 676
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    aget-object v8, v12, v11

    .line 677
    .restart local v8    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    if-eqz v8, :cond_14

    .line 678
    const/16 v12, 0x12

    invoke-virtual {p1, v12, v8}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 675
    :cond_14
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 682
    .end local v8    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    .end local v11    # "i":I
    :cond_15
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v12, :cond_17

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v12, v12

    if-lez v12, :cond_17

    .line 683
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_4
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    array-length v12, v12

    if-ge v11, v12, :cond_17

    .line 684
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    aget-object v9, v12, v11

    .line 685
    .restart local v9    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    if-eqz v9, :cond_16

    .line 686
    const/16 v12, 0x13

    invoke-virtual {p1, v12, v9}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 683
    :cond_16
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 690
    .end local v9    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;
    .end local v11    # "i":I
    :cond_17
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    if-eqz v12, :cond_18

    .line 691
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    const/16 v13, 0x14

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 693
    :cond_18
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    if-eqz v12, :cond_19

    .line 694
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    const/16 v13, 0x15

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 696
    :cond_19
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    if-eqz v12, :cond_1a

    .line 697
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    const/16 v13, 0x16

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 699
    :cond_1a
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    if-eqz v12, :cond_1b

    .line 700
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    const/16 v13, 0x17

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 702
    :cond_1b
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    if-eqz v12, :cond_1c

    .line 703
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    const/16 v13, 0x18

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 705
    :cond_1c
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    if-eqz v12, :cond_1d

    .line 706
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    const/16 v13, 0x19

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 708
    :cond_1d
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    if-eqz v12, :cond_1e

    .line 709
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    const/16 v13, 0x1a

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 711
    :cond_1e
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    if-eqz v12, :cond_1f

    .line 712
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    const/16 v13, 0x1b

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 714
    :cond_1f
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    if-eqz v12, :cond_20

    .line 715
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    const/16 v13, 0x1c

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 717
    :cond_20
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    if-eqz v12, :cond_21

    .line 718
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    const/16 v13, 0x1d

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 720
    :cond_21
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    if-eqz v12, :cond_22

    .line 721
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    const/16 v13, 0x1e

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 723
    :cond_22
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    if-eqz v12, :cond_23

    .line 724
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    const/16 v13, 0x1f

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 726
    :cond_23
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    if-eqz v12, :cond_24

    .line 727
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    const/16 v13, 0x20

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 729
    :cond_24
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    if-eqz v12, :cond_25

    .line 730
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    const/16 v13, 0x21

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 732
    :cond_25
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    if-eqz v12, :cond_26

    .line 733
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    const/16 v13, 0x22

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 735
    :cond_26
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v12, :cond_28

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v12, v12

    if-lez v12, :cond_28

    .line 736
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_5
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v12, v12

    if-ge v11, v12, :cond_28

    .line 737
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    aget-object v4, v12, v11

    .line 738
    .local v4, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    if-eqz v4, :cond_27

    .line 739
    const/16 v12, 0x23

    invoke-virtual {p1, v12, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 736
    :cond_27
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 743
    .end local v4    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    .end local v11    # "i":I
    :cond_28
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    if-eqz v12, :cond_29

    .line 744
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    const/16 v13, 0x24

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 746
    :cond_29
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    if-eqz v12, :cond_2a

    .line 747
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    const/16 v13, 0x25

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 749
    :cond_2a
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    if-eqz v12, :cond_2b

    .line 750
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    const/16 v13, 0x26

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 752
    :cond_2b
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    if-eqz v12, :cond_2c

    .line 753
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    const/16 v13, 0x27

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 755
    :cond_2c
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    if-eqz v12, :cond_2d

    .line 756
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    const/16 v13, 0x28

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 758
    :cond_2d
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    if-eqz v12, :cond_2e

    .line 759
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    const/16 v13, 0x29

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 761
    :cond_2e
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    if-eqz v12, :cond_2f

    .line 762
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    const/16 v13, 0x2a

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 764
    :cond_2f
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    if-eqz v12, :cond_30

    .line 765
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    const/16 v13, 0x2b

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 767
    :cond_30
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    if-eqz v12, :cond_31

    .line 768
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    const/16 v13, 0x2c

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 770
    :cond_31
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    if-eqz v12, :cond_32

    .line 771
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    const/16 v13, 0x2d

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 773
    :cond_32
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    if-eqz v12, :cond_33

    .line 774
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    const/16 v13, 0x2e

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 776
    :cond_33
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    if-eqz v12, :cond_35

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v12, v12

    if-lez v12, :cond_35

    .line 777
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_6
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    array-length v12, v12

    if-ge v11, v12, :cond_35

    .line 778
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    aget-object v0, v12, v11

    .line 779
    .local v0, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    if-eqz v0, :cond_34

    .line 780
    const/16 v12, 0x2f

    invoke-virtual {p1, v12, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 777
    :cond_34
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 784
    .end local v0    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    .end local v11    # "i":I
    :cond_35
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    if-eqz v12, :cond_37

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v12, v12

    if-lez v12, :cond_37

    .line 785
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_7
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    array-length v12, v12

    if-ge v11, v12, :cond_37

    .line 786
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    aget-object v10, v12, v11

    .line 787
    .local v10, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;
    if-eqz v10, :cond_36

    .line 788
    const/16 v12, 0x30

    invoke-virtual {p1, v12, v10}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 785
    :cond_36
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 792
    .end local v10    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;
    .end local v11    # "i":I
    :cond_37
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    if-eqz v12, :cond_39

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v12, v12

    if-lez v12, :cond_39

    .line 793
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_8
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    array-length v12, v12

    if-ge v11, v12, :cond_39

    .line 794
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    aget-object v5, v12, v11

    .line 795
    .local v5, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    if-eqz v5, :cond_38

    .line 796
    const/16 v12, 0x31

    invoke-virtual {p1, v12, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 793
    :cond_38
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 800
    .end local v5    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;
    .end local v11    # "i":I
    :cond_39
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    if-eqz v12, :cond_3b

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v12, v12

    if-lez v12, :cond_3b

    .line 801
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_9
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    array-length v12, v12

    if-ge v11, v12, :cond_3b

    .line 802
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    aget-object v6, v12, v11

    .line 803
    .local v6, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    if-eqz v6, :cond_3a

    .line 804
    const/16 v12, 0x32

    invoke-virtual {p1, v12, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 801
    :cond_3a
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 808
    .end local v6    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    .end local v11    # "i":I
    :cond_3b
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v12, :cond_3d

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v12, v12

    if-lez v12, :cond_3d

    .line 809
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_a
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    array-length v12, v12

    if-ge v11, v12, :cond_3d

    .line 810
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    aget-object v4, v12, v11

    .line 811
    .restart local v4    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    if-eqz v4, :cond_3c

    .line 812
    const/16 v12, 0x33

    invoke-virtual {p1, v12, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 809
    :cond_3c
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 816
    .end local v4    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;
    .end local v11    # "i":I
    :cond_3d
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    if-eqz v12, :cond_3f

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v12, v12

    if-lez v12, :cond_3f

    .line 817
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_b
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    array-length v12, v12

    if-ge v11, v12, :cond_3f

    .line 818
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    aget-object v7, v12, v11

    .line 819
    .local v7, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    if-eqz v7, :cond_3e

    .line 820
    const/16 v12, 0x34

    invoke-virtual {p1, v12, v7}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 817
    :cond_3e
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 824
    .end local v7    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    .end local v11    # "i":I
    :cond_3f
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    if-eqz v12, :cond_40

    .line 825
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    const/16 v13, 0x35

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 827
    :cond_40
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    if-eqz v12, :cond_41

    .line 828
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    const/16 v13, 0x36

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 830
    :cond_41
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToHal:I

    if-eqz v12, :cond_42

    .line 831
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToHal:I

    const/16 v13, 0x37

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 833
    :cond_42
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToWificond:I

    if-eqz v12, :cond_43

    .line 834
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToWificond:I

    const/16 v13, 0x38

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 836
    :cond_43
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    if-eqz v12, :cond_44

    .line 837
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    const/16 v13, 0x39

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 839
    :cond_44
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    if-eqz v12, :cond_45

    .line 840
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    const/16 v13, 0x3a

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 842
    :cond_45
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    if-eqz v12, :cond_46

    .line 843
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    const/16 v13, 0x3b

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 845
    :cond_46
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    if-eqz v12, :cond_47

    .line 846
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    const/16 v13, 0x3c

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 848
    :cond_47
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    if-eqz v12, :cond_48

    .line 849
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    const/16 v13, 0x3d

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 851
    :cond_48
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    if-eqz v12, :cond_49

    .line 852
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    const/16 v13, 0x3e

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 854
    :cond_49
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    if-eqz v12, :cond_4a

    .line 855
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    const/16 v13, 0x3f

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 857
    :cond_4a
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v12, :cond_4c

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-lez v12, :cond_4c

    .line 858
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_c
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-ge v11, v12, :cond_4c

    .line 859
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v12, v11

    .line 860
    .local v3, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_4b

    .line 861
    const/16 v12, 0x40

    invoke-virtual {p1, v12, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 858
    :cond_4b
    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    .line 865
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .end local v11    # "i":I
    :cond_4c
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v12, :cond_4e

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-lez v12, :cond_4e

    .line 866
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_d
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-ge v11, v12, :cond_4e

    .line 867
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v12, v11

    .line 868
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_4d

    .line 869
    const/16 v12, 0x41

    invoke-virtual {p1, v12, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 866
    :cond_4d
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 873
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .end local v11    # "i":I
    :cond_4e
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v12, :cond_50

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-lez v12, :cond_50

    .line 874
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_e
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-ge v11, v12, :cond_50

    .line 875
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v12, v11

    .line 876
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_4f

    .line 877
    const/16 v12, 0x42

    invoke-virtual {p1, v12, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 874
    :cond_4f
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    .line 881
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .end local v11    # "i":I
    :cond_50
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v12, :cond_52

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-lez v12, :cond_52

    .line 882
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_f
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-ge v11, v12, :cond_52

    .line 883
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v12, v11

    .line 884
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_51

    .line 885
    const/16 v12, 0x43

    invoke-virtual {p1, v12, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 882
    :cond_51
    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    .line 889
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .end local v11    # "i":I
    :cond_52
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v12, :cond_54

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-lez v12, :cond_54

    .line 890
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_10
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-ge v11, v12, :cond_54

    .line 891
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v12, v11

    .line 892
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_53

    .line 893
    const/16 v12, 0x44

    invoke-virtual {p1, v12, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 890
    :cond_53
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    .line 897
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .end local v11    # "i":I
    :cond_54
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v12, :cond_56

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-lez v12, :cond_56

    .line 898
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_11
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-ge v11, v12, :cond_56

    .line 899
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v12, v11

    .line 900
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_55

    .line 901
    const/16 v12, 0x45

    invoke-virtual {p1, v12, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 898
    :cond_55
    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    .line 905
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .end local v11    # "i":I
    :cond_56
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v12, :cond_58

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-lez v12, :cond_58

    .line 906
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_12
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-ge v11, v12, :cond_58

    .line 907
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v12, v11

    .line 908
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_57

    .line 909
    const/16 v12, 0x46

    invoke-virtual {p1, v12, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 906
    :cond_57
    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    .line 913
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .end local v11    # "i":I
    :cond_58
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v12, :cond_5a

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-lez v12, :cond_5a

    .line 914
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_13
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-ge v11, v12, :cond_5a

    .line 915
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v12, v11

    .line 916
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_59

    .line 917
    const/16 v12, 0x47

    invoke-virtual {p1, v12, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 914
    :cond_59
    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    .line 921
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .end local v11    # "i":I
    :cond_5a
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v12, :cond_5c

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-lez v12, :cond_5c

    .line 922
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_14
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-ge v11, v12, :cond_5c

    .line 923
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v12, v11

    .line 924
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_5b

    .line 925
    const/16 v12, 0x48

    invoke-virtual {p1, v12, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 922
    :cond_5b
    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    .line 929
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .end local v11    # "i":I
    :cond_5c
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v12, :cond_5e

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-lez v12, :cond_5e

    .line 930
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_15
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    array-length v12, v12

    if-ge v11, v12, :cond_5e

    .line 931
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    aget-object v3, v12, v11

    .line 932
    .restart local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    if-eqz v3, :cond_5d

    .line 933
    const/16 v12, 0x49

    invoke-virtual {p1, v12, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 930
    :cond_5d
    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    .line 937
    .end local v3    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .end local v11    # "i":I
    :cond_5e
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    if-eqz v12, :cond_5f

    .line 938
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    const/16 v13, 0x4a

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 940
    :cond_5f
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    if-eqz v12, :cond_60

    .line 941
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    const/16 v13, 0x4b

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 943
    :cond_60
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    if-eqz v12, :cond_61

    .line 944
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    const/16 v13, 0x4c

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 946
    :cond_61
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-eqz v12, :cond_63

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v12, v12

    if-lez v12, :cond_63

    .line 947
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_16
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v12, v12

    if-ge v11, v12, :cond_63

    .line 948
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    aget-object v1, v12, v11

    .line 949
    .local v1, "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    if-eqz v1, :cond_62

    .line 950
    const/16 v12, 0x4d

    invoke-virtual {p1, v12, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 947
    :cond_62
    add-int/lit8 v11, v11, 0x1

    goto :goto_16

    .line 954
    .end local v1    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    .end local v11    # "i":I
    :cond_63
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-eqz v12, :cond_65

    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v12, v12

    if-lez v12, :cond_65

    .line 955
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_17
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    array-length v12, v12

    if-ge v11, v12, :cond_65

    .line 956
    iget-object v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    aget-object v1, v12, v11

    .line 957
    .restart local v1    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    if-eqz v1, :cond_64

    .line 958
    const/16 v12, 0x4e

    invoke-virtual {p1, v12, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 955
    :cond_64
    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    .line 962
    .end local v1    # "element":Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    .end local v11    # "i":I
    :cond_65
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    if-eqz v12, :cond_66

    .line 963
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    const/16 v13, 0x4f

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 965
    :cond_66
    iget-boolean v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    if-eqz v12, :cond_67

    .line 966
    iget-boolean v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    const/16 v13, 0x50

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 968
    :cond_67
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    if-eqz v12, :cond_68

    .line 969
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    const/16 v13, 0x51

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 971
    :cond_68
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    if-eqz v12, :cond_69

    .line 972
    iget v12, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    const/16 v13, 0x52

    invoke-virtual {p1, v13, v12}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 974
    :cond_69
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 975
    return-void
.end method
