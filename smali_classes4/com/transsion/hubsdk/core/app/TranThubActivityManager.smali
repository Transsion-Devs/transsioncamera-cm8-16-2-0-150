.class public Lcom/transsion/hubsdk/core/app/TranThubActivityManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranActivityManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubUserSwitchObserver;,
        Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubTaskStackListener;,
        Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubProcessObserver;,
        Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranPackageDataObserver;,
        Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;,
        Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubBloodOxygenLedStateCallback;,
        Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubActivityStartObserver;
    }
.end annotation


# static fields
.field private static final MAX_USER_SWITCH_OBSERVER_COUNT:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "TranThubActivityManager"


# instance fields
.field private final mActivityStartObserverMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/api/app/TranActivityManager$TranActivityStartObserver;",
            "Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubActivityStartObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mBloodOxygenMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranBloodOxygenLedStateCallback;",
            "Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubBloodOxygenLedStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;",
            "Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubProcessObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

.field private final mTaskStackListenerMaps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/api/app/TranTaskStackListener;",
            "Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubTaskStackListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSwitchListenerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/api/app/TranUserSwitchObserver;",
            "Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubUserSwitchObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0g6xcEKmP-n_alOvoeeS5QaB4RM(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Z)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$enableHiber$10(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$0hBKfMWrXRvamfVc-4jSyB6gNfA(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$isUxCompactionSupport$24()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1ubKABu5Mbjuv9OvkoH7yK1xNe0(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;II)Ljava/lang/Object;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$forceStopPackageNecessity$15(Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$28dwjWBSYU4E3OFoLsefbF7mbck(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$getTargetFps$20(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2LT1irVfxhnFX_eE56v5EWaT8Ew(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$isLowRamDeviceStatic$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7Ys2ezRKpK0pUaZoHMrN_L09AMY(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Z)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$notifyInterceptUnknowSource$16(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BellnKf0migI7vtK4UHe9YwGatM(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$isMemoryEnoughToMF$26(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ghi2iTGQVCwKNs1cJGgEepfIHBs(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Z)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$switchMemFusion$28(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$K_DwPUKKD8kCK_J7GeBXmdbRs2w(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$startUserInBackground$1(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$L9Z-vXb_fKQnv39P5pDeQUpoi2A(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$getTranGameList$18(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LR4zSUSXG7MUZgseS_Y9fwzafZM(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$isMemSettingEnterEnabled$21()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Of7YQqjIojwVhSheKmMzsxo3exY(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$setCleanProtect$4(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PjUg2VcPIPc635af9hn8DmkSSyw(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$isWhiteApp$13(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PyUJnPJebSBGFxGzEc3HFdRV_RA(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$getCleanProtectList$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Rln24tKgpdS_1FDuIg3dm8i5vl8(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$gameSceneEnd$33(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$T2EdTkVA4OkmH6E2qP1IHBQYdes(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Z)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$setLedMusicPlay$8(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TU5wrA8g5qox2X09AskcGrDzBgo(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranActivityManager$TranActivityStartObserver;)Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubActivityStartObserver;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1340
    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubActivityStartObserver;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubActivityStartObserver;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranActivityManager$TranActivityStartObserver;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$Tf5iW7uhhjOxO8FrcqObCaUdWss(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$getAppListMode$12(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UAH4BjqPnn0lphtnIU4c7kKyq38(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$changeCompactionMem$27(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UsTgdnWbmmYkguIRdqonKacfVrY(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$getMEMCList$19(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WUAoOvzBwj15ye_1tgxFHAeE0qk(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranTaskStackListener;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$unregisterTaskStackListener$6(Lcom/transsion/hubsdk/api/app/TranTaskStackListener;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XSkLYwOxYmDDx0TvL9T6dvSIDYk(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$isInGameGuardProtectedList$30(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZVNMrkSJe5GZZo77yftCD90QGTY(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranBloodOxygenLedStateCallback;)Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubBloodOxygenLedStateCallback;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 940
    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubBloodOxygenLedStateCallback;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubBloodOxygenLedStateCallback;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranBloodOxygenLedStateCallback;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$a9dCAYYuScfyu50unRfTcBp54_Y(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;I)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$backgroundAllowlistUid$5(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aMwizm7oZvrUiAp-DNLVKyzb_lU(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/util/List;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$setBlackListToSystem$14(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$a_tuOXHg_g0rbK1UZ3o2-urkZAw(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Ljava/lang/Object;
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$gameSceneStart$32(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fJUsBqEXThpUcUV_jXxvKwnlNFc(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$isMatchCurMemSelection$22()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fK8RM6yLg-66xhhU5YGvaLHuf1k(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$isGameGuardSupport$31()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$g6sO-Dh2bX2AQm6iI_LUjNnvWq0(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$getSwapFileSizeList$23()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iieMKxiH-ednba5XCpQN_ohTFcw(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$isEnabledHiber$9()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$prnYiWcAouYYLfAHN8Axs5_-2CA(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;II)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$setAppMode$11(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sv0H4xlKznWDkptIbWohMYlNZ9o(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Z)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$switchUXCompaction$25(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tFWKV8lL9UpoagNoWR20kzCDef0(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$setGameParam$17(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tnjMceP9ERYf4ci40Zj5QWDp0rE(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$getMemoryForMF$29(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xKjz5QCl4bKCwgva2U6dO3PDqVQ(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$getLocale$7()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yRfKTCYKz4Mb1ZjUZtjZz93CPp8(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->lambda$getTopActivityInfo$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mListenerMap:Landroid/util/ArrayMap;

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mTaskStackListenerMaps:Landroid/util/ArrayMap;

    .line 54
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mUserSwitchListenerMap:Landroid/util/ArrayMap;

    .line 936
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mBloodOxygenMap:Ljava/util/Map;

    .line 1333
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mActivityStartObserverMap:Landroid/util/ArrayMap;

    .line 58
    const-string v0, "activity"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/transsion/hubsdk/app/ITranActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/app/ITranActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 47
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)Lcom/transsion/hubsdk/app/ITranActivityManager;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    return-object p0
.end method

.method private synthetic lambda$backgroundAllowlistUid$5(I)Ljava/lang/Object;
    .registers 2

    .line 188
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_7

    .line 189
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->backgroundAllowlistUid(I)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$changeCompactionMem$27(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 814
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_7

    .line 815
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->changeCompactionMem(Ljava/lang/String;)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$enableHiber$10(Z)Ljava/lang/Object;
    .registers 2

    .line 616
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_7

    .line 617
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->enableHiber(Z)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$forceStopPackageNecessity$15(Ljava/lang/String;II)Ljava/lang/Object;
    .registers 4

    .line 674
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_7

    .line 675
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityManager;->forceStopPackageNecessity(Ljava/lang/String;II)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$gameSceneEnd$33(Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 3

    .line 881
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_7

    .line 882
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->gameSceneEnd(Ljava/lang/String;Z)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$gameSceneStart$32(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Ljava/lang/Object;
    .registers 5

    .line 870
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_7

    .line 871
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/app/ITranActivityManager;->gameSceneStart(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getAppListMode$12(I)Ljava/lang/Object;
    .registers 2

    .line 639
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_9

    .line 640
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getAppListMode(I)[I

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getCleanProtectList$3()Ljava/lang/Object;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_9

    .line 165
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getCleanProtectList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getLocale$7()Ljava/lang/Object;
    .registers 1

    .line 581
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_b

    .line 582
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getLocale()Lcom/transsion/hubsdk/internal/app/TranLocale;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/hubsdk/internal/app/TranLocale;->mLocale:Ljava/util/Locale;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getMEMCList$19(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 720
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_9

    .line 721
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getMEMCList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getMemoryForMF$29(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 834
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_d

    .line 835
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getMemoryForMF(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getSwapFileSizeList$23()Ljava/lang/Object;
    .registers 1

    .line 768
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_9

    .line 769
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getSwapFileSizeList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getTargetFps$20(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 732
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_d

    .line 733
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getTargetFps(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getTopActivityInfo$0()Ljava/lang/Object;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_9

    .line 102
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getTopActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getTranGameList$18(I)Ljava/lang/Object;
    .registers 2

    .line 708
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_9

    .line 709
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getTranGameList(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$isEnabledHiber$9()Ljava/lang/Object;
    .registers 1

    .line 604
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_d

    .line 605
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->isEnabledHiber()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$isGameGuardSupport$31()Ljava/lang/Object;
    .registers 1

    .line 858
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_d

    .line 859
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->isGameGuardSupport()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 861
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$isInGameGuardProtectedList$30(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 846
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_d

    .line 847
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->isInGameGuardProtectedList(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 849
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$isLowRamDeviceStatic$2()Ljava/lang/Object;
    .registers 1

    .line 152
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_d

    .line 153
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->isLowRamDeviceStatic()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 155
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$isMatchCurMemSelection$22()Ljava/lang/Object;
    .registers 1

    .line 756
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_d

    .line 757
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->isMatchCurMemSelection()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$isMemSettingEnterEnabled$21()Ljava/lang/Object;
    .registers 1

    .line 744
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_d

    .line 745
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->isMemSettingEnterEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$isMemoryEnoughToMF$26(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 802
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_d

    .line 803
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->isMemoryEnoughToMF(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$isUxCompactionSupport$24()Ljava/lang/Object;
    .registers 1

    .line 780
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_d

    .line 781
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->isUxCompactionSupport()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$isWhiteApp$13(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 651
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_d

    .line 652
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->isWhiteApp(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$notifyInterceptUnknowSource$16(Z)Ljava/lang/Object;
    .registers 2

    .line 685
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_7

    .line 686
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->notifyInterceptUnknowSource(Z)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setAppMode$11(II)Ljava/lang/Object;
    .registers 3

    .line 628
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_7

    .line 629
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setAppMode(II)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setBlackListToSystem$14(Ljava/util/List;)Ljava/lang/Object;
    .registers 2

    .line 663
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_7

    .line 664
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setBlackListToSystem(Ljava/util/List;)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setCleanProtect$4(Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 3

    .line 176
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_d

    .line 177
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setCleanProtect(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 179
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$setGameParam$17(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 696
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_d

    .line 697
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setGameParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$setLedMusicPlay$8(Z)Ljava/lang/Object;
    .registers 2

    .line 593
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_7

    .line 594
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setLedMusicPlay(Z)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$startUserInBackground$1(I)Ljava/lang/Object;
    .registers 2

    .line 140
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_d

    .line 141
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->startUserInBackground(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 143
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$switchMemFusion$28(Z)Ljava/lang/Object;
    .registers 2

    .line 824
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_7

    .line 825
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->switchMemFusion(Z)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$switchUXCompaction$25(Z)Ljava/lang/Object;
    .registers 2

    .line 792
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_7

    .line 793
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->switchUXCompaction(Z)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$unregisterTaskStackListener$6(Lcom/transsion/hubsdk/api/app/TranTaskStackListener;)Ljava/lang/Object;
    .registers 4

    .line 199
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz v0, :cond_14

    .line 200
    iget-object v1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mTaskStackListenerMaps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/app/ITranTaskStackListener;

    invoke-interface {v0, v1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->unregisterTaskStackListener(Lcom/transsion/hubsdk/app/ITranTaskStackListener;)V

    .line 201
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mTaskStackListenerMaps:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public backgroundAllowlistUid(I)V
    .registers 4

    .line 187
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda16;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;I)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backgroundAllowlistUid uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public calculateReclaimableMemory()J
    .registers 4

    .line 1416
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 1418
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->calculateReclaimableMemory()J

    move-result-wide v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-wide v0

    :catch_9
    move-exception p0

    .line 1420
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateReclaimableMemory error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public changeCompactionMem(Ljava/lang/String;)V
    .registers 4

    .line 813
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;)V

    const-string p0, "window"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public clearApplicationUserData(Ljava/lang/String;Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranPackageDataObserverExtInner;)Z
    .registers 6

    .line 554
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 558
    :cond_6
    :try_start_6
    new-instance v2, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranPackageDataObserver;

    invoke-direct {v2, p0, p2}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranPackageDataObserver;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranPackageDataObserverExtInner;)V

    invoke-interface {v0, p1, v2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->clearApplicationUserData(Ljava/lang/String;Lcom/transsion/hubsdk/app/ITranPackageDataObserver;)Z

    move-result p0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    return p0

    :catch_10
    move-exception p0

    .line 560
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearApplicationUserData:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public doClean(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 396
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-nez p0, :cond_5

    return-void

    .line 400
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->doClean(ILjava/util/List;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 402
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doClean:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableHiber(Z)V
    .registers 4

    .line 615
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Z)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 621
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string p1, "enableHiber"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .registers 4

    .line 76
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_1f

    .line 78
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 80
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceStopPackage fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method public forceStopPackageNecessity(Ljava/lang/String;II)V
    .registers 6

    .line 673
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda21;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;II)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 679
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string p1, "forceStopPackageNecessity"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public gameSceneEnd(Ljava/lang/String;Z)V
    .registers 5

    .line 880
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda17;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;Z)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 886
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string p1, "gameSceneEnd"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public gameSceneStart(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 869
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 875
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string p1, "gameSceneStart"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAppListMode(I)[I
    .registers 4

    .line 638
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda20;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;I)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 644
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "getAppListMode"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getBackgroundRestrictionExemptionReason(I)I
    .registers 4

    .line 1287
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 1289
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getBackgroundRestrictionExemptionReason(I)I

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1291
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBackgroundRestrictionExemptionReason error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, -0x1

    return p0
.end method

.method public getBloodOxygenLedState()I
    .registers 4

    .line 926
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 928
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getBloodOxygenLedState()I

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 930
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBloodOxygenLedState error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public getCleanProtectList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 169
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCleanProtectList mLists:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getConfigurationExt(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/res/Configuration;
    .registers 5

    .line 219
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 223
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getConfigurationExt(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/res/Configuration;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 225
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfigurationExt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getCurrentUser()I
    .registers 4

    .line 113
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 115
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getCurrentUser()I

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 117
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentUser fail :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public getDisplayId(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .registers 4

    .line 245
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 247
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getDisplayId(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 249
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDisplayId fail :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public getJavaProcessRss()Landroid/os/Bundle;
    .registers 4

    .line 1368
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 1370
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getJavaProcessRss()Landroid/os/Bundle;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 1372
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getJavaProcessRss error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKernelMemInfo()[J
    .registers 4

    .line 1392
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 1394
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getKernelMemInfo()[J

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 1396
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKernelMemInfo error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 5

    .line 528
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 532
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 534
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLaunchedFromPackage fail :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getLaunchedFromUid(Landroid/os/IBinder;)I
    .registers 5

    .line 515
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 519
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 521
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLaunchedFromUid fail :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getLightEffectInfos(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 999
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_11

    .line 1001
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getLightEffectInfos(I)Ljava/util/List;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 1003
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "getLightEffectInfos error: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1007
    :cond_11
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public getLightStyleDataBundle(I)Landroid/os/Bundle;
    .registers 3

    .line 1024
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_11

    .line 1026
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getLightStyleDataBundle(I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 1028
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "getLightStyleDataBundle error: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1032
    :cond_11
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public getLightStyleIdArray(I)[I
    .registers 3

    .line 987
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_11

    .line 989
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getLightStyleIdArray(I)[I

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 991
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "getLightStyleIdArray error: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    const/4 p0, 0x0

    .line 994
    new-array p0, p0, [I

    return-object p0
.end method

.method public getLightStyleIdData(I)[I
    .registers 3

    .line 1012
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_11

    .line 1014
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getLightStyleIdData(I)[I

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 1016
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "getLightStyleIdData error: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    const/4 p0, 0x0

    .line 1019
    new-array p0, p0, [I

    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 3

    .line 580
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda26;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Locale;

    .line 586
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v1, "getLocale"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getLockTaskModeState()I
    .registers 5

    .line 541
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 545
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getLockTaskModeState()I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 547
    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLockTaskModeState fail :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getMEMCList(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 719
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda19;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 725
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "getMEMCList"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getMemoryForMF(Ljava/lang/String;)I
    .registers 4

    .line 833
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 839
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "getMemoryForMF"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getNativeProcessRss()Landroid/os/Bundle;
    .registers 4

    .line 1380
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 1382
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getNativeProcessRss()Landroid/os/Bundle;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 1384
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNativeProcessRss error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRealActivity(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;
    .registers 4

    .line 269
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 271
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getRealActivity(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 273
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRealActivity fail :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSwapFileSizeList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 767
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda34;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 773
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v1, "getSwapFileSizeList"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getTargetFps(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 731
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 737
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string p2, "getTargetFps"

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getTopActivityInfo()Landroid/content/pm/ActivityInfo;
    .registers 4

    .line 100
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ActivityInfo;

    .line 106
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTopActivityInfo mActivityInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getTopActivityType(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .registers 4

    .line 281
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 283
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getTopActivityType(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 285
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTopActivityType fail :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public getTranAppmSystemInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 892
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 893
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getTranAppmSystemInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 896
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTranAppmSystemInfo fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_20
    const-string p0, "unknown"

    return-object p0
.end method

.method public getTranGameList(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 707
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda28;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;I)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 713
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "getTranGameList"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getUserId(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .registers 4

    .line 421
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 423
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getUserId(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 425
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUserId fail :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public getWindowingMode(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .registers 5

    .line 232
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 236
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->getWindowingMode(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 238
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWindowingMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public hookDisturbStatus(I)V
    .registers 4

    .line 408
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-nez p0, :cond_5

    return-void

    .line 412
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->hookDisturbStatus(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 414
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hookDisturbStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public ignoreCPUAndMemoryPressureForPreload()Z
    .registers 4

    .line 1253
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 1255
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->ignoreCPUAndMemoryPressureForPreload()Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1257
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoreCPUAndMemoryPressureForPreload error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public inMultiWindowMode(I)Z
    .registers 5

    .line 126
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 130
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->inMultiWindowMode(I)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 132
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inMultiWindowMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isEnabledHiber()Z
    .registers 3

    .line 603
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda14;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 609
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v1, "isEnabledHiber"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isGameGuardSupport()Z
    .registers 3

    .line 857
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda18;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 863
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v1, "isGameGuardSupport"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isInGameGuardProtectedList(Ljava/lang/String;)Z
    .registers 4

    .line 845
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda27;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 851
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "isInGameGuardProtectedList"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isInLockTaskMode()Z
    .registers 4

    .line 87
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 89
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->isInLockTaskMode()Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 91
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInLockTaskMode fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public isLowRamDeviceStatic()Z
    .registers 4

    .line 151
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda31;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 157
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLowRamDeviceStatic result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isMatchCurMemSelection()Z
    .registers 3

    .line 755
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda23;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 761
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v1, "isMatchCurMemSelection"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isMemSettingEnterEnabled()Z
    .registers 3

    .line 743
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda15;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 749
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v1, "isMemSettingEnterEnabled"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isMemoryEnoughToMF(Ljava/lang/String;)I
    .registers 4

    .line 801
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda29;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 807
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "isMemoryEnoughToMF"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isRequestChangeParams(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 357
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 361
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->isRequestChangeParams(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 363
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRequestChangeParams:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isUserRunning(II)Z
    .registers 4

    .line 1429
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 1431
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->isUserRunning(II)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1433
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUserRunning error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public isUxCompactionSupport()Z
    .registers 3

    .line 779
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda11;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 785
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v1, "isUxCompactionSupport"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isVisible(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 4

    .line 257
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 259
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->isVisible(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 261
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVisible fail :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public isWhiteApp(Ljava/lang/String;)Z
    .registers 4

    .line 650
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda24;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 656
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "isWhiteApp"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public notifyInterceptUnknowSource(Z)V
    .registers 4

    .line 684
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda12;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Z)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 690
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string p1, "notifyInterceptUnknowSource"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerActivityStartObserver([Ljava/lang/String;Lcom/transsion/hubsdk/api/app/TranActivityManager$TranActivityStartObserver;)Z
    .registers 6

    .line 1337
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1340
    :cond_6
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mActivityStartObserverMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubActivityStartObserver;

    if-eqz p2, :cond_33

    .line 1343
    :try_start_15
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->registerActivityStartObserver([Ljava/lang/String;Lcom/transsion/hubsdk/app/ITranActivityStartObserver;)Z

    move-result p0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1b} :catch_1c

    return p0

    :catch_1c
    move-exception p0

    .line 1345
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerActivityStartObserver error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return v1
.end method

.method public registerAppRecoveryCallback(Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranAppRecoveryCallback;Landroid/os/IBinder;)V
    .registers 4

    .line 903
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz v0, :cond_16

    .line 904
    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAppRecoveryCallback;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranAppRecoveryCallback;Landroid/os/IBinder;)V

    .line 906
    :try_start_9
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    invoke-interface {p0, v0, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->registerAppRecoveryCallback(Lcom/transsion/hubsdk/app/ITranAppRecoveryCallback;Landroid/os/IBinder;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    return-void

    .line 908
    :catch_f
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string p1, "registerAppRecoveryCallback error"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return-void
.end method

.method public registerBloodOxygenLedStateListener(Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranBloodOxygenLedStateCallback;)V
    .registers 4

    .line 940
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mBloodOxygenMap:Ljava/util/Map;

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda13;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubBloodOxygenLedStateCallback;

    .line 941
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_1d

    .line 943
    :try_start_11
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->registerBloodOxygenLedStateListener(Lcom/transsion/hubsdk/app/ITranBloodOxygenLedStateCallback;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p0

    .line 945
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "registerBloodOxygenLedStateListener error: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    return-void
.end method

.method public registerProcessObserver(Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;)V
    .registers 4

    .line 485
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-nez v0, :cond_5

    return-void

    .line 488
    :cond_5
    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubProcessObserver;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubProcessObserver;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;)V

    .line 489
    iget-object v1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    :try_start_f
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    invoke-interface {p0, v0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->registerProcessObserver(Lcom/transsion/hubsdk/app/ITranProcessObserver;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p0

    .line 493
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public registerTaskStackListener(Lcom/transsion/hubsdk/api/app/TranTaskStackListener;)V
    .registers 4

    .line 329
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-nez v0, :cond_5

    goto :goto_2e

    :cond_5
    if-eqz p1, :cond_2e

    .line 334
    :try_start_7
    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubTaskStackListener;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubTaskStackListener;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranTaskStackListener;)V

    .line 335
    iget-object v1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mTaskStackListenerMaps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    invoke-interface {p0, v0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->registerTaskStackListener(Lcom/transsion/hubsdk/app/ITranTaskStackListener;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p0

    .line 339
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerTaskStackListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    :goto_2e
    return-void
.end method

.method public registerUserSwitchObserver(Lcom/transsion/hubsdk/api/app/TranUserSwitchObserver;Ljava/lang/String;)V
    .registers 6

    .line 294
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-nez v0, :cond_5

    goto :goto_54

    .line 297
    :cond_5
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mUserSwitchListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_2b

    .line 298
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerUserSwitchObserver mUserSwitchListenerMap.size() is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mUserSwitchListenerMap:Landroid/util/ArrayMap;

    .line 299
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    if-eqz p1, :cond_54

    .line 303
    :try_start_2d
    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubUserSwitchObserver;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubUserSwitchObserver;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranUserSwitchObserver;)V

    .line 304
    iget-object v1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mUserSwitchListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    invoke-interface {p0, v0, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->registerUserSwitchObserver(Lcom/transsion/hubsdk/app/ITranUserSwitchObserver;Ljava/lang/String;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_3c} :catch_3d

    return-void

    :catch_3d
    move-exception p0

    .line 308
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerUserSwitchObserver:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    :goto_54
    return-void
.end method

.method public reportAbnormalApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1086
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_1f

    .line 1088
    :try_start_4
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityManager;->reportAbnormalApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 1090
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "reportAbnormalApp error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method public resetAllTest()Z
    .registers 4

    .line 1050
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 1052
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->resetAllTest()Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1054
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetAllTest error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public resumeAppSwitches()V
    .registers 4

    .line 1265
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_1f

    .line 1267
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->resumeAppSwitches()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 1269
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeAppSwitches error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method public sendMallocDebugSignal(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1404
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 1406
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->sendMallocDebugSignal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1408
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendMallocDebugSignal error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public setAppForFixAdj(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1169
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 1171
    :try_start_4
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setAppForFixAdj(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1173
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setAppForFixAdj error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public setAppIdleForLimit(Ljava/lang/String;I)Z
    .registers 4

    .line 1241
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 1243
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setAppIdleForLimit(Ljava/lang/String;I)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1245
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setAppIdleForLimit error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public setAppInCgroup(ILjava/lang/String;Z)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1097
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_24

    .line 1099
    :try_start_4
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setAppInCgroup(ILjava/lang/String;Z)Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 1101
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setMemoryPresureLevel error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :cond_24
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public setAppMode(II)V
    .registers 5

    .line 627
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;II)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 633
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string p1, "setAppMode"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAudioPatch(Ljava/lang/String;)V
    .registers 4

    .line 1443
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_1f

    .line 1445
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setAudioPatch(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 1447
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioPatch error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method public setBlackListToSystem(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 662
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda25;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/util/List;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 668
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string p1, "setBlackListToSystem"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCleanProtect(Ljava/lang/String;Z)Z
    .registers 5

    .line 175
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda10;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;Z)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 181
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCleanProtect result:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public setCpuPresureLevel(I)Z
    .registers 4

    .line 1062
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 1064
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setCpuPresureLevel(I)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1066
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCpuPresureLevel error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public setCpuSystemSence(I)Z
    .registers 4

    .line 1181
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 1183
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setCpuSystemSence(I)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1185
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCpuSystemSence error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public setCpuUsagePercentForKill(I)Z
    .registers 4

    .line 1109
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 1111
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setCpuUsagePercentForKill(I)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1113
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCpuUsagePercentForKill error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public setCurrentActivityKeepAwake()V
    .registers 4

    .line 384
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-nez p0, :cond_5

    return-void

    .line 388
    :cond_5
    :try_start_5
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setCurrentActivityKeepAwake()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 390
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentActivityKeepAwake fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setETControl(Ljava/lang/String;Z)Z
    .registers 5

    .line 370
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 374
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setETControl(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 376
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setETControl:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setGameParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 695
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda30;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 701
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string p2, "setGameParam"

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public setLedMusicPlay(Z)V
    .registers 4

    .line 592
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda33;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Z)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 598
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string p1, "setLedMusicPlay"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLightingEffect([I)V
    .registers 3

    .line 964
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_10

    .line 966
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setLightingEffect([I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 968
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "setLightingEffect error: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    return-void
.end method

.method public setLightingScene(I[ILandroid/os/Bundle;)V
    .registers 4

    .line 976
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_10

    .line 978
    :try_start_4
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setLightingScene(I[ILandroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 980
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string p2, "setLightingScene error: "

    invoke-static {p1, p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    return-void
.end method

.method public setMemSystemSence(I)Z
    .registers 4

    .line 1205
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 1207
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setMemSystemSence(I)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1209
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMemSystemSence error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public setMemoryPresureLevel(I)Z
    .registers 4

    .line 1074
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 1076
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setMemoryPresureLevel(I)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1078
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMemoryPresureLevel error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method protected setService(Lcom/transsion/hubsdk/app/ITranActivityManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    return-void
.end method

.method public setTestMode(Z)Z
    .registers 4

    .line 1038
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 1040
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->setTestMode(Z)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1042
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTestMode error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public startProfile(Landroid/os/UserHandle;)Z
    .registers 5

    .line 567
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 571
    :cond_6
    :try_start_6
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->startProfile(Landroid/os/UserHandle;)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 573
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startProfile fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public startTNE(Ljava/lang/String;JILjava/lang/String;)V
    .registers 7

    .line 65
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 67
    :try_start_4
    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/app/ITranActivityManager;->startTNE(Ljava/lang/String;JILjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    move-object p0, v0

    .line 69
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "startTNE fail:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method public startUserInBackground(I)Z
    .registers 4

    .line 139
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;I)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 145
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startUserInBackground result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public stopAppForUser(Ljava/lang/String;I)V
    .registers 4

    .line 1276
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_1f

    .line 1278
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->stopAppForUser(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 1280
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stopAppForUser error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method public switchMemFusion(Z)V
    .registers 4

    .line 823
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda35;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Z)V

    const-string p0, "window"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public switchUXCompaction(Z)V
    .registers 4

    .line 791
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda32;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Z)V

    const-string p0, "window"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public toggleFreeformWindowingMode(I)V
    .registers 4

    .line 345
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-nez p0, :cond_5

    return-void

    .line 349
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->toggleFreeformWindowingMode(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 351
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toggleFreeformWindowingMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public triggerCpuKillAppForLimit(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4

    .line 1193
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 1195
    :try_start_4
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityManager;->triggerCpuKillAppForLimit(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1197
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "triggerCpuKillAppForLimit error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public triggerHealthBlockAppForLimit(Ljava/lang/String;I)Z
    .registers 4

    .line 1229
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 1231
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->triggerHealthBlockAppForLimit(Ljava/lang/String;I)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1233
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "triggerHealthBlockAppForLimit error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public triggerMPSKByMemAvailable(J)Z
    .registers 4

    .line 1133
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 1135
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->triggerMPSKByMemAvailable(J)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1137
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "triggerMPSKByMemAvailable error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public triggerMPSKByMemAvailableExt(I)Z
    .registers 4

    .line 1299
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 1301
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->triggerMPSKByMemAvailableExt(I)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1303
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerMPSKByMemAvailable with int error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public triggerMPSKByMemFree(J)Z
    .registers 4

    .line 1157
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 1159
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->triggerMPSKByMemFree(J)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1161
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "triggerMPSKByMemFree error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public triggerMPSKByMemFreeExt(I)Z
    .registers 4

    .line 1323
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 1325
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->triggerMPSKByMemFreeExt(I)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1327
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerMPSKByMemFree with int error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public triggerMPSKBySwapFree(J)Z
    .registers 4

    .line 1145
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 1147
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranActivityManager;->triggerMPSKBySwapFree(J)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1149
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "triggerMPSKBySwapFree error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public triggerMPSKBySwapFreeExt(I)Z
    .registers 4

    .line 1311
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 1313
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->triggerMPSKBySwapFreeExt(I)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1315
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerMPSKBySwapFree with int error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public triggerMemPressureforSortKill()Z
    .registers 4

    .line 1121
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 1123
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->triggerMemPressureforSortKill()Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1125
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerMemPressureforSortKill error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public triggerMemoryLowKillAppForLimit(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4

    .line 1217
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_20

    .line 1219
    :try_start_4
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranActivityManager;->triggerMemoryLowKillAppForLimit(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 1221
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "triggerMemoryLowKillAppForLimit error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public unRegisterAppRecoveryCallback(Landroid/os/IBinder;)V
    .registers 2

    .line 915
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz p0, :cond_f

    .line 917
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->unRegisterAppRecoveryCallback(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    .line 919
    :catch_8
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string p1, "unRegisterAppRecoveryCallback error"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method public unRegisterBloodOxygenLedStateListener(Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranBloodOxygenLedStateCallback;)V
    .registers 5

    .line 952
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-eqz v0, :cond_1e

    .line 954
    :try_start_4
    iget-object v1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mBloodOxygenMap:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/app/ITranBloodOxygenLedStateCallback;

    invoke-interface {v0, v1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->unRegisterBloodOxygenLedStateListener(Lcom/transsion/hubsdk/app/ITranBloodOxygenLedStateCallback;)V

    .line 955
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mBloodOxygenMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    .line 957
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    const-string v0, "unRegisterBloodOxygenLedStateListener error: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    return-void
.end method

.method public unRegisterProcessObserver(Lcom/transsion/hubsdk/api/app/TranActivityManager$ITranProcessObserverInner;)V
    .registers 4

    .line 499
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-nez v0, :cond_5

    return-void

    .line 502
    :cond_5
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubProcessObserver;

    if-eqz v0, :cond_19

    .line 505
    :try_start_f
    iget-object v1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    invoke-interface {v1, v0}, Lcom/transsion/hubsdk/app/ITranActivityManager;->unRegisterProcessObserver(Lcom/transsion/hubsdk/app/ITranProcessObserver;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception v0

    .line 507
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 510
    :cond_19
    :goto_19
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unregisterActivityStartObserver(Lcom/transsion/hubsdk/api/app/TranActivityManager$TranActivityStartObserver;)V
    .registers 4

    .line 1353
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-nez v0, :cond_5

    goto :goto_2c

    .line 1356
    :cond_5
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mActivityStartObserverMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubActivityStartObserver;

    if-eqz p1, :cond_2c

    .line 1359
    :try_start_f
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->unregisterActivityStartObserver(Lcom/transsion/hubsdk/app/ITranActivityStartObserver;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p0

    .line 1361
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterActivityStartObserver error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    :goto_2c
    return-void
.end method

.method public unregisterTaskStackListener(Lcom/transsion/hubsdk/api/app/TranTaskStackListener;)V
    .registers 4

    .line 198
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda22;-><init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranTaskStackListener;)V

    const-string p0, "activity"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 205
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterTaskStackListener listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterUserSwitchObserver(Lcom/transsion/hubsdk/api/app/TranUserSwitchObserver;)V
    .registers 4

    .line 314
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    if-nez v0, :cond_5

    return-void

    .line 318
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mUserSwitchListenerMap:Landroid/util/ArrayMap;

    .line 319
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranThubUserSwitchObserver;

    .line 320
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->mService:Lcom/transsion/hubsdk/app/ITranActivityManager;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/app/ITranActivityManager;->unregisterUserSwitchObserver(Lcom/transsion/hubsdk/app/ITranUserSwitchObserver;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p0

    .line 322
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerUserSwitchObserver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
