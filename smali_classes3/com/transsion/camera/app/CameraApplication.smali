.class public Lcom/transsion/camera/app/CameraApplication;
.super Lcom/transsion/camera/app_info/BaseApplication;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/CameraApplication$MainHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mActivities:Ljava/util/List;

.field private final mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field public mAsyncLoadConfigsLatch:Ljava/util/concurrent/CountDownLatch;

.field private mAutoFinishActivityTime:I

.field private mAutoKillTime:I

.field private mAutoKillType:I

.field private mDataClearReceiver:Landroid/content/BroadcastReceiver;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mExitTimestamp:J

.field private mFoldFlipActivityProxy:Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

.field private mGlobalMMKVData:Lcom/tencent/mmkv/MMKV;

.field private mHandler:Lcom/transsion/camera/app/CameraApplication$MainHandler;

.field private mLayoutInflater:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

.field private mOnInflateFinishedListener:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;


# direct methods
.method public static synthetic $r8$lambda$2C3yYGuzzxFeAqmAEQiqOH6v9AM(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .registers 4

    .line 641
    sget-object p1, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cache layout:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4wM7BOtGltGqKQyjD0FH3XM_2bg(Lcom/transsion/camera/app/CameraApplication;Landroid/content/res/Resources;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraApplication;->lambda$onCreate$6(Landroid/content/res/Resources;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BV-F70N5eQyflPJe_Uy5Js4du0A(Lcom/transsion/camera/app/CameraApplication;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->lambda$onCreate$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$LO4uaTfTNQv-Ma_1yVNaai72_a4(Lcom/transsion/camera/app/CameraApplication;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->lambda$removeTagIfNeed$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$OY46gdot18V1i_VigAmDizliyYA(Lcom/transsion/camera/app/CameraApplication;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->lambda$onCreate$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$VMs7OGnMVDcx9LxC0EcgMIf1wOo(Lcom/transsion/camera/app/CameraApplication;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->lambda$onCreate$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$YgBNwxdH17w2zVAyCg_sxpAJaR4(Lcom/transsion/camera/app/CameraApplication;Landroid/content/res/Resources;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraApplication;->lambda$onCreate$5(Landroid/content/res/Resources;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gW_Cb9bVRepSKE4aJ5TUz6r2o4k(Lcom/transsion/camera/app/CameraApplication;Landroid/content/res/Resources;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraApplication;->lambda$onCreate$7(Landroid/content/res/Resources;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jlSU_-y_Y7Ik5ugCJ1C0ql7myoI(Lcom/transsion/camera/app/CameraApplication;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->lambda$addAssetsResourcesToContext$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$jrKyv9XEKwoHVj8HQKiQ3On5qQ0(Lcom/transsion/camera/app/CameraApplication;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->lambda$onCreate$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$nSDuVIlxsv_NkX2dUqkaik4Poyg(Lcom/transsion/camera/app/CameraApplication;Landroid/content/res/Resources;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraApplication;->lambda$onCreate$2(Landroid/content/res/Resources;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nhaascycRLPCp7IQOZz5PQLpjkQ(Lcom/transsion/camera/app/CameraApplication;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->lambda$initInstance$8()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActivities(Lcom/transsion/camera/app/CameraApplication;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mActivities:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExitTimestamp(Lcom/transsion/camera/app/CameraApplication;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/app/CameraApplication;->mExitTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmAutoKillType(Lcom/transsion/camera/app/CameraApplication;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/CameraApplication;->mAutoKillType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmExitTimestamp(Lcom/transsion/camera/app/CameraApplication;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/transsion/camera/app/CameraApplication;->mExitTimestamp:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelResetFlashSnapLite(Lcom/transsion/camera/app/CameraApplication;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->cancelResetFlashSnapLite()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearDataStore(Lcom/transsion/camera/app/CameraApplication;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraApplication;->clearDataStore(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleAutoKill(Lcom/transsion/camera/app/CameraApplication;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->handleAutoKill()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misMainActivity(Lcom/transsion/camera/app/CameraApplication;Landroid/app/Activity;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraApplication;->isMainActivity(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mremoveTagIfNeed(Lcom/transsion/camera/app/CameraApplication;Landroid/app/Activity;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraApplication;->removeTagIfNeed(Landroid/app/Activity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetFlashSnapLiteKey(Lcom/transsion/camera/app/CameraApplication;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->resetFlashSnapLiteKey()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveExitTimestamp(Lcom/transsion/camera/app/CameraApplication;J)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/CameraApplication;->saveExitTimestamp(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartAutoFinishActivity(Lcom/transsion/camera/app/CameraApplication;Landroid/app/Activity;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraApplication;->startAutoFinishActivity(Landroid/app/Activity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartAutoKill(Lcom/transsion/camera/app/CameraApplication;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->startAutoKill()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopAutoFinishActivity(Lcom/transsion/camera/app/CameraApplication;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->stopAutoFinishActivity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopAutoKill(Lcom/transsion/camera/app/CameraApplication;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->stopAutoKill()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetUid(Landroid/content/Context;)I
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/camera/app/CameraApplication;->getUid(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 102
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraApplication"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 101
    invoke-direct {p0}, Lcom/transsion/camera/app_info/BaseApplication;-><init>()V

    const/4 v0, -0x1

    .line 119
    iput v0, p0, Lcom/transsion/camera/app/CameraApplication;->mAutoKillType:I

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mActivities:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 122
    iput-wide v0, p0, Lcom/transsion/camera/app/CameraApplication;->mExitTimestamp:J

    .line 127
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mAsyncLoadConfigsLatch:Ljava/util/concurrent/CountDownLatch;

    .line 132
    new-instance v0, Lcom/transsion/camera/app/CameraApplication$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/CameraApplication$1;-><init>(Lcom/transsion/camera/app/CameraApplication;)V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 526
    new-instance v0, Lcom/transsion/camera/app/CameraApplication$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/CameraApplication$2;-><init>(Lcom/transsion/camera/app/CameraApplication;)V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mDataClearReceiver:Landroid/content/BroadcastReceiver;

    .line 639
    new-instance v0, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda8;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mOnInflateFinishedListener:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;

    return-void
.end method

.method private addAssetsResourcesToContext()V
    .registers 2

    .line 454
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportMakeUpAssets:Z

    if-nez v0, :cond_2a

    .line 455
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportVoiceDetectionAssets:Z

    if-nez v0, :cond_2a

    .line 456
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportMakeUp3DAssets:Z

    if-nez v0, :cond_2a

    .line 457
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportVlogAssets:Z

    if-nez v0, :cond_2a

    .line 458
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportQRCodeAssets:Z

    if-eqz v0, :cond_29

    goto :goto_2a

    :cond_29
    return-void

    .line 460
    :cond_2a
    :goto_2a
    new-instance v0, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/app/CameraApplication;)V

    invoke-static {v0}, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private cacheClassSync(Landroid/content/res/Resources;)V
    .registers 2

    .line 491
    const-string p0, "cache_classes"

    invoke-static {p0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 492
    sget p0, Lcom/transsion/camera/R$array;->build_in_mode_features:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->cacheAllModeEntryClasses([Ljava/lang/String;)V

    .line 493
    sget p0, Lcom/transsion/camera/R$array;->build_in_setting_features:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->cacheAllSettingEntryClasses([Ljava/lang/String;)V

    .line 494
    sget p0, Lcom/transsion/camera/R$array;->build_in_setting_ui_entries:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->cacheAllEntryClasses([Ljava/lang/String;)V

    .line 495
    sget p0, Lcom/transsion/camera/R$array;->some_reflection_classes:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/ReflectionUtils;->cacheClasses([Ljava/lang/String;)Ljava/util/List;

    .line 496
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method private cacheDataStoreFile()V
    .registers 4

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_preferences_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_global_scope"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mGlobalMMKVData:Lcom/tencent/mmkv/MMKV;

    .line 504
    const-string v0, "SellingPoint"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "key_developer_mode"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    return-void
.end method

.method private cacheDrawable(ILandroid/content/res/Resources;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 660
    :try_start_4
    invoke-virtual {p2, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 661
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ResCache;->addDrawable(ILandroid/graphics/drawable/Drawable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    .line 663
    sget-object v0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cacheDrawable: res = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", lastest res = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private cacheDrawable(Ljava/lang/String;Landroid/content/res/Resources;)V
    .registers 3

    .line 652
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->getDrawableId(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(ILandroid/content/res/Resources;)V

    return-void
.end method

.method private cacheDrawableTypedArray(ILandroid/content/res/Resources;)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    .line 675
    :cond_3
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 676
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_41

    .line 679
    :try_start_f
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 680
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 681
    invoke-static {v3, v4}, Lcom/transsion/camera/utils/ResCache;->addDrawable(ILandroid/graphics/drawable/Drawable;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_1b

    goto :goto_3e

    :catch_1b
    move-exception v3

    .line 683
    sget-object v4, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cacheDrawable: res = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", lastest res = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 686
    :cond_41
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private cacheDrawableTypedArray(Ljava/lang/String;Landroid/content/res/Resources;)V
    .registers 3

    .line 668
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->getArrayId(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(ILandroid/content/res/Resources;)V

    return-void
.end method

.method private cacheLayouts()V
    .registers 5

    .line 645
    new-instance v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    invoke-direct {v0, p0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mLayoutInflater:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    .line 646
    sget v1, Lcom/transsion/camera/R$layout;->camera_layout:I

    iget-object v2, p0, Lcom/transsion/camera/app/CameraApplication;->mOnInflateFinishedListener:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    .line 647
    iget-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mLayoutInflater:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    sget v1, Lcom/transsion/camera/R$layout;->preview_ui_gl_surface_view_layout:I

    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mOnInflateFinishedListener:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;

    invoke-virtual {v0, v1, v3, p0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    return-void
.end method

.method private cacheResources(Landroid/content/res/Resources;)V
    .registers 5

    .line 569
    sget-object v0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[cacheResources] start."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 570
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    .line 572
    sget v2, Lcom/transsion/camera/R$drawable;->ic_flash_icon:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(ILandroid/content/res/Resources;)V

    .line 573
    sget v2, Lcom/transsion/camera/R$bool;->flash_facade_support:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 575
    sget v2, Lcom/transsion/camera/R$array;->flash_facade_setting_entry_drawables:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(ILandroid/content/res/Resources;)V

    .line 576
    sget v2, Lcom/transsion/camera/R$array;->video_flash_facade_setting_entry_drawables:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(ILandroid/content/res/Resources;)V

    goto :goto_2d

    .line 578
    :cond_23
    sget v2, Lcom/transsion/camera/R$array;->flash_setting_entry_drawables:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(ILandroid/content/res/Resources;)V

    .line 579
    sget v2, Lcom/transsion/camera/R$array;->video_flash_setting_entry_drawables:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(ILandroid/content/res/Resources;)V

    .line 583
    :goto_2d
    const-string v2, "arc_filter_setting_entry_drawables"

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 584
    sget v2, Lcom/transsion/camera/R$drawable;->ic_picture_size:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(ILandroid/content/res/Resources;)V

    .line 585
    sget v2, Lcom/transsion/camera/R$array;->picture_ratio_setting_entry_drawables:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(ILandroid/content/res/Resources;)V

    .line 586
    const-string v2, "asd_enhance_setting_entry_drawables"

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 587
    const-string v2, "super_definition_setting_entry_drawables"

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 588
    const-string v2, "ic_taint_detection"

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 589
    const-string v2, "taint_detection_setting_entry_drawables"

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 590
    sget v2, Lcom/transsion/camera/R$drawable;->ic_hdr_icon:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(ILandroid/content/res/Resources;)V

    .line 591
    const-string v2, "hdr_setting_entry_drawables"

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 592
    const-string v2, "color_style_setting_entry_drawables"

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 593
    sget v2, Lcom/transsion/camera/R$bool;->pop_setting_support:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 595
    sget v2, Lcom/transsion/camera/R$drawable;->ic_pop_setting_self_timer:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(ILandroid/content/res/Resources;)V

    .line 596
    sget v2, Lcom/transsion/camera/R$array;->self_timer_pop_setting_entry_drawables:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(ILandroid/content/res/Resources;)V

    .line 600
    const-string v2, "ais_switch_pop_setting_entry_drawables"

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(Ljava/lang/String;Landroid/content/res/Resources;)V

    goto :goto_8b

    .line 602
    :cond_77
    sget v2, Lcom/transsion/camera/R$drawable;->ic_self_timer:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(ILandroid/content/res/Resources;)V

    .line 603
    sget v2, Lcom/transsion/camera/R$array;->self_timer_setting_entry_drawables:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(ILandroid/content/res/Resources;)V

    .line 604
    sget v2, Lcom/transsion/camera/R$drawable;->ic_guide_line:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(ILandroid/content/res/Resources;)V

    .line 605
    sget v2, Lcom/transsion/camera/R$array;->guide_line_setting_entry_drawables:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(ILandroid/content/res/Resources;)V

    .line 608
    :goto_8b
    sget v2, Lcom/transsion/camera/R$bool;->auto_focus_switch_support:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 610
    sget v2, Lcom/transsion/camera/R$drawable;->ic_settings_smartfocus:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(ILandroid/content/res/Resources;)V

    .line 611
    sget v2, Lcom/transsion/camera/R$array;->autofocus_switch_setting_entry_drawables:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(ILandroid/content/res/Resources;)V

    goto :goto_a8

    .line 613
    :cond_9e
    sget v2, Lcom/transsion/camera/R$drawable;->ic_eye_detection:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(ILandroid/content/res/Resources;)V

    .line 614
    sget v2, Lcom/transsion/camera/R$array;->eyedetection_setting_entry_drawables:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(ILandroid/content/res/Resources;)V

    .line 617
    :goto_a8
    sget v2, Lcom/transsion/camera/R$drawable;->ic_guide_unselected:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(ILandroid/content/res/Resources;)V

    .line 619
    sget v2, Lcom/transsion/camera/R$drawable;->background_selling_point:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(ILandroid/content/res/Resources;)V

    if-eqz v1, :cond_be

    .line 621
    sget v1, Lcom/transsion/camera/R$drawable;->ic_treasure_box_item_back:I

    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(ILandroid/content/res/Resources;)V

    .line 622
    sget v1, Lcom/transsion/camera/R$drawable;->ic_treasure_box_item_back_black:I

    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(ILandroid/content/res/Resources;)V

    .line 630
    :cond_be
    sget v1, Lcom/transsion/camera/R$array;->video_quality_setting_entry_drawables_fps_all:I

    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(ILandroid/content/res/Resources;)V

    .line 632
    invoke-static {}, Lcom/transsion/camera/utils/ResCache;->dump()V

    .line 636
    const-string p0, "[cacheResources] end."

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private cancelResetFlashSnapLite()V
    .registers 4

    .line 822
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->supportMotionCaptureInAICAM()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x0

    .line 825
    iput-boolean v0, p0, Lcom/transsion/camera/app_info/BaseApplication;->mNeedResetFlashSnapLiteStatus:Z

    .line 826
    sget-object v0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelResetFlashSnapLiteKey, mNeedRemove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app_info/BaseApplication;->mNeedResetFlashSnapLiteStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 827
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mHandler:Lcom/transsion/camera/app/CameraApplication$MainHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private checkQuickUpStatus()V
    .registers 5

    .line 889
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsMotionCaptureModeSupported:Z

    if-nez v0, :cond_10

    .line 890
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsStreetSnapModeSupported:Z

    if-eqz v0, :cond_56

    .line 891
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraApplication;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 892
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraApplication;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    .line 893
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraApplication;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_one_click_efficiency"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 894
    sget-object v1, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkQuickUpStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v0, :cond_56

    .line 897
    :try_start_41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "persist_tr_camera.quickup.status"

    const-string v1, "on"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4c} :catch_4d

    return-void

    :catch_4d
    move-exception p0

    .line 900
    sget-object v0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "updateQuickUpOffGlobalStatus failed, e: "

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_56
    return-void
.end method

.method private clearDataStore(Landroid/content/Context;)V
    .registers 7

    .line 541
    invoke-static {p1}, Lcom/transsion/camera/utils/FileUtil;->getDataStoreFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_48

    .line 542
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_48

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_48

    .line 543
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    :goto_18
    if-ge v0, p1, :cond_48

    aget-object v1, p0, v0

    .line 544
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 545
    sget-object v2, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "itemName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 546
    const-string v2, ".crc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 547
    invoke-static {v1}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    .line 548
    invoke-virtual {v1}, Lcom/tencent/mmkv/MMKV;->clearAll()V

    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_48
    return-void
.end method

.method private configLog(Landroid/content/res/Resources;)V
    .registers 4

    .line 406
    sget p0, Lcom/transsion/camera/R$bool;->app_debug_log_enable:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 407
    sget v0, Lcom/transsion/camera/R$bool;->close_debug_log_for_user_exclude_fans:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p0, :cond_1d

    if-eqz p1, :cond_1d

    .line 409
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isUserVersion()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isFansSupport()Z

    move-result p1

    if-nez p1, :cond_1d

    const/4 p0, 0x0

    .line 412
    :cond_1d
    invoke-static {p0}, Lcom/transsion/camera/utils/debug/Log;->setDebugLogEnable(Z)V

    .line 413
    sget-object p1, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configLog, debugLogEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", appVersion: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getAppVersionName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private disableBackgroundService(Landroid/content/Context;)V
    .registers 4

    .line 360
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.transsion.camera.feature.backgroundservice.BackgroundService"

    invoke-direct {p0, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 363
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 368
    sget-object p0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "disableBackgroundService."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p0

    .line 370
    sget-object p1, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableBackgroundService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private getExitTimestamp()J
    .registers 5

    .line 796
    iget-wide v0, p0, Lcom/transsion/camera/app/CameraApplication;->mExitTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_12

    .line 797
    iget-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mGlobalMMKVData:Lcom/tencent/mmkv/MMKV;

    const-string v1, "key_cam_exit_timestamp"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->decodeLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/CameraApplication;->mExitTimestamp:J

    .line 799
    :cond_12
    iget-wide v0, p0, Lcom/transsion/camera/app/CameraApplication;->mExitTimestamp:J

    return-wide v0
.end method

.method private getMemoryKillThreshold()J
    .registers 3

    .line 768
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getRam()I

    move-result v0

    packed-switch v0, :pswitch_data_56

    .line 783
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$integer;->memory_kill_threshold_6g:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    :goto_11
    int-to-long v0, p0

    return-wide v0

    .line 781
    :pswitch_13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$integer;->memory_kill_threshold_12g:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_11

    .line 779
    :pswitch_1e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$integer;->memory_kill_threshold_8g:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_11

    .line 777
    :pswitch_29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$integer;->memory_kill_threshold_6g:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_11

    .line 775
    :pswitch_34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$integer;->memory_kill_threshold_4g:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_11

    .line 773
    :pswitch_3f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$integer;->memory_kill_threshold_3g:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_11

    .line 771
    :pswitch_4a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$integer;->memory_kill_threshold_2g:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_11

    nop

    :pswitch_data_56
    .packed-switch 0x64
        :pswitch_4a
        :pswitch_3f
        :pswitch_34
        :pswitch_29
        :pswitch_1e
        :pswitch_13
    .end packed-switch
.end method

.method private static getUid(Landroid/content/Context;)I
    .registers 3

    .line 558
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 559
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 560
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    return p0

    :catch_11
    move-exception p0

    .line 562
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method private handleAutoKill()V
    .registers 7

    .line 755
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 756
    sget-object v0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Cam app is in background,kill self."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 757
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 759
    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getCameraMemory(Landroid/content/Context;)J

    move-result-wide v0

    .line 760
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->getMemoryKillThreshold()J

    move-result-wide v2

    .line 761
    sget-object p0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleAutoKill: cameraMemroy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", memoryKillThreshold: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    cmp-long p0, v0, v2

    if-ltz p0, :cond_49

    .line 763
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    :cond_49
    return-void
.end method

.method private initDataStore()V
    .registers 6

    .line 857
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->initFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object v0

    .line 858
    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz v0, :cond_16

    .line 859
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->createDataStore(Landroid/content/Context;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 861
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-nez v0, :cond_25

    .line 862
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 864
    :cond_25
    sget-object v0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDataStore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "default"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_storage"

    invoke-virtual {p0, v4, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private initFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;
    .registers 3

    .line 868
    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 869
    iget-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mFoldFlipActivityProxy:Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    if-nez v0, :cond_17

    const/4 v0, 0x0

    .line 871
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "com.transsion.camera.app.FoldFlipActivityProxyImpl"

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    iput-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mFoldFlipActivityProxy:Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    .line 874
    :cond_17
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mFoldFlipActivityProxy:Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method private initInstance(Landroid/content/res/Resources;)V
    .registers 5

    .line 418
    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportPortraitArchitecture(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 419
    invoke-static {}, Lcom/transsion/camera/app/proxy/ProxyManager;->getPortrait()Lcom/transsion/camera/app/proxy/portrait/IPortraitProxy;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/proxy/portrait/IPortraitProxy;->preInit(Landroid/content/Context;)V

    .line 422
    :cond_d
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportRecordingEffect()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 423
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda10;-><init>(Lcom/transsion/camera/app/CameraApplication;)V

    const-string v1, "recording_effect_mic_number"

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 428
    :cond_21
    invoke-static {p0}, Lcom/transsion/camera/utils/BitmapUtils;->init(Landroid/content/Context;)V

    .line 429
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableBgServiceDisorderImage:Z

    if-eqz p1, :cond_2f

    .line 430
    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->applicationOnCreate()V

    .line 432
    :cond_2f
    invoke-static {p0}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->createInstance(Landroid/content/Context;)V

    .line 433
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result p1

    if-eqz p1, :cond_7a

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceCloseOfflineJNISupport()Z

    move-result p1

    if-nez p1, :cond_7a

    .line 434
    invoke-static {}, Lcom/transsion/camera/adapter/platformcamera/OfflineController;->createInstance()V

    .line 435
    invoke-static {}, Lcom/transsion/camera/adapter/platformcamera/OfflineController;->getInstance()Lcom/transsion/camera/adapter/platformcamera/OfflineController;

    move-result-object p1

    .line 436
    sget-object v0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_64

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/platformcamera/OfflineController;->getUnProcessLength()I

    move-result v2

    goto :goto_65

    :cond_64
    const/4 v2, 0x0

    :goto_65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_7a

    .line 437
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/platformcamera/OfflineController;->getUnProcessLength()I

    move-result v0

    if-lez v0, :cond_7a

    .line 438
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/platformcamera/OfflineController;->initOffline()V

    .line 441
    :cond_7a
    invoke-static {}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->getInstance()Lcom/transsion/camera/utils/monitor/WatchDogMonitor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->init(Landroid/app/Application;)V

    .line 443
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    if-eqz p0, :cond_8e

    .line 444
    const-string p0, "com.transsion.camera.base_business.dv_sdk.DVResourceManager"

    invoke-static {p0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 447
    :cond_8e
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isBgServiceCheckConfigEnable()Z

    move-result p0

    if-eqz p0, :cond_9a

    .line 448
    invoke-static {}, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->getInstance()Lcom/transsion/camera/utils/debug/CaptureCheckManager;

    move-result-object p0

    sput-object p0, Lcom/transsion/camera/adapter/CameraProxy;->sCaptureCheckForDebug:Lcom/transsion/camera/utils/debug/ICaptureCheck;

    :cond_9a
    return-void
.end method

.method private isMainActivity(Landroid/app/Activity;)Z
    .registers 2

    .line 789
    instance-of p0, p1, Lcom/transsion/camera/app/CameraActivity;

    if-nez p0, :cond_b

    instance-of p0, p1, Lcom/transsion/camera/app/SecureCameraActivity;

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$addAssetsResourcesToContext$9()V
    .registers 6

    .line 461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 462
    sget-object v2, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "addAssetsResourcesToContext start "

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 463
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportMakeUp3DAssets:Z

    if-eqz v3, :cond_1c

    .line 464
    invoke-static {}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->getInstance()Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;

    move-result-object v3

    sget-object v4, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->MAKEUP3D:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->initResourcesLoader(Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;)V

    .line 467
    :cond_1c
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportMakeUpAssets:Z

    if-eqz v3, :cond_2d

    .line 468
    invoke-static {}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->getInstance()Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;

    move-result-object v3

    sget-object v4, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->MAKEUP:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->initResourcesLoader(Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;)V

    .line 471
    :cond_2d
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportVoiceDetectionAssets:Z

    if-eqz v3, :cond_3e

    .line 472
    invoke-static {}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->getInstance()Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;

    move-result-object v3

    sget-object v4, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->VOICE_DETECTION:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->initResourcesLoader(Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;)V

    .line 475
    :cond_3e
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportVlogAssets:Z

    if-eqz v3, :cond_4f

    .line 476
    invoke-static {}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->getInstance()Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;

    move-result-object v3

    sget-object v4, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->VLOG:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->initResourcesLoader(Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;)V

    .line 479
    :cond_4f
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportQRCodeAssets:Z

    if-eqz v3, :cond_60

    .line 480
    invoke-static {}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->getInstance()Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;

    move-result-object v3

    sget-object v4, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->QRCODE:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->initResourcesLoader(Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;)V

    .line 482
    :cond_60
    invoke-static {p0}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->addResourcesLoader(Landroid/content/Context;)V

    .line 483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 484
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addAssetsResourcesToContext end ! take = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initInstance$8()V
    .registers 1

    .line 424
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->updateMicNumber(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .registers 6

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 246
    :try_start_4
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIGCManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIGCManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/ai/AIGCManager;->init(Landroid/content/Context;)V

    .line 247
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIArtManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIArtManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/ai/AIArtManager;->init(Landroid/content/Context;)V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_33

    .line 249
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mAsyncLoadConfigsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 251
    sget-object p0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ai async execute time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_33
    move-exception v0

    .line 249
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mAsyncLoadConfigsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 250
    throw v0
.end method

.method private synthetic lambda$onCreate$1()V
    .registers 6

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 256
    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getInstance()Lcom/transsion/hubsdk/common/init/TranHubSdkManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->init(Landroid/content/Context;)V

    .line 258
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x24

    if-lt v2, v3, :cond_1d

    .line 259
    new-instance v2, Lcom/transsion/hubsdk/api/content/TranContextExt;

    invoke-direct {v2}, Lcom/transsion/hubsdk/api/content/TranContextExt;-><init>()V

    .line 260
    invoke-virtual {v2}, Lcom/transsion/hubsdk/api/content/TranContextExt;->enableAssetsOverlay()V

    .line 262
    :cond_1d
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mAsyncLoadConfigsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 263
    sget-object p0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init THub sdk execute time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreate$2(Landroid/content/res/Resources;)V
    .registers 9

    const/16 v0, -0x14

    .line 276
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 278
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/app/ConfigFlow;->initCustomConfigInSubThread(Lcom/transsion/camera/utils/CustomConfigUtil;)V

    .line 279
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->createInstance()V

    .line 280
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->getInstance()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/app/ConfigFlow;->initFlashConfigInSubThread(Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V

    .line 281
    invoke-static {}, Lcom/transsion/camera/utils/FlagUtil;->getInstance()Lcom/transsion/camera/utils/FlagUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/utils/FlagUtil;->initSubFlags()V

    .line 282
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->createInstance()V

    .line 283
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->initDataStore()V

    .line 284
    iget-object v2, p0, Lcom/transsion/camera/app/CameraApplication;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v2}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->createInstance(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 285
    invoke-static {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->createInstance(Landroid/content/Context;)V

    .line 286
    sget v2, Lcom/transsion/camera/app/common/R$bool;->tz_service_support:I

    .line 287
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 288
    sget v3, Lcom/transsion/camera/app/common/R$bool;->isp_hidl_support:I

    .line 289
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez v2, :cond_42

    if-nez p1, :cond_42

    .line 291
    invoke-direct {p0, p0}, Lcom/transsion/camera/app/CameraApplication;->disableBackgroundService(Landroid/content/Context;)V

    .line 293
    :cond_42
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/camera/app/CameraApplication;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 294
    invoke-static {}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->getInstance()Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    move-result-object v3

    invoke-static {}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->getInstance()Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/transsion/camera/app/common/taps/IBackgroundStorageLifecycleObserver;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    .line 293
    invoke-virtual {p1, p0, v2, v5}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;[Lcom/transsion/camera/app/common/taps/IBackgroundStorageLifecycleObserver;)Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    .line 295
    iget-object p1, p0, Lcom/transsion/camera/app/CameraApplication;->mAsyncLoadConfigsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 296
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 297
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->checkQuickUpStatus()V

    .line 298
    sget-object p0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache custom configs execute time:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreate$3()V
    .registers 9

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 310
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/transsion/camera/utils/dfx/inter/IExCommon;->init(Landroid/content/Context;)V

    .line 311
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$bool;->dfx_support_performance:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/R$bool;->dfx_support_cam_errors:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/R$bool;->dfx_support_record_cam_memory:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    const/4 v6, 0x3

    new-array v6, v6, [Z

    const/4 v7, 0x0

    aput-boolean v3, v6, v7

    const/4 v3, 0x1

    aput-boolean v4, v6, v3

    const/4 v3, 0x2

    aput-boolean v5, v6, v3

    invoke-interface {v2, v6}, Lcom/transsion/camera/utils/dfx/inter/IExCommon;->updateLocalSupports([Z)V

    .line 312
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mAsyncLoadConfigsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 313
    sget-object p0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init dfx execute time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreate$4()V
    .registers 6

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 325
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/app/ConfigFlow;->initCommonConfigInSubThread(Lcom/transsion/camera/app/common/CommonConfigUtil;)V

    .line 326
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mAsyncLoadConfigsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 327
    sget-object p0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache common configs execute time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreate$5(Landroid/content/res/Resources;)V
    .registers 6

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 334
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraApplication;->initInstance(Landroid/content/res/Resources;)V

    .line 335
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mAsyncLoadConfigsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 336
    sget-object p0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init instances execute time:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreate$6(Landroid/content/res/Resources;)V
    .registers 2

    .line 339
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheResources(Landroid/content/res/Resources;)V

    return-void
.end method

.method private synthetic lambda$onCreate$7(Landroid/content/res/Resources;)V
    .registers 6

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 343
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheClassSync(Landroid/content/res/Resources;)V

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mAsyncLoadConfigsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 345
    sget-object p0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache class sync execute time:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$removeTagIfNeed$11()V
    .registers 2

    .line 815
    const-string v0, "key_flash_facade"

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/CameraApplication;->removeTagFromDataStore(Ljava/lang/String;)V

    return-void
.end method

.method private registerPackageDataClear()V
    .registers 4

    .line 520
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 521
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 522
    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 523
    iget-object v1, p0, Lcom/transsion/camera/app/CameraApplication;->mDataClearReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private removeTagFromDataStore(Ljava/lang/String;)V
    .registers 9

    .line 839
    invoke-static {p0}, Lcom/transsion/camera/utils/FileUtil;->getDataStoreFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_6d

    .line 840
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 841
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_6d

    aget-object v2, p0, v1

    .line 842
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 843
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "PHOTO"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "VIDEO"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 844
    :cond_3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ".crc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 845
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    .line 846
    sget-object v4, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove key-value of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 847
    invoke-virtual {v2, p1}, Lcom/tencent/mmkv/MMKV;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_6d
    return-void
.end method

.method private removeTagIfNeed(Landroid/app/Activity;)V
    .registers 8

    .line 809
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraApplication;->isMainActivity(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 810
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->getExitTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->getExitTimestamp()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/32 v4, 0x927c0

    cmp-long p1, v0, v4

    if-lez p1, :cond_3a

    .line 811
    sget-object p1, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Exit time more than 10 min,reset status."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 812
    iput-wide v2, p0, Lcom/transsion/camera/app/CameraApplication;->mExitTimestamp:J

    const/4 p1, 0x1

    .line 813
    iput-boolean p1, p0, Lcom/transsion/camera/app_info/BaseApplication;->mNeedRemoveFlashTag:Z

    .line 814
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda11;-><init>(Lcom/transsion/camera/app/CameraApplication;)V

    const-string p0, "check-exit-interval"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_3a
    return-void
.end method

.method private resetFlashSnapLiteKey()V
    .registers 4

    .line 831
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->supportMotionCaptureInAICAM()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 834
    :cond_b
    sget-object v0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "reset FlashSnap status in 1 min."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 835
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mHandler:Lcom/transsion/camera/app/CameraApplication$MainHandler;

    const/4 v0, 0x1

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private saveExitTimestamp(J)V
    .registers 4

    .line 803
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mGlobalMMKVData:Lcom/tencent/mmkv/MMKV;

    if-eqz p0, :cond_9

    .line 804
    const-string v0, "key_cam_exit_timestamp"

    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;J)Z

    :cond_9
    return-void
.end method

.method private startAutoFinishActivity(Landroid/app/Activity;)V
    .registers 5

    .line 734
    iget v0, p0, Lcom/transsion/camera/app/CameraApplication;->mAutoKillType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    .line 735
    sget v0, Lcom/transsion/camera/utils/FeatureSupport;->SDBG_SELE_FINISH_PORTRAIT_REVIEW_ACTIVITY_HOME:I

    if-lez v0, :cond_c

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_f

    :cond_c
    const v0, 0xea60

    :goto_f
    iput v0, p0, Lcom/transsion/camera/app/CameraApplication;->mAutoFinishActivityTime:I

    .line 736
    iget-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mHandler:Lcom/transsion/camera/app/CameraApplication$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 737
    iget-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mHandler:Lcom/transsion/camera/app/CameraApplication$MainHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 738
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 739
    iget-object p1, p0, Lcom/transsion/camera/app/CameraApplication;->mHandler:Lcom/transsion/camera/app/CameraApplication$MainHandler;

    iget p0, p0, Lcom/transsion/camera/app/CameraApplication;->mAutoFinishActivityTime:I

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2c
    return-void
.end method

.method private startAutoKill()V
    .registers 5

    .line 719
    iget v0, p0, Lcom/transsion/camera/app/CameraApplication;->mAutoKillType:I

    const/4 v1, 0x1

    const v2, 0xea60

    if-ne v0, v1, :cond_1d

    .line 720
    sget v0, Lcom/transsion/camera/utils/FeatureSupport;->SDBG_SELF_KILL_HOME:I

    if-lez v0, :cond_f

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_1a

    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$integer;->auto_kill_time_home:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/2addr v0, v2

    :goto_1a
    iput v0, p0, Lcom/transsion/camera/app/CameraApplication;->mAutoKillTime:I

    goto :goto_34

    :cond_1d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_34

    .line 722
    sget v0, Lcom/transsion/camera/utils/FeatureSupport;->SDBG_SELF_KILL_BACK:I

    if-lez v0, :cond_27

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_32

    :cond_27
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$integer;->auto_kill_time_back:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/2addr v0, v2

    :goto_32
    iput v0, p0, Lcom/transsion/camera/app/CameraApplication;->mAutoKillTime:I

    .line 725
    :cond_34
    :goto_34
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result v0

    if-eqz v0, :cond_3e

    const/16 v0, 0x1388

    .line 726
    iput v0, p0, Lcom/transsion/camera/app/CameraApplication;->mAutoKillTime:I

    .line 728
    :cond_3e
    sget-object v0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAutoKill mAutoKillType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/CameraApplication;->mAutoKillType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mAutoKillTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/CameraApplication;->mAutoKillTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mHandler:Lcom/transsion/camera/app/CameraApplication$MainHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 730
    iget-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mHandler:Lcom/transsion/camera/app/CameraApplication$MainHandler;

    iget p0, p0, Lcom/transsion/camera/app/CameraApplication;->mAutoKillTime:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopAutoFinishActivity()V
    .registers 2

    .line 749
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mHandler:Lcom/transsion/camera/app/CameraApplication$MainHandler;

    if-eqz p0, :cond_8

    const/4 v0, 0x2

    .line 750
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    return-void
.end method

.method private stopAutoKill()V
    .registers 3

    .line 744
    sget-object v0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopAutoKill"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 745
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mHandler:Lcom/transsion/camera/app/CameraApplication$MainHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 881
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method public getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;
    .registers 1

    .line 885
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mFoldFlipActivityProxy:Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    return-object p0
.end method

.method public onCreate()V
    .registers 9

    .line 234
    sget-object v0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Camera application onCreate."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 236
    sget-object v3, Lcom/tencent/mmkv/MMKVLogLevel;->LevelError:Lcom/tencent/mmkv/MMKVLogLevel;

    invoke-static {p0, v3}, Lcom/tencent/mmkv/MMKV;->initialize(Landroid/content/Context;Lcom/tencent/mmkv/MMKVLogLevel;)Ljava/lang/String;

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 238
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/CameraApplication;->configLog(Landroid/content/res/Resources;)V

    .line 239
    sget v4, Lcom/transsion/camera/R$bool;->supportMigrateSP2MMKV:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 240
    invoke-static {p0}, Lcom/transsion/camera/utils/FileUtil;->migrateAllSPToMMKV(Landroid/content/Context;)V

    .line 243
    :cond_22
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v4

    new-instance v5, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/CameraApplication;)V

    const-string v6, "ai_async_init"

    invoke-virtual {v4, v5, v6}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 254
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v4

    new-instance v5, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/CameraApplication;)V

    const-string v6, "init_THub_SDK"

    invoke-virtual {v4, v5, v6}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 265
    sget v4, Lcom/transsion/camera/R$bool;->app_persistent:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 266
    sget v5, Lcom/transsion/camera/R$bool;->allow_record_memory_info:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-static {p0, v5}, Lcom/transsion/camera/utils/MemoryUtils;->init(Landroid/content/Context;Z)V

    .line 268
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->createInstance()V

    .line 269
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v5

    invoke-static {v5}, Lcom/transsion/camera/app/ConfigFlow;->initCustomConfigInMainThread(Lcom/transsion/camera/utils/CustomConfigUtil;)V

    .line 270
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->createInstance()V

    .line 271
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v5

    invoke-static {v5}, Lcom/transsion/camera/app/ConfigFlow;->initCommonConfigInMainThread(Lcom/transsion/camera/app/common/CommonConfigUtil;)V

    .line 272
    invoke-static {}, Lcom/transsion/camera/utils/FlagUtil;->createInstance()V

    .line 273
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->addAssetsResourcesToContext()V

    .line 275
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v5

    new-instance v6, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, v3}, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/CameraApplication;Landroid/content/res/Resources;)V

    const-string v7, "cache_custom_configs"

    invoke-virtual {v5, v6, v7}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 301
    invoke-static {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->init(Landroid/content/Context;)V

    .line 302
    invoke-static {}, Lcom/transsion/camera/utils/manager/CamAssetManager;->getInstance()Lcom/transsion/camera/utils/manager/CamAssetManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/utils/manager/CamAssetManager;->init()V

    if-nez v4, :cond_89

    .line 305
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setLaunchStartTime(I)V

    .line 308
    :cond_89
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v5

    new-instance v6, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/CameraApplication;)V

    const-string v7, "init_dfx"

    invoke-virtual {v5, v6, v7}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 317
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->cacheAndParseAppVersionName(Landroid/content/Context;)V

    .line 319
    new-instance v5, Lcom/transsion/camera/app/CameraApplication$MainHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/transsion/camera/app/CameraApplication$MainHandler;-><init>(Lcom/transsion/camera/app/CameraApplication;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/transsion/camera/app/CameraApplication;->mHandler:Lcom/transsion/camera/app/CameraApplication$MainHandler;

    .line 320
    iget-object v5, p0, Lcom/transsion/camera/app/CameraApplication;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v5}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 322
    invoke-super {p0}, Lcom/transsion/camera/app_info/BaseApplication;->onCreate()V

    .line 323
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v5

    new-instance v6, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/CameraApplication;)V

    const-string v7, "cache_common_configs"

    invoke-virtual {v5, v6, v7}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 330
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraAgentFactory;->createCameraAgent(Landroid/content/Context;)V

    .line 332
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v5

    new-instance v6, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0, v3}, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/CameraApplication;Landroid/content/res/Resources;)V

    const-string v7, "init_instances"

    invoke-virtual {v5, v6, v7}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 339
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v5

    new-instance v6, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0, v3}, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/app/CameraApplication;Landroid/content/res/Resources;)V

    const-string v7, "cache_resources_thread"

    invoke-virtual {v5, v6, v7}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 340
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->cacheLayouts()V

    .line 341
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v5

    new-instance v6, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda7;

    invoke-direct {v6, p0, v3}, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/app/CameraApplication;Landroid/content/res/Resources;)V

    const-string v3, "cache_class_sync"

    invoke-virtual {v5, v6, v3}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 347
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->cacheDataStoreFile()V

    .line 348
    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->initDeveloperMode(Landroid/content/Context;)V

    if-eqz v4, :cond_f6

    .line 351
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->registerPackageDataClear()V

    .line 356
    :cond_f6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera application execute time:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 5

    .line 376
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    const/4 p0, 0x1

    .line 377
    const-string v0, "onTrimMemory level:"

    packed-switch p1, :pswitch_data_ce

    .line 400
    sget-object p0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "(other)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 397
    :pswitch_23
    sget-object p0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "(cpu loading high)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 391
    :pswitch_3d
    sget-object p0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "(cpu abnormal warning)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 394
    :pswitch_57
    sget-object p0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "(cpu abnormal event)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 387
    :pswitch_71
    sget-object v1, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "(memory abnormal event)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 388
    const-string p1, "memory abnormal event"

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/MemoryUtils;->logAvailMemoryAsync(Ljava/lang/String;Z)V

    return-void

    .line 383
    :pswitch_90
    sget-object v1, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "(memory abnormal warning)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 384
    const-string p1, "memory abnormal warning"

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/MemoryUtils;->logAvailMemoryAsync(Ljava/lang/String;Z)V

    return-void

    .line 379
    :pswitch_af
    sget-object v1, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "(memory device low)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 380
    const-string p1, "memory device low"

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/MemoryUtils;->logAvailMemoryAsync(Ljava/lang/String;Z)V

    return-void

    :pswitch_data_ce
    .packed-switch 0x5a
        :pswitch_af
        :pswitch_90
        :pswitch_71
        :pswitch_57
        :pswitch_3d
        :pswitch_23
    .end packed-switch
.end method
