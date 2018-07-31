.class public Lcom/ice/box/iab/IabBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IabBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ice/box/iab/IabBroadcastReceiver$IabBroadcastListener;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.android.vending.billing.PURCHASES_UPDATED"


# instance fields
.field private final mListener:Lcom/ice/box/iab/IabBroadcastReceiver$IabBroadcastListener;


# direct methods
.method public constructor <init>(Lcom/ice/box/iab/IabBroadcastReceiver$IabBroadcastListener;)V
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/ice/box/iab/IabBroadcastReceiver;->mListener:Lcom/ice/box/iab/IabBroadcastReceiver$IabBroadcastListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 37
    iget-object p1, p0, Lcom/ice/box/iab/IabBroadcastReceiver;->mListener:Lcom/ice/box/iab/IabBroadcastReceiver$IabBroadcastListener;

    if-eqz p1, :cond_0

    .line 38
    iget-object p0, p0, Lcom/ice/box/iab/IabBroadcastReceiver;->mListener:Lcom/ice/box/iab/IabBroadcastReceiver$IabBroadcastListener;

    invoke-interface/range {p0 .. p0}, Lcom/ice/box/iab/IabBroadcastReceiver$IabBroadcastListener;->receivedBroadcast()V

    :cond_0
    return-void
.end method
