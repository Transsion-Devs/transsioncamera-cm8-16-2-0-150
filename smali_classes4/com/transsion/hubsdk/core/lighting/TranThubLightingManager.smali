.class public Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/lighting/ITranLightingManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$ConfigChangeListenerStub;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubLightingManager"

.field private static mToken:Landroid/os/IBinder;


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;",
            "Lcom/transsion/hubsdk/lighting/ITranLightingConfigChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 484
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mListenerMap:Ljava/util/Map;

    .line 46
    new-instance v0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$1;-><init>(Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 67
    const-string v1, "tran_lighting"

    invoke-static {v1}, Lcom/transsion/hubsdk/transs/TranSystemServerServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mBinder:Landroid/os/IBinder;

    .line 68
    invoke-static {v1}, Lcom/transsion/hubsdk/lighting/ITranLightingManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    .line 69
    iget-object v1, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mBinder:Landroid/os/IBinder;

    if-eqz v1, :cond_41

    const/4 v2, 0x0

    .line 71
    :try_start_24
    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_27} :catch_28

    return-void

    :catch_28
    move-exception v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to register DeathRecipient for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TranThubLightingManager"

    invoke-static {v1, p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_41
    return-void
.end method

.method static synthetic access$000(Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;)Ljava/util/Map;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mListenerMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;Lcom/transsion/hubsdk/lighting/TranLightingConfig;)Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->convertLighting(Lcom/transsion/hubsdk/lighting/TranLightingConfig;)Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;Lcom/transsion/hubsdk/lighting/TranSceneConfig;)Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->convertScene(Lcom/transsion/hubsdk/lighting/TranSceneConfig;)Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;

    move-result-object p0

    return-object p0
.end method

