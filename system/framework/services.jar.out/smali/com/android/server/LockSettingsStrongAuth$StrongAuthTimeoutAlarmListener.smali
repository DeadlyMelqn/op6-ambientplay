.class Lcom/android/server/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;
.super Ljava/lang/Object;
.source "LockSettingsStrongAuth.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsStrongAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StrongAuthTimeoutAlarmListener"
.end annotation


# instance fields
.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/LockSettingsStrongAuth;


# direct methods
.method public constructor <init>(Lcom/android/server/LockSettingsStrongAuth;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LockSettingsStrongAuth;
    .param p2, "userId"    # I

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/server/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;->this$0:Lcom/android/server/LockSettingsStrongAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput p2, p0, Lcom/android/server/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;->mUserId:I

    .line 201
    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;->this$0:Lcom/android/server/LockSettingsStrongAuth;

    iget v1, p0, Lcom/android/server/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;->mUserId:I

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lcom/android/server/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 206
    return-void
.end method