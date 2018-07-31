.class final synthetic Lcom/android/settingslib/-$Lambda$NV-IKznc2IoM3gM5Bb4rreqsmlg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/settingslib/RestrictedLockUtils$LockSettingCheck;


# static fields
.field public static final synthetic $INST$0:Lcom/android/settingslib/-$Lambda$NV-IKznc2IoM3gM5Bb4rreqsmlg;


# direct methods
.method private final synthetic $m$0(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "arg0"    # Landroid/app/admin/DevicePolicyManager;
    .param p2, "arg1"    # Landroid/content/ComponentName;
    .param p3, "arg2"    # I

    .prologue
    invoke-static {p1, p2, p3}, Lcom/android/settingslib/RestrictedLockUtils;->lambda$-com_android_settingslib_RestrictedLockUtils_16936(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/-$Lambda$NV-IKznc2IoM3gM5Bb4rreqsmlg;

    invoke-direct {v0}, Lcom/android/settingslib/-$Lambda$NV-IKznc2IoM3gM5Bb4rreqsmlg;-><init>()V

    sput-object v0, Lcom/android/settingslib/-$Lambda$NV-IKznc2IoM3gM5Bb4rreqsmlg;->$INST$0:Lcom/android/settingslib/-$Lambda$NV-IKznc2IoM3gM5Bb4rreqsmlg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEnforcing(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z
    .locals 1

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/-$Lambda$NV-IKznc2IoM3gM5Bb4rreqsmlg;->$m$0(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method