.method private convertEffect(Lcom/transsion/hubsdk/lighting/TranEffectConfig;)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;
    .registers 14

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    .line 734
    :cond_4
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->getExtraData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 735
    new-instance p0, Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->getExtraData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :cond_13
    move-object v11, p0

    .line 739
    new-instance v1, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;

    .line 740
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->getEffectId()I

    move-result v2

    .line 741
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->getColor()I

    move-result v3

    .line 742
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->isSupportColor()Z

    move-result v4

    .line 743
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->getEffectParameter()I

    move-result v5

    .line 744
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->isUnlocked()Z

    move-result v6

    .line 745
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->isHidden()Z

    move-result v7

    .line 746
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->isPrebuilt()Z

    move-result v8

    .line 747
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->getCreatedTime()J

    move-result-wide v9

    invoke-direct/range {v1 .. v11}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;-><init>(IIZIZZZJLandroid/os/Bundle;)V

    .line 752
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->getCustomFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->setCustomFilePath(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->getPlayTime()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->setPlayTime(I)V

    .line 756
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->getType()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->setType(I)V

    .line 757
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->getPara()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->setPara(I)V

    .line 758
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->getPara1()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->setPara1(I)V

    .line 759
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->getPara2()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->setPara2(I)V

    .line 760
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->getPara3()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->setPara3(I)V

    return-object v1
.end method

.method private convertLighting(Lcom/transsion/hubsdk/lighting/TranLightingConfig;)Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;
    .registers 13

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 599
    :cond_4
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 600
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getSceneConfigs()Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_2c

    const/4 v3, 0x0

    .line 602
    :goto_10
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2c

    .line 603
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 604
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/hubsdk/lighting/TranSceneConfig;

    .line 605
    invoke-direct {p0, v5}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->convertScene(Lcom/transsion/hubsdk/lighting/TranSceneConfig;)Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;

    move-result-object v5

    if-eqz v5, :cond_29

    .line 607
    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 614
    :cond_2c
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 615
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :cond_3b
    move-object v10, v0

    .line 619
    new-instance v1, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;

    .line 621
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getMinBrightness()I

    move-result v3

    .line 622
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getMaxBrightness()I

    move-result v4

    .line 623
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getDefaultBrightness()I

    move-result v5

    .line 624
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getStartHour()I

    move-result v6

    .line 625
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getStartMinute()I

    move-result v7

    .line 626
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getEndHour()I

    move-result v8

    .line 627
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getEndMinute()I

    move-result v9

    invoke-direct/range {v1 .. v10}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;-><init>(Landroid/util/SparseArray;IIIIIIILandroid/os/Bundle;)V

    .line 632
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->isEnable()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->setEnable(Z)V

    .line 633
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->isLowBattery()Z

    move-result p0

    iput-boolean p0, v1, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mLowBattery:Z

    .line 634
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->isDoNotDisturb()Z

    move-result p0

    iput-boolean p0, v1, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mDoNotDisturb:Z

    .line 635
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->isSatelliteMode()Z

    move-result p0

    iput-boolean p0, v1, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mSatelliteMode:Z

    .line 637
    iget p0, p1, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->mCustomEffectVersion:I

    iput p0, v1, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomEffectVersion:I

    .line 638
    iget p0, p1, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->mConfigVersion:I

    iput p0, v1, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mConfigVersion:I

    .line 640
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getPara()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->setPara(I)V

    .line 641
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getPara1()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->setPara1(I)V

    .line 642
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getPara2()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->setPara2(I)V

    .line 643
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getPara3()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->setPara3(I)V

    .line 645
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getTimeMode()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->setTimeMode(I)V

    .line 646
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getCustomStartHour()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->setCustomStartHour(I)V

    .line 647
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getCustomStartMinute()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->setCustomStartMinute(I)V

    .line 648
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getCustomEndHour()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->setCustomEndHour(I)V

    .line 649
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->getCustomEndMinute()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->setCustomEndMinute(I)V

    return-object v1
.end method

.method private convertScene(Lcom/transsion/hubsdk/lighting/TranSceneConfig;)Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 665
    :cond_4
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 666
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->getSupportEffects()Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_2c

    const/4 v2, 0x0

    .line 668
    :goto_10
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 669
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 670
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/hubsdk/lighting/TranEffectConfig;

    .line 671
    invoke-direct {p0, v5}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->convertEffect(Lcom/transsion/hubsdk/lighting/TranEffectConfig;)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;

    move-result-object v5

    if-eqz v5, :cond_29

    .line 673
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 680
    :cond_2c
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 681
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :cond_3b
    move-object v9, v0

    .line 685
    new-instance v1, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;

    .line 686
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->getSceneId()I

    move-result v2

    .line 687
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->getEnable()Z

    move-result v3

    .line 689
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->getChooseEffect()I

    move-result v5

    .line 690
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->getPriority()I

    move-result v6

    .line 691
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->isSupportBrightness()Z

    move-result v7

    .line 692
    invoke-virtual {p1}, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->isMainUser()Z

    move-result v8

    invoke-direct/range {v1 .. v9}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;-><init>(IZLandroid/util/SparseArray;IIZZLandroid/os/Bundle;)V

    .line 697
    iget p0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mEffectSelectionMode:I

    iput p0, v1, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mEffectSelectionMode:I

    .line 698
    iget p0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mEffectType:I

    iput p0, v1, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mEffectType:I

    .line 699
    iget p0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mConstantEffectId:I

    iput p0, v1, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mConstantEffectId:I

    .line 700
    iget p0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mIntermittentEffectId:I

    iput p0, v1, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mIntermittentEffectId:I

    .line 701
    iget p0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mFixedEffectId:I

    iput p0, v1, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mFixedEffectId:I

    .line 702
    iget p0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mRandomEffectId:I

    iput p0, v1, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mRandomEffectId:I

    .line 703
    iget-boolean p0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mIsAffectedByGlobalSwitch:Z

    iput-boolean p0, v1, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mIsAffectedByGlobalSwitch:Z

    .line 704
    iget-boolean p0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mSupportCustomEffect:Z

    iput-boolean p0, v1, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mSupportCustomEffect:Z

    .line 707
    iget-boolean p0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mSupportColor:Z

    invoke-virtual {v1, p0}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->setSupportColor(Z)V

    .line 708
    iget-boolean p0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mSupportLightingDisplay:Z

    invoke-virtual {v1, p0}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->setSupportLightingDisplay(Z)V

    .line 709
    iget p0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mFft:I

    invoke-virtual {v1, p0}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->setFft(I)V

    .line 710
    iget p0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mLoop:I

    invoke-virtual {v1, p0}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->setLoop(I)V

    .line 711
    iget-object p0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mLedModeName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->setLedModeName(Ljava/lang/String;)V

    .line 712
    iget p0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mPara1:I

    invoke-virtual {v1, p0}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->setPara1(I)V

    .line 713
    iget p0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mPara2:I

    invoke-virtual {v1, p0}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->setPara2(I)V

    .line 714
    iget p0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mPara3:I

    invoke-virtual {v1, p0}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->setPara3(I)V

    .line 715
    iget p0, p1, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mSubPriority:I

    invoke-virtual {v1, p0}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->setSubPriority(I)V

    return-object v1
.end method

.method private convertToCommonEffect(Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;)Lcom/transsion/hubsdk/lighting/TranEffectConfig;
    .registers 13

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 885
    :cond_4
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->getExtraData()Landroid/os/Bundle;

    move-result-object v10

    .line 888
    new-instance v0, Lcom/transsion/hubsdk/lighting/TranEffectConfig;

    .line 889
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->getEffectId()I

    move-result v1

    .line 890
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->getColor()I

    move-result v2

    .line 891
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->isSupportColor()Z

    move-result v3

    .line 892
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->getEffectParameter()I

    move-result v4

    .line 893
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->isUnlocked()Z

    move-result v5

    .line 894
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->isHidden()Z

    move-result v6

    .line 895
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->isPrebuilt()Z

    move-result v7

    .line 896
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->getCreatedTime()J

    move-result-wide v8

    invoke-direct/range {v0 .. v10}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;-><init>(IIZIZZZJLandroid/os/Bundle;)V

    .line 901
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->getCustomFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->setCustomFilePath(Ljava/lang/String;)V

    .line 904
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->getPlayTime()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->setPlayTime(I)V

    .line 905
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->getType()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->setType(I)V

    .line 906
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->getPara()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->setPara(I)V

    .line 907
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->getPara1()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->setPara1(I)V

    .line 908
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->getPara2()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->setPara2(I)V

    .line 909
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->getPara3()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/lighting/TranEffectConfig;->setPara3(I)V

    return-object v0
.end method

.method private convertToCommonLighting(Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;)Lcom/transsion/hubsdk/lighting/TranLightingConfig;
    .registers 12

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 781
    :cond_4
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getBundle()Landroid/os/Bundle;

    move-result-object v9

    .line 784
    new-instance v0, Lcom/transsion/hubsdk/lighting/TranLightingConfig;

    .line 786
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getMinBrightness()I

    move-result v2

    .line 787
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getMaxBrightness()I

    move-result v3

    .line 788
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getBrightness()I

    move-result v4

    .line 789
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getStartHour()I

    move-result v5

    .line 790
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getStartMinute()I

    move-result v6

    .line 791
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getEndHour()I

    move-result v7

    .line 792
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getEndMinute()I

    move-result v8

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;-><init>(Landroid/util/SparseArray;IIIIIIILandroid/os/Bundle;)V

    .line 797
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->isEnable()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->setEnable(Z)V

    .line 798
    iget-boolean p0, p1, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mLowBattery:Z

    iput-boolean p0, v0, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->mLowBattery:Z

    .line 799
    iget-boolean p0, p1, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mDoNotDisturb:Z

    iput-boolean p0, v0, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->mDoNotDisturb:Z

    .line 800
    iget-boolean p0, p1, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mSatelliteMode:Z

    iput-boolean p0, v0, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->mSatelliteMode:Z

    .line 802
    iget p0, p1, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomEffectVersion:I

    iput p0, v0, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->mCustomEffectVersion:I

    .line 803
    iget p0, p1, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mConfigVersion:I

    iput p0, v0, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->mConfigVersion:I

    .line 805
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getPara()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->setPara(I)V

    .line 806
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getPara1()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->setPara1(I)V

    .line 807
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getPara2()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->setPara2(I)V

    .line 808
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getPara3()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->setPara3(I)V

    .line 810
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getTimeMode()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->setTimeMode(I)V

    .line 811
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getCustomStartHour()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->setCustomStartHour(I)V

    .line 812
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getCustomStartMinute()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->setCustomStartMinute(I)V

    .line 813
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getCustomEndHour()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->setCustomEndHour(I)V

    .line 814
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->getCustomEndMinute()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/lighting/TranLightingConfig;->setCustomEndMinute(I)V

    return-object v0
.end method

.method private convertToCommonScene(Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;)Lcom/transsion/hubsdk/lighting/TranSceneConfig;
    .registers 11

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 834
    :cond_4
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->getExtraData()Landroid/os/Bundle;

    move-result-object v8

    .line 837
    new-instance v0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;

    .line 838
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->getSceneId()I

    move-result v1

    .line 839
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->getEnable()Z

    move-result v2

    .line 841
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->getChooseEffect()I

    move-result v4

    .line 842
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->getPriority()I

    move-result v5

    .line 843
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->isSupportBrightness()Z

    move-result v6

    .line 844
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->isMainUser()Z

    move-result v7

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/transsion/hubsdk/lighting/TranSceneConfig;-><init>(IZLandroid/util/SparseArray;IIZZLandroid/os/Bundle;)V

    .line 849
    iget p0, p1, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mEffectSelectionMode:I

    iput p0, v0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mEffectSelectionMode:I

    .line 850
    iget p0, p1, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mEffectType:I

    iput p0, v0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mEffectType:I

    .line 851
    iget p0, p1, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mConstantEffectId:I

    iput p0, v0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mConstantEffectId:I

    .line 852
    iget p0, p1, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mIntermittentEffectId:I

    iput p0, v0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mIntermittentEffectId:I

    .line 853
    iget p0, p1, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mFixedEffectId:I

    iput p0, v0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mFixedEffectId:I

    .line 854
    iget p0, p1, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mRandomEffectId:I

    iput p0, v0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mRandomEffectId:I

    .line 855
    iget-boolean p0, p1, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mIsAffectedByGlobalSwitch:Z

    iput-boolean p0, v0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mIsAffectedByGlobalSwitch:Z

    .line 856
    iget-boolean p0, p1, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->mSupportCustomEffect:Z

    iput-boolean p0, v0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mSupportCustomEffect:Z

    .line 859
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->isSupportColor()Z

    move-result p0

    iput-boolean p0, v0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mSupportColor:Z

    .line 860
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->isSupportLightingDisplay()Z

    move-result p0

    iput-boolean p0, v0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mSupportLightingDisplay:Z

    .line 861
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->getFft()I

    move-result p0

    iput p0, v0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mFft:I

    .line 862
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->getLoop()I

    move-result p0

    iput p0, v0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mLoop:I

    .line 863
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->getLedModeName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mLedModeName:Ljava/lang/String;

    .line 864
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->getPara1()I

    move-result p0

    iput p0, v0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mPara1:I

    .line 865
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->getPara2()I

    move-result p0

    iput p0, v0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mPara2:I

    .line 866
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->getPara3()I

    move-result p0

    iput p0, v0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mPara3:I

    .line 867
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;->getSubPriority()I

    move-result p0

    iput p0, v0, Lcom/transsion/hubsdk/lighting/TranSceneConfig;->mSubPriority:I

    return-object v0
.end method


# virtual methods
.method public acquireBuffer(I)Landroid/os/SharedMemory;
    .registers 4

    .line 511
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_39

    .line 513
    :try_start_5
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->acquireBuffer(I)Lcom/transsion/hubsdk/lighting/TranSharedBufferHandle;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 514
    iget-object p1, p0, Lcom/transsion/hubsdk/lighting/TranSharedBufferHandle;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_39

    .line 516
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt p1, v1, :cond_1c

    .line 517
    iget-object p0, p0, Lcom/transsion/hubsdk/lighting/TranSharedBufferHandle;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-static {p0}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/ParcelFileDescriptor;)Landroid/os/SharedMemory;

    move-result-object p0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1b} :catch_1d

    return-object p0

    :cond_1c
    return-object v0

    :catch_1d
    move-exception p0

    .line 522
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCustomEffectById: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TranThubLightingManager"

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_39
    return-object v0
