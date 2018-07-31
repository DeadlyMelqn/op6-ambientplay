.class Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DEBUG:Z

.field static final E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final H_plus:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING:[I

.field static final ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL:[I

.field static final ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final STACKED_DATA_ICONS:[[I

.field static final STACKED_ICONS:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_ROAMING_R:[[I

.field static final THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field private static isInitiated:Z

.field static mDataActivityArray:[Ljava/lang/String;

.field static mDataTypeArray:[Ljava/lang/String;

.field static mDataTypeDescriptionArray:[Ljava/lang/String;

.field static mDataTypeGenerationArray:[Ljava/lang/String;

.field static mDataTypeGenerationDescArray:[Ljava/lang/String;

.field private static mRes:Landroid/content/res/Resources;

.field static mSelectedDataActivityIndex:[I

.field static mSelectedDataTypeDesc:[Ljava/lang/String;

.field static mSelectedDataTypeIcon:[I

.field static mSelectedQSDataTypeIcon:[I

.field static mSelectedSignalStreagthIndex:[I

.field static mSignalNullArray:[Ljava/lang/String;

.field static mSignalStrengthArray:[Ljava/lang/String;

.field static mSignalStrengthDesc:[Ljava/lang/String;

.field static mSignalStrengthRoamingArray:[Ljava/lang/String;

.field static mStacked2SingleIconLookup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v14, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 36
    new-array v0, v8, [[I

    .line 37
    const v1, 0x7f0804ba

    .line 38
    const v3, 0x7f080507

    .line 39
    const v4, 0x7f080558

    .line 40
    const v6, 0x7f0805a9

    .line 41
    const v7, 0x7f0805fa

    .line 37
    filled-new-array {v1, v3, v4, v6, v7}, [I

    move-result-object v1

    aput-object v1, v0, v5

    .line 42
    const v1, 0x7f0804df

    .line 43
    const v3, 0x7f08052c

    .line 44
    const v4, 0x7f08057d

    .line 45
    const v6, 0x7f0805ce

    .line 46
    const v7, 0x7f08061f

    .line 42
    filled-new-array {v1, v3, v4, v6, v7}, [I

    move-result-object v1

    aput-object v1, v0, v14

    .line 36
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 51
    new-array v0, v8, [[I

    .line 52
    const v1, 0x7f0804da

    .line 53
    const v3, 0x7f080527

    .line 54
    const v4, 0x7f080578

    .line 55
    const v6, 0x7f0805c9

    .line 56
    const v7, 0x7f08061a

    .line 52
    filled-new-array {v1, v3, v4, v6, v7}, [I

    move-result-object v1

    aput-object v1, v0, v5

    .line 57
    const v1, 0x7f0804d9

    .line 58
    const v3, 0x7f080526

    .line 59
    const v4, 0x7f080577

    .line 60
    const v6, 0x7f0805c8

    .line 61
    const v7, 0x7f080619

    .line 57
    filled-new-array {v1, v3, v4, v6, v7}, [I

    move-result-object v1

    aput-object v1, v0, v14

    .line 51
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_R:[[I

    .line 66
    const v0, 0x7f0804f3

    .line 67
    const v1, 0x7f080540

    .line 68
    const v3, 0x7f080591

    .line 69
    const v4, 0x7f0805e2

    .line 70
    const v6, 0x7f080633

    .line 65
    filled-new-array {v0, v1, v3, v4, v6}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL:[I

    .line 76
    const v0, 0x7f0804f1

    .line 77
    const v1, 0x7f08053e

    .line 78
    const v3, 0x7f08058f

    .line 79
    const v4, 0x7f0805e0

    .line 80
    const v6, 0x7f080631

    .line 75
    filled-new-array {v0, v1, v3, v4, v6}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING:[I

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [[I

    .line 87
    const v1, 0x7f0804f2

    .line 88
    const v3, 0x7f08053f

    .line 89
    const v4, 0x7f080590

    .line 90
    const v6, 0x7f0805e1

    .line 91
    const v7, 0x7f080632

    .line 87
    filled-new-array {v1, v3, v4, v6, v7}, [I

    move-result-object v1

    aput-object v1, v0, v5

    .line 93
    const v1, 0x7f0804ff

    .line 94
    const v3, 0x7f08054c

    .line 95
    const v4, 0x7f08059d

    .line 96
    const v6, 0x7f0805ee

    .line 97
    const v7, 0x7f08063f

    .line 93
    filled-new-array {v1, v3, v4, v6, v7}, [I

    move-result-object v1

    aput-object v1, v0, v14

    .line 99
    const v1, 0x7f080502

    .line 100
    const v3, 0x7f08054f

    .line 101
    const v4, 0x7f0805a0

    .line 102
    const v6, 0x7f0805f1

    .line 103
    const v7, 0x7f080642

    .line 99
    filled-new-array {v1, v3, v4, v6, v7}, [I

    move-result-object v1

    aput-object v1, v0, v8

    .line 104
    const v1, 0x7f080505

    .line 105
    const v3, 0x7f080552

    .line 106
    const v4, 0x7f0805a3

    .line 107
    const v6, 0x7f0805f4

    .line 108
    const v7, 0x7f080645

    .line 104
    filled-new-array {v1, v3, v4, v6, v7}, [I

    move-result-object v1

    aput-object v1, v0, v9

    .line 85
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICONS:[[I

    .line 112
    const/4 v0, 0x7

    new-array v0, v0, [[I

    .line 113
    const v1, 0x7f080502

    .line 114
    const v3, 0x7f08054f

    .line 115
    const v4, 0x7f0805a0

    .line 116
    const v6, 0x7f0805f1

    .line 117
    const v7, 0x7f080642

    .line 113
    filled-new-array {v1, v3, v4, v6, v7}, [I

    move-result-object v1

    aput-object v1, v0, v5

    .line 118
    const v1, 0x7f080501

    .line 119
    const v3, 0x7f08054e

    .line 120
    const v4, 0x7f08059f

    .line 121
    const v6, 0x7f0805f0

    .line 122
    const v7, 0x7f080641

    .line 118
    filled-new-array {v1, v3, v4, v6, v7}, [I

    move-result-object v1

    aput-object v1, v0, v14

    .line 123
    const v1, 0x7f080500

    .line 124
    const v3, 0x7f08054d

    .line 125
    const v4, 0x7f08059e

    .line 126
    const v6, 0x7f0805ef

    .line 127
    const v7, 0x7f080640

    .line 123
    filled-new-array {v1, v3, v4, v6, v7}, [I

    move-result-object v1

    aput-object v1, v0, v8

    .line 128
    const v1, 0x7f080504

    .line 129
    const v3, 0x7f080551

    .line 130
    const v4, 0x7f0805a2

    .line 131
    const v6, 0x7f0805f3

    .line 132
    const v7, 0x7f080644

    .line 128
    filled-new-array {v1, v3, v4, v6, v7}, [I

    move-result-object v1

    aput-object v1, v0, v9

    .line 133
    const v1, 0x7f080503

    .line 134
    const v3, 0x7f080550

    .line 135
    const v4, 0x7f0805a1

    .line 136
    const v6, 0x7f0805f2

    .line 137
    const v7, 0x7f080643

    .line 133
    filled-new-array {v1, v3, v4, v6, v7}, [I

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 138
    const v1, 0x7f080505

    .line 139
    const v3, 0x7f080552

    .line 140
    const v4, 0x7f0805a3

    .line 141
    const v6, 0x7f0805f4

    .line 142
    const v7, 0x7f080645

    .line 138
    filled-new-array {v1, v3, v4, v6, v7}, [I

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    .line 143
    const v1, 0x7f080506

    .line 144
    const v3, 0x7f080553

    .line 145
    const v4, 0x7f0805a4

    .line 146
    const v6, 0x7f0805f5

    .line 147
    const v7, 0x7f080646

    .line 143
    filled-new-array {v1, v3, v4, v6, v7}, [I

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    .line 112
    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_DATA_ICONS:[[I

    .line 210
    const-string/jumbo v0, "TelephonyIcons"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DEBUG:Z

    .line 227
    sput-boolean v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->isInitiated:Z

    .line 656
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 657
    const-string/jumbo v1, "CARRIER_NETWORK_CHANGE"

    .line 660
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 664
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 665
    const v10, 0x7f11003e

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v11, v5

    move v12, v5

    move v13, v5

    .line 656
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 671
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 672
    const-string/jumbo v1, "3G"

    .line 675
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 679
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 680
    const v10, 0x7f11004b

    .line 681
    const v11, 0x7f080417

    .line 683
    const v13, 0x7f080240

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v14

    .line 671
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 686
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 687
    const-string/jumbo v1, "WFC"

    .line 690
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 694
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v10, v5

    move v11, v5

    move v12, v5

    move v13, v5

    .line 686
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 698
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 699
    const-string/jumbo v1, "Unknown"

    .line 702
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 706
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v10, v5

    move v11, v5

    move v12, v5

    move v13, v5

    .line 698
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 710
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 711
    const-string/jumbo v1, "E"

    .line 714
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 718
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 719
    const v10, 0x7f11004f

    .line 720
    const v11, 0x7f08041a

    .line 722
    const v13, 0x7f080244

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v5

    .line 710
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 725
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 726
    const-string/jumbo v1, "1X"

    .line 729
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 733
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 734
    const v10, 0x7f11004e

    .line 735
    const v11, 0x7f080416

    .line 737
    const v13, 0x7f08023e

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v14

    .line 725
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 740
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 741
    const-string/jumbo v1, "G"

    .line 744
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 748
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 749
    const v10, 0x7f110050

    .line 750
    const v11, 0x7f08041b

    .line 752
    const v13, 0x7f080247

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v5

    .line 740
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 755
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 756
    const-string/jumbo v1, "H"

    .line 759
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 763
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 764
    const v10, 0x7f110049

    .line 765
    const v11, 0x7f08041c

    .line 767
    const v13, 0x7f080248

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v5

    .line 755
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 771
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 772
    const-string/jumbo v1, "H+"

    .line 775
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 779
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 780
    const v10, 0x7f11004a

    .line 781
    const v11, 0x7f08041d

    .line 783
    const v13, 0x7f080249

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v5

    .line 771
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_plus:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 787
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 788
    const-string/jumbo v1, "4G"

    .line 791
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 795
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 796
    const v10, 0x7f11004c

    .line 797
    const v11, 0x7f080418

    .line 799
    const v13, 0x7f080241

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v14

    .line 787
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 802
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 803
    const-string/jumbo v1, "4G+"

    .line 806
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 810
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 811
    const v10, 0x7f11004d

    .line 812
    const v11, 0x7f080419

    .line 814
    const v13, 0x7f080242

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v14

    .line 802
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 817
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 818
    const-string/jumbo v1, "LTE"

    .line 821
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 825
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 826
    const v10, 0x7f110052

    .line 827
    const v11, 0x7f08041f

    .line 829
    const v13, 0x7f08024c

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v14

    .line 817
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 832
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 833
    const-string/jumbo v1, "LTE+"

    .line 836
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 840
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 841
    const v10, 0x7f110053

    .line 842
    const v11, 0x7f080420

    .line 844
    const v13, 0x7f08024d

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v14

    .line 832
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 847
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 848
    const-string/jumbo v1, "DataDisabled"

    .line 851
    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 855
    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v3, v5

    .line 856
    const v10, 0x7f110043

    .line 857
    const v11, 0x7f080415

    .line 859
    const v13, 0x7f080220

    move-object v3, v2

    move v6, v5

    move v7, v5

    move v8, v5

    move v12, v5

    .line 847
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZI)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 30
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertMobileStrengthIcon(I)I
    .locals 2
    .param p0, "stackedIcon"    # I

    .prologue
    .line 532
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mStacked2SingleIconLookup:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 533
    return p0

    .line 535
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mStacked2SingleIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 536
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 537
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mStacked2SingleIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 539
    :cond_1
    return p0
.end method

.method static getDataActivity(II)I
    .locals 8
    .param p0, "slot"    # I
    .param p1, "activity"    # I

    .prologue
    const/4 v7, 0x0

    .line 498
    const-string/jumbo v2, "TelephonyIcons"

    const-string/jumbo v3, "getDataActivity, slot=%d, activity=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 499
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 498
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 502
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;

    aget-object v4, v4, p0

    const-string/jumbo v5, "com.android.systemui"

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 501
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, "dataActivityArray":[Ljava/lang/String;
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 504
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    aget v4, v4, p0

    aget-object v4, v0, v4

    const-string/jumbo v5, "com.android.systemui"

    .line 503
    invoke-virtual {v3, v4, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, "selectedTypeArray":[Ljava/lang/String;
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v3, v1, p1

    const-string/jumbo v4, "com.android.systemui"

    invoke-virtual {v2, v3, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method static getDataTypeDesc(I)I
    .locals 4
    .param p0, "slot"    # I

    .prologue
    .line 494
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    aget-object v1, v1, p0

    const-string/jumbo v2, "com.android.systemui"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static getDataTypeIcon(I)I
    .locals 6
    .param p0, "slot"    # I

    .prologue
    .line 489
    const-string/jumbo v0, "TelephonyIcons"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDataTypeIcon "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "sub=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    aget v0, v0, p0

    return v0
.end method

.method static getOneplusRoamingSignalIconId(I)I
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 630
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_ROAMING:[I

    aget v0, v0, p0

    return v0
.end method

.method static getOneplusVirtualSimSignalIconId(I)I
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 624
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONEPLUS_TELEPHONY_SIGNAL_STRENGTH_VIRTUAL:[I

    aget v0, v0, p0

    return v0
.end method

.method static getQSDataTypeIcon(I)I
    .locals 1
    .param p0, "slot"    # I

    .prologue
    .line 485
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    aget v0, v0, p0

    return v0
.end method

.method static getRoamingSignalIconId(II)I
    .locals 1
    .param p0, "level"    # I
    .param p1, "inet"    # I

    .prologue
    .line 635
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_R:[[I

    aget-object v0, v0, p1

    aget v0, v0, p0

    return v0
.end method

.method static getSignalNullIcon(I)I
    .locals 6
    .param p0, "slot"    # I

    .prologue
    const/4 v5, 0x0

    .line 296
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalNullArray:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 297
    const/4 v2, 0x0

    return v2

    .line 299
    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalNullArray:[Ljava/lang/String;

    aget-object v1, v2, p0

    .line 300
    .local v1, "resName":Ljava/lang/String;
    const-string/jumbo v2, "TelephonyIcons"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "null signal icon name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const-string/jumbo v3, "com.android.systemui"

    invoke-virtual {v2, v1, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 302
    .local v0, "resId":I
    return v0
.end method

.method static getSignalStrengthDes(I)[I
    .locals 7
    .param p0, "slot"    # I

    .prologue
    const/4 v6, 0x5

    .line 639
    new-array v1, v6, [I

    .line 640
    .local v1, "resId":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 641
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthDesc:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string/jumbo v4, "com.android.systemui"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 640
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 643
    :cond_0
    return-object v1
.end method

.method static getSignalStrengthIcon(IIIZ)I
    .locals 12
    .param p0, "slot"    # I
    .param p1, "inet"    # I
    .param p2, "level"    # I
    .param p3, "roaming"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 510
    const-string/jumbo v3, "TelephonyIcons"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSignalStrengthIcon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 511
    const-string/jumbo v5, "slot=%d, inetCondition=%d, level=%d, roaming=%b"

    .line 510
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 511
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    .line 510
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    if-nez p3, :cond_0

    .line 516
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    aget-object v3, v3, p0

    :goto_0
    const-string/jumbo v6, "com.android.systemui"

    .line 515
    invoke-virtual {v5, v3, v11, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, "signalStrengthArray":[Ljava/lang/String;
    const-string/jumbo v3, "TelephonyIcons"

    const-string/jumbo v4, "signalStrengthArray.length=%d"

    new-array v5, v10, [Ljava/lang/Object;

    array-length v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 520
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    aget v5, v5, p0

    aget-object v5, v2, v5

    const-string/jumbo v6, "com.android.systemui"

    .line 519
    invoke-virtual {v4, v5, v11, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "selectedTypeArray":[Ljava/lang/String;
    const-string/jumbo v3, "TelephonyIcons"

    const-string/jumbo v4, "selectedTypeArray.length=%d"

    new-array v5, v10, [Ljava/lang/Object;

    array-length v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 524
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v5, v1, p1

    const-string/jumbo v6, "com.android.systemui"

    invoke-virtual {v4, v5, v11, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 523
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "inetArray":[Ljava/lang/String;
    const-string/jumbo v3, "TelephonyIcons"

    const-string/jumbo v4, "inetArray.length=%d"

    new-array v5, v10, [Ljava/lang/Object;

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    aget-object v4, v0, p2

    const-string/jumbo v5, "com.android.systemui"

    invoke-virtual {v3, v4, v11, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    return v3

    .line 516
    .end local v0    # "inetArray":[Ljava/lang/String;
    .end local v1    # "selectedTypeArray":[Ljava/lang/String;
    .end local v2    # "signalStrengthArray":[Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthRoamingArray:[Ljava/lang/String;

    aget-object v3, v3, p0

    goto/16 :goto_0
.end method

.method static getStackedDataIcon(IIZ)I
    .locals 4
    .param p0, "type"    # I
    .param p1, "level"    # I
    .param p2, "showLTE"    # Z

    .prologue
    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, "retValue":I
    packed-switch p0, :pswitch_data_0

    .line 590
    :pswitch_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_DATA_ICONS:[[I

    const/4 v2, 0x3

    aget-object v1, v1, v2

    aget v0, v1, p1

    .line 591
    const-string/jumbo v1, "TelephonyIcons"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknow network type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :goto_0
    return v0

    .line 572
    :pswitch_1
    if-eqz p2, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_DATA_ICONS:[[I

    const/4 v2, 0x5

    aget-object v1, v1, v2

    aget v0, v1, p1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_DATA_ICONS:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget v0, v1, p1

    goto :goto_0

    .line 575
    :pswitch_2
    if-eqz p2, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_DATA_ICONS:[[I

    const/4 v2, 0x6

    aget-object v1, v1, v2

    aget v0, v1, p1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_DATA_ICONS:[[I

    const/4 v2, 0x4

    aget-object v1, v1, v2

    aget v0, v1, p1

    goto :goto_0

    .line 583
    :pswitch_3
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_DATA_ICONS:[[I

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aget v0, v1, p1

    goto :goto_0

    .line 587
    :pswitch_4
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_DATA_ICONS:[[I

    const/4 v2, 0x2

    aget-object v1, v1, v2

    aget v0, v1, p1

    goto :goto_0

    .line 570
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static getStackedVoiceIcon(I)I
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 599
    const/4 v0, 0x0

    .line 600
    .local v0, "retValue":I
    packed-switch p0, :pswitch_data_0

    .line 619
    :goto_0
    return v0

    .line 602
    :pswitch_0
    const v0, 0x7f0804c3

    .line 603
    goto :goto_0

    .line 605
    :pswitch_1
    const v0, 0x7f080510

    .line 606
    goto :goto_0

    .line 608
    :pswitch_2
    const v0, 0x7f080561

    .line 609
    goto :goto_0

    .line 611
    :pswitch_3
    const v0, 0x7f0805b2

    .line 612
    goto :goto_0

    .line 614
    :pswitch_4
    const v0, 0x7f080603

    .line 615
    goto :goto_0

    .line 600
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static getStackedVoiceIcon(IIZZ)I
    .locals 4
    .param p0, "type"    # I
    .param p1, "level"    # I
    .param p2, "isRoaming"    # Z
    .param p3, "showLTE"    # Z

    .prologue
    const/4 v2, 0x1

    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, "retValue":I
    if-eqz p2, :cond_0

    .line 547
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICONS:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget v0, v1, p1

    .line 562
    :goto_0
    return v0

    .line 549
    :cond_0
    sparse-switch p0, :sswitch_data_0

    .line 557
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICONS:[[I

    aget-object v1, v1, v2

    aget v0, v1, p1

    .line 558
    const-string/jumbo v1, "TelephonyIcons"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknow network type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 551
    :sswitch_0
    if-eqz p3, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICONS:[[I

    const/4 v2, 0x3

    aget-object v1, v1, v2

    aget v0, v1, p1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICONS:[[I

    const/4 v2, 0x2

    aget-object v1, v1, v2

    aget v0, v1, p1

    goto :goto_0

    .line 554
    :sswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->STACKED_ICONS:[[I

    aget-object v1, v1, v2

    aget v0, v1, p1

    goto :goto_0

    .line 549
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method static initStacked2SingleIconLookup()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 281
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    sput-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mStacked2SingleIconLookup:Landroid/util/SparseArray;

    .line 282
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0300c9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 283
    .local v2, "stackedIcons":Landroid/content/res/TypedArray;
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0300c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 285
    .local v1, "singleIcons":Landroid/content/res/TypedArray;
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mStacked2SingleIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 286
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 287
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mStacked2SingleIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 288
    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 287
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 291
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 292
    const-string/jumbo v3, "TelephonyIcons"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initStacked2SingleIconLookup: size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mStacked2SingleIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 647
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 648
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_0
    return-void
.end method

.method static readIconsFromXml(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 230
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->isInitiated:Z

    if-eqz v1, :cond_0

    .line 231
    const-string/jumbo v1, "TelephonyIcons"

    const-string/jumbo v2, "readIconsFromXml, already read!"

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void

    .line 235
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 237
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f030038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    .line 238
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 239
    const v2, 0x7f0300e9

    .line 238
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    .line 240
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 241
    const v2, 0x7f0300ea

    .line 240
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    .line 242
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 243
    const v2, 0x7f0300eb

    .line 242
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    .line 244
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f030037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;

    .line 245
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f03003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    .line 246
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 247
    const v2, 0x7f03003c

    .line 246
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthRoamingArray:[Ljava/lang/String;

    .line 248
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f03003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalNullArray:[Ljava/lang/String;

    .line 249
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f030088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthDesc:[Ljava/lang/String;

    .line 250
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->initStacked2SingleIconLookup()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    if-nez v1, :cond_1

    .line 258
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_1

    .line 259
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    .line 261
    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    if-nez v1, :cond_2

    .line 262
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_2

    .line 263
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    .line 265
    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    if-nez v1, :cond_3

    .line 266
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_3

    .line 267
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    .line 269
    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    if-nez v1, :cond_4

    .line 270
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_4

    .line 271
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataActivityArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    .line 273
    :cond_4
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    if-nez v1, :cond_5

    .line 274
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_5

    .line 275
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSignalStrengthArray:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    .line 277
    :cond_5
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->isInitiated:Z

    .line 278
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    sput-boolean v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->isInitiated:Z

    .line 253
    const-string/jumbo v1, "TelephonyIcons"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readIconsFromXml, exception happened: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method static updateDataType(IIZZZI)V
    .locals 9
    .param p0, "slot"    # I
    .param p1, "type"    # I
    .param p2, "showAtLeast3G"    # Z
    .param p3, "show4GforLte"    # Z
    .param p4, "hspaDistinguishable"    # Z
    .param p5, "inet"    # I

    .prologue
    .line 307
    const-string/jumbo v3, "TelephonyIcons"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateDataType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 308
    const-string/jumbo v5, "slot=%d, type=%d, inetCondition=%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 309
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 308
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 307
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 310
    const-string/jumbo v5, " showAtLeast3G="

    .line 307
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 310
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    .line 307
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 311
    const-string/jumbo v5, " show4GforLte="

    .line 307
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 311
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    .line 307
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 312
    const-string/jumbo v5, " hspaDistinguishable="

    .line 307
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 312
    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    .line 307
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeArray:[Ljava/lang/String;

    aget-object v2, v3, p0

    .line 315
    .local v2, "resName":Ljava/lang/String;
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    const-string/jumbo v4, "com.android.systemui"

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 316
    .local v1, "resId":I
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "dataTypeArray":[Ljava/lang/String;
    const-string/jumbo v3, "TelephonyIcons"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "data type item name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    packed-switch p1, :pswitch_data_0

    .line 471
    :pswitch_0
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    .line 472
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    .line 473
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    .line 474
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    const-string/jumbo v4, ""

    aput-object v4, v3, p0

    .line 475
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    .line 478
    :cond_0
    :goto_0
    const-string/jumbo v3, "TelephonyIcons"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateDataType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 479
    const-string/jumbo v5, "mSelectedDataTypeIcon[%d]=%d, mSelectedDataActivityIndex=%d"

    .line 478
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 480
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    aget v7, v7, p0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    sget-object v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    aget v7, v7, p0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 478
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    return-void

    .line 322
    :pswitch_1
    if-nez p2, :cond_1

    .line 323
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 324
    aget-object v5, v0, p1

    const-string/jumbo v6, "com.android.systemui"

    const/4 v7, 0x0

    .line 323
    invoke-virtual {v4, v5, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 325
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    .line 326
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v4, v4, p1

    aput-object v4, v3, p0

    .line 327
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    .line 328
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    goto :goto_0

    .line 334
    :cond_1
    :pswitch_2
    if-nez p2, :cond_2

    .line 335
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 336
    aget-object v5, v0, p1

    const-string/jumbo v6, "com.android.systemui"

    const/4 v7, 0x0

    .line 335
    invoke-virtual {v4, v5, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 337
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v4, 0x7f08041a

    aput v4, v3, p0

    .line 338
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v4, v4, p1

    aput-object v4, v3, p0

    .line 339
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x2

    aput v4, v3, p0

    .line 340
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x1

    aput v4, v3, p0

    goto/16 :goto_0

    .line 347
    :cond_2
    :pswitch_3
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    .line 348
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 349
    aget-object v5, v0, p1

    const-string/jumbo v6, "com.android.systemui"

    const/4 v7, 0x0

    .line 348
    invoke-virtual {v4, v5, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 350
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v4, 0x7f080417

    aput v4, v3, p0

    .line 351
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v4, v4, p1

    aput-object v4, v3, p0

    .line 352
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/16 v4, 0x8

    aput v4, v3, p0

    goto/16 :goto_0

    .line 357
    :pswitch_4
    if-eqz p4, :cond_3

    .line 358
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x6

    aput v4, v3, p0

    .line 359
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 360
    aget-object v5, v0, p1

    const-string/jumbo v6, "com.android.systemui"

    const/4 v7, 0x0

    .line 359
    invoke-virtual {v4, v5, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 361
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v4, 0x7f08041c

    aput v4, v3, p0

    .line 362
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v4, v4, p1

    aput-object v4, v3, p0

    .line 363
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    goto/16 :goto_0

    .line 365
    :cond_3
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    .line 366
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 367
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const-string/jumbo v6, "com.android.systemui"

    const/4 v7, 0x0

    .line 366
    invoke-virtual {v4, v5, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 368
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v4, 0x7f080417

    aput v4, v3, p0

    .line 369
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aput-object v4, v3, p0

    .line 370
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x2

    aput v4, v3, p0

    goto/16 :goto_0

    .line 374
    :pswitch_5
    if-eqz p4, :cond_4

    .line 375
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x7

    aput v4, v3, p0

    .line 376
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 377
    aget-object v5, v0, p1

    const-string/jumbo v6, "com.android.systemui"

    const/4 v7, 0x0

    .line 376
    invoke-virtual {v4, v5, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 378
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v4, 0x7f08041c

    aput v4, v3, p0

    .line 379
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v4, v4, p1

    aput-object v4, v3, p0

    .line 380
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x5

    aput v4, v3, p0

    goto/16 :goto_0

    .line 382
    :cond_4
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    .line 383
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 384
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const-string/jumbo v6, "com.android.systemui"

    const/4 v7, 0x0

    .line 383
    invoke-virtual {v4, v5, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 385
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v4, 0x7f080417

    aput v4, v3, p0

    .line 386
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aput-object v4, v3, p0

    .line 387
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x2

    aput v4, v3, p0

    goto/16 :goto_0

    .line 391
    :pswitch_6
    if-nez p2, :cond_5

    .line 392
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/16 v4, 0x8

    aput v4, v3, p0

    .line 393
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 394
    aget-object v5, v0, p1

    const-string/jumbo v6, "com.android.systemui"

    const/4 v7, 0x0

    .line 393
    invoke-virtual {v4, v5, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 395
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v4, 0x7f080416

    aput v4, v3, p0

    .line 396
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v4, v4, p1

    aput-object v4, v3, p0

    .line 397
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x7

    aput v4, v3, p0

    goto/16 :goto_0

    .line 403
    :cond_5
    :pswitch_7
    if-nez p2, :cond_6

    .line 404
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/16 v4, 0x8

    aput v4, v3, p0

    .line 405
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 406
    aget-object v5, v0, p1

    const-string/jumbo v6, "com.android.systemui"

    const/4 v7, 0x0

    .line 405
    invoke-virtual {v4, v5, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 407
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v4, 0x7f080416

    aput v4, v3, p0

    .line 408
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v4, v4, p1

    aput-object v4, v3, p0

    .line 409
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x6

    aput v4, v3, p0

    goto/16 :goto_0

    .line 418
    :cond_6
    :pswitch_8
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    .line 419
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 420
    aget-object v5, v0, p1

    const-string/jumbo v6, "com.android.systemui"

    const/4 v7, 0x0

    .line 419
    invoke-virtual {v4, v5, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 421
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v4, 0x7f080417

    aput v4, v3, p0

    .line 422
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v4, v4, p1

    aput-object v4, v3, p0

    .line 423
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x2

    aput v4, v3, p0

    goto/16 :goto_0

    .line 427
    :pswitch_9
    if-eqz p3, :cond_7

    .line 428
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x5

    aput v4, v3, p0

    .line 429
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 430
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const-string/jumbo v6, "com.android.systemui"

    const/4 v7, 0x0

    .line 429
    invoke-virtual {v4, v5, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 431
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v4, 0x7f080418

    aput v4, v3, p0

    .line 432
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aput-object v4, v3, p0

    .line 433
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x3

    aput v4, v3, p0

    .line 435
    const/16 v3, 0x13

    if-ne p1, v3, :cond_0

    .line 437
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 438
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const-string/jumbo v6, "com.android.systemui"

    const/4 v7, 0x0

    .line 437
    invoke-virtual {v4, v5, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 439
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v4, 0x7f080419

    aput v4, v3, p0

    .line 440
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/16 v4, 0x9

    aput v4, v3, p0

    .line 441
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/16 v4, 0xa

    aput v4, v3, p0

    goto/16 :goto_0

    .line 444
    :cond_7
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/16 v4, 0x9

    aput v4, v3, p0

    .line 445
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 446
    aget-object v5, v0, p1

    const-string/jumbo v6, "com.android.systemui"

    const/4 v7, 0x0

    .line 445
    invoke-virtual {v4, v5, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 447
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v4, 0x7f08041f

    aput v4, v3, p0

    .line 448
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v4, v4, p1

    aput-object v4, v3, p0

    .line 449
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x3

    aput v4, v3, p0

    goto/16 :goto_0

    .line 454
    :pswitch_a
    if-nez p2, :cond_8

    .line 455
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x1

    aput v4, v3, p0

    .line 456
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 457
    aget-object v5, v0, p1

    const-string/jumbo v6, "com.android.systemui"

    const/4 v7, 0x0

    .line 456
    invoke-virtual {v4, v5, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 458
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v4, 0x7f08041b

    aput v4, v3, p0

    .line 459
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeDescriptionArray:[Ljava/lang/String;

    aget-object v4, v4, p1

    aput-object v4, v3, p0

    .line 460
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x0

    aput v4, v3, p0

    goto/16 :goto_0

    .line 462
    :cond_8
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataActivityIndex:[I

    const/4 v4, 0x4

    aput v4, v3, p0

    .line 463
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeIcon:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mRes:Landroid/content/res/Resources;

    .line 464
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationArray:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const-string/jumbo v6, "com.android.systemui"

    const/4 v7, 0x0

    .line 463
    invoke-virtual {v4, v5, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, p0

    .line 465
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedQSDataTypeIcon:[I

    const v4, 0x7f080417

    aput v4, v3, p0

    .line 466
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedDataTypeDesc:[Ljava/lang/String;

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mDataTypeGenerationDescArray:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aput-object v4, v3, p0

    .line 467
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->mSelectedSignalStreagthIndex:[I

    const/4 v4, 0x2

    aput v4, v3, p0

    goto/16 :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_a
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_a
        :pswitch_3
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method