.end method

.method public addEffect(IIILjava/lang/String;)Z
    .registers 5

    .line 392
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_25

    .line 394
    :try_start_4
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->addEffect2(IIILjava/lang/String;)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 396
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addEffect2: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TranThubLightingManager"

    invoke-static {p2, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public addEffect([IIIILjava/lang/String;)Z
    .registers 7

    .line 257
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_26

    .line 259
    :try_start_4
    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->addEffect([IIIILjava/lang/String;)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception v0

    move-object p0, v0

    .line 261
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addEffect: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TranThubLightingManager"

    invoke-static {p2, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public bindSceneWithCustomEffect([II)V
    .registers 3

    .line 405
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_24

    .line 407
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->bindSceneWithCustomEffect([II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 409
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bindSceneWithCustomEffect: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TranThubLightingManager"

    invoke-static {p2, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_24
    return-void
.end method

.method public delEffect(I)Z
    .registers 3

    .line 270
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_25

    .line 272
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->delEffect(I)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 274
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "delEffect: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TranThubLightingManager"

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public drawBuffer(I)V
    .registers 3

    .line 530
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_24

    .line 532
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->drawBuffer(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 534
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCustomEffectById: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TranThubLightingManager"

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_24
    return-void
.end method

.method public getAllCustomEffects()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;",
            ">;"
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    .line 419
    :try_start_5
    invoke-interface {v0}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->getAllCustomEffects()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_c

    return-object v1

    .line 424
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 425
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/hubsdk/lighting/TranEffectConfig;

    .line 426
    invoke-direct {p0, v3}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->convertEffect(Lcom/transsion/hubsdk/lighting/TranEffectConfig;)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 428
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 431
    :cond_2b
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_2f} :catch_33

    if-eqz p0, :cond_32

    return-object v1

    :cond_32
    return-object v2

    :catch_33
    move-exception p0

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAllCustomEffects: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranThubLightingManager"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_4f
    return-object v1
.end method

.method public getColorIds()[I
    .registers 3

    .line 379
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_25

    .line 381
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->getColorIds()[I

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getColorIds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranThubLightingManager"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCustomEffectById(I)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;
    .registers 4

    .line 442
    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 444
    :try_start_5
    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->getCustomEffectById(I)Lcom/transsion/hubsdk/lighting/TranEffectConfig;

    move-result-object p1

    if-nez p1, :cond_c

    return-object v1

    .line 448
    :cond_c
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->convertEffect(Lcom/transsion/hubsdk/lighting/TranEffectConfig;)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;

    move-result-object p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    .line 450
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCustomEffectById: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TranThubLightingManager"

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2d
    return-object v1
.end method

.method public getEffectConfig(II)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz v0, :cond_29

    .line 112
    :try_start_4
    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->getEffectConfig(II)Lcom/transsion/hubsdk/lighting/TranEffectConfig;

    move-result-object p1

    .line 113
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->convertEffect(Lcom/transsion/hubsdk/lighting/TranEffectConfig;)Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getEffectConfig: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TranThubLightingManager"

    invoke-static {p2, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEffectIdList()[I
    .registers 3

    .line 244
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_25

    .line 246
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->getEffectIdList()[I

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEffectIdList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranThubLightingManager"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLightingConfig()Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz v0, :cond_29

    .line 82
    :try_start_4
    invoke-interface {v0}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->getLightingConfig()Lcom/transsion/hubsdk/lighting/TranLightingConfig;

    move-result-object v0

    .line 83
    invoke-direct {p0, v0}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->convertLighting(Lcom/transsion/hubsdk/lighting/TranLightingConfig;)Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLightingConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranThubLightingManager"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPendingCustomEffectList()[I
    .registers 3

    .line 459
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_25

    .line 461
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->getPendingCustomEffectList()[I

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAllCustomEffects: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranThubLightingManager"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSceneConfig(I)Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz v0, :cond_29

    .line 97
    :try_start_4
    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->getSceneConfig(I)Lcom/transsion/hubsdk/lighting/TranSceneConfig;

    move-result-object p1

    .line 98
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->convertScene(Lcom/transsion/hubsdk/lighting/TranSceneConfig;)Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSceneConfig: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TranThubLightingManager"

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method

.method public lockLightingDisplay(I)Z
    .registers 3

    .line 487
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_27

    .line 489
    :try_start_4
    sget-object v0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mToken:Landroid/os/IBinder;

    invoke-interface {p0, p1, v0}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->lockLightingDisplay(ILandroid/os/IBinder;)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 491
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCustomEffectById: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TranThubLightingManager"

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public previewEffectWithScene(IIIILandroid/os/Bundle;)V
    .registers 7

    .line 307
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_25

    .line 309
    :try_start_4
    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->previewEffectWithScene(IIIILandroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    move-object p0, v0

    .line 311
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startEffect: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TranThubLightingManager"

    invoke-static {p2, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_25
    return-void
.end method

.method public previewOff()V
    .registers 3

    .line 295
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_24

    .line 297
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->previewOff()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranThubLightingManager"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_24
    return-void
.end method

.method public previewOffWithScene(ILandroid/os/Bundle;)V
    .registers 3

    .line 319
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_24

    .line 321
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->previewOffWithScene(ILandroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 323
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startEffect: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TranThubLightingManager"

    invoke-static {p2, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_24
    return-void
.end method

.method public registerConfigChangeListener(Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;)V
    .registers 6

    if-nez p1, :cond_a

    .line 177
    const-string p0, "TranThubLightingManager"

    const-string p1, "registerConfigChangeListener: listener is null"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 181
    :cond_a
    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-nez v0, :cond_16

    .line 182
    const-string p0, "TranThubLightingManager"

    const-string p1, "registerConfigChangeListener: service is null"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 187
    :cond_16
    new-instance v0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$ConfigChangeListenerStub;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$ConfigChangeListenerStub;-><init>(Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;)V

    .line 189
    monitor-enter p0

    .line 191
    :try_start_1c
    iget-object v1, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 192
    const-string p1, "TranThubLightingManager"

    const-string v0, "registerConfigChangeListener: listener already registered"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    goto :goto_68

    .line 196
    :cond_2f
    iget-object v1, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1c .. :try_end_35} :catchall_2d

    .line 200
    :try_start_35
    iget-object v1, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    invoke-interface {v1, v0}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->registerConfigChangeListener(Lcom/transsion/hubsdk/lighting/ITranLightingConfigChangeListener;)V

    .line 201
    const-string v0, "TranThubLightingManager"

    const-string v1, "registerConfigChangeListener: success"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_41} :catch_42

    return-void

    :catch_42
    move-exception v0

    .line 203
    const-string v1, "TranThubLightingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerConfigChangeListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    monitor-enter p0

    .line 205
    :try_start_5a
    iget-object v1, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_65

    .line 207
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catchall_65
    move-exception p1

    .line 206
    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw p1

    .line 197
    :goto_68
    :try_start_68
    monitor-exit p0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_2d

    throw p1
.end method

.method public setEffectConfig(IILcom/transsion/hubsdk/api/lighting/TranEffectConfig;)V
    .registers 6

    .line 142
    const-string v0, "TranThubLightingManager"

    iget-object v1, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz v1, :cond_33

    .line 144
    :try_start_6
    invoke-direct {p0, p3}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->convertToCommonEffect(Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;)Lcom/transsion/hubsdk/lighting/TranEffectConfig;

    move-result-object p3

    if-nez p3, :cond_14

    .line 146
    const-string p0, "setEffectConfig: config is null"

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_12
    move-exception p0

    goto :goto_1a

    .line 149
    :cond_14
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->setEffectConfig(IILcom/transsion/hubsdk/lighting/TranEffectConfig;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_12

    return-void

    .line 151
    :goto_1a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setEffectConfig: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_33
    return-void
.end method

.method public setLedMusicPlay(Z)V
    .registers 3

    .line 473
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_24

    .line 475
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->setLedMusicPlay(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 477
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setLedMusicPlay: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TranThubLightingManager"

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_24
    return-void
.end method

.method public setLightingConfig(Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;)V
    .registers 4

    .line 125
    const-string v0, "TranThubLightingManager"

    iget-object v1, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz v1, :cond_33

    .line 127
    :try_start_6
    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->convertToCommonLighting(Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;)Lcom/transsion/hubsdk/lighting/TranLightingConfig;

    move-result-object p1

    if-nez p1, :cond_14

    .line 129
    const-string p0, "setConfig: config is null"

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_12
    move-exception p0

    goto :goto_1a

    .line 132
    :cond_14
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->setLightingConfig(Lcom/transsion/hubsdk/lighting/TranLightingConfig;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_12

    return-void

    .line 134
    :goto_1a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConfig: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_33
    return-void
.end method

.method public setSceneConfig(ILcom/transsion/hubsdk/api/lighting/TranSceneConfig;)V
    .registers 5

    .line 159
    const-string v0, "TranThubLightingManager"

    iget-object v1, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz v1, :cond_33

    .line 161
    :try_start_6
    invoke-direct {p0, p2}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->convertToCommonScene(Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;)Lcom/transsion/hubsdk/lighting/TranSceneConfig;

    move-result-object p2

    if-nez p2, :cond_14

    .line 163
    const-string p0, "setSceneConfig: config is null"

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_12
    move-exception p0

    goto :goto_1a

    .line 166
    :cond_14
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->setSceneConfig(ILcom/transsion/hubsdk/lighting/TranSceneConfig;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_12

    return-void

    .line 168
    :goto_1a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setEffectConfig: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_33
    return-void
.end method

.method public setSceneParam(ILandroid/os/Bundle;)V
    .registers 3

    .line 355
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_24

    .line 357
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->setSceneParam(ILandroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 359
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setSceneParam: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TranThubLightingManager"

    invoke-static {p2, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_24
    return-void
.end method

.method public startScene(IIIILandroid/os/Bundle;)V
    .registers 13

    .line 331
    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz v0, :cond_2c

    .line 333
    :try_start_4
    sget-object v6, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mToken:Landroid/os/IBinder;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->startScene(IIIILandroid/os/Bundle;Landroid/os/IBinder;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v0

    move-object p0, v0

    .line 335
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startEffect: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TranThubLightingManager"

    invoke-static {p2, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2c
    return-void
.end method

.method public stopScene(I)V
    .registers 3

    .line 343
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_24

    .line 345
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->stopScene(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 347
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stopEffect: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TranThubLightingManager"

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_24
    return-void
.end method

.method public triggerScene(IIIILandroid/os/Bundle;)V
    .registers 7

    .line 367
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_25

    .line 369
    :try_start_4
    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->triggerScene(IIIILandroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    move-object p0, v0

    .line 371
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setSceneParam: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TranThubLightingManager"

    invoke-static {p2, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_25
    return-void
.end method

.method public unlockEffect()V
    .registers 3

    .line 283
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_24

    .line 285
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->unlockEffect()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unlockEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranThubLightingManager"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_24
    return-void
.end method

.method public unlockLightingDisplay(I)V
    .registers 3

    .line 500
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-eqz p0, :cond_24

    .line 502
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->unlockLightingDisplay(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 504
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCustomEffectById: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TranThubLightingManager"

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_24
    return-void
.end method

.method public unregisterConfigChangeListener(Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;)V
    .registers 4

    if-nez p1, :cond_a

    .line 214
    const-string p0, "TranThubLightingManager"

    const-string p1, "unregisterConfigChangeListener: listener is null"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 218
    :cond_a
    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    if-nez v0, :cond_16

    .line 219
    const-string p0, "TranThubLightingManager"

    const-string p1, "unregisterConfigChangeListener: service is null"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 224
    :cond_16
    monitor-enter p0

    .line 225
    :try_start_17
    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/lighting/ITranLightingConfigChangeListener;

    .line 226
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_53

    if-nez p1, :cond_2a

    .line 229
    const-string p0, "TranThubLightingManager"

    const-string p1, "unregisterConfigChangeListener: listener not found"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 234
    :cond_2a
    :try_start_2a
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->mService:Lcom/transsion/hubsdk/lighting/ITranLightingManager;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/lighting/ITranLightingManager;->unregisterConfigChangeListener(Lcom/transsion/hubsdk/lighting/ITranLightingConfigChangeListener;)V

    .line 235
    const-string p0, "TranThubLightingManager"

    const-string p1, "unregisterConfigChangeListener: success"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_36} :catch_37

    return-void

    :catch_37
    move-exception p0

    .line 237
    const-string p1, "TranThubLightingManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterConfigChangeListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catchall_53
    move-exception p1

    .line 226
    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p1
.end method
