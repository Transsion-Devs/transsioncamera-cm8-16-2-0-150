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

    .line 633
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

    .line 520
    new-instance v0, Lcom/transsion/camera/app/CameraApplication$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/CameraApplication$2;-><init>(Lcom/transsion/camera/app/CameraApplication;)V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mDataClearReceiver:Landroid/content/BroadcastReceiver;

    .line 631
    new-instance v0, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda8;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mOnInflateFinishedListener:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;

    return-void
.end method

.method private addAssetsResourcesToContext()V
    .registers 2

    .line 448
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportMakeUpAssets:Z

    if-nez v0, :cond_2a

    .line 449
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportVoiceDetectionAssets:Z

    if-nez v0, :cond_2a

    .line 450
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportMakeUp3DAssets:Z

    if-nez v0, :cond_2a

    .line 451
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportVlogAssets:Z

    if-nez v0, :cond_2a

    .line 452
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportQRCodeAssets:Z

    if-eqz v0, :cond_29

    goto :goto_2a

    :cond_29
    return-void

    .line 454
    :cond_2a
    :goto_2a
    new-instance v0, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/app/CameraApplication;)V

    invoke-static {v0}, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private cacheClassSync(Landroid/content/res/Resources;)V
    .registers 2

    .line 485
    const-string p0, "cache_classes"

    invoke-static {p0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 486
    sget p0, Lcom/transsion/camera/R$array;->build_in_mode_features:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/app/common/provider/ModeFeatureProvider;->cacheAllModeEntryClasses([Ljava/lang/String;)V

    .line 487
    sget p0, Lcom/transsion/camera/R$array;->build_in_setting_features:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/app/common/provider/SettingFeatureProvider;->cacheAllSettingEntryClasses([Ljava/lang/String;)V

    .line 488
    sget p0, Lcom/transsion/camera/R$array;->build_in_setting_ui_entries:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->cacheAllEntryClasses([Ljava/lang/String;)V

    .line 489
    sget p0, Lcom/transsion/camera/R$array;->some_reflection_classes:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/ReflectionUtils;->cacheClasses([Ljava/lang/String;)Ljava/util/List;

    .line 490
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method private cacheDataStoreFile()V
    .registers 4

    .line 495
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

    .line 496
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

    .line 497
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

    .line 498
    const-string v0, "SellingPoint"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    .line 499
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

    .line 652
    :try_start_4
    invoke-virtual {p2, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 653
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ResCache;->addDrawable(ILandroid/graphics/drawable/Drawable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    .line 655
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

    .line 644
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->getDrawableId(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(ILandroid/content/res/Resources;)V

    return-void
.end method

.method private cacheDrawableTypedArray(ILandroid/content/res/Resources;)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    .line 667
    :cond_3
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 668
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_41

    .line 671
    :try_start_f
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 672
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 673
    invoke-static {v3, v4}, Lcom/transsion/camera/utils/ResCache;->addDrawable(ILandroid/graphics/drawable/Drawable;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_1b

    goto :goto_3e

    :catch_1b
    move-exception v3

    .line 675
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

    .line 678
    :cond_41
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private cacheDrawableTypedArray(Ljava/lang/String;Landroid/content/res/Resources;)V
    .registers 3

    .line 660
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->getArrayId(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(ILandroid/content/res/Resources;)V

    return-void
.end method

.method private cacheLayouts()V
    .registers 5

    .line 637
    new-instance v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    invoke-direct {v0, p0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mLayoutInflater:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    .line 638
    sget v1, Lcom/transsion/camera/R$layout;->camera_layout:I

    iget-object v2, p0, Lcom/transsion/camera/app/CameraApplication;->mOnInflateFinishedListener:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    .line 639
    iget-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mLayoutInflater:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    sget v1, Lcom/transsion/camera/R$layout;->preview_ui_gl_surface_view_layout:I

    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mOnInflateFinishedListener:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;

    invoke-virtual {v0, v1, v3, p0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    return-void
.end method

.method private cacheResources(Landroid/content/res/Resources;)V
    .registers 5

    .line 563
    sget-object v0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[cacheResources] start."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 564
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    .line 566
    sget v2, Lcom/transsion/camera/R$drawable;->ic_flash_icon:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(ILandroid/content/res/Resources;)V

    .line 567
    sget v2, Lcom/transsion/camera/R$bool;->flash_facade_support:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 569
    sget v2, Lcom/transsion/camera/R$array;->flash_facade_setting_entry_drawables:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(ILandroid/content/res/Resources;)V

    .line 570
    sget v2, Lcom/transsion/camera/R$array;->video_flash_facade_setting_entry_drawables:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(ILandroid/content/res/Resources;)V

    goto :goto_2d

    .line 572
    :cond_23
    sget v2, Lcom/transsion/camera/R$array;->flash_setting_entry_drawables:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(ILandroid/content/res/Resources;)V

    .line 573
    sget v2, Lcom/transsion/camera/R$array;->video_flash_setting_entry_drawables:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(ILandroid/content/res/Resources;)V

    .line 577
    :goto_2d
    const-string v2, "arc_filter_setting_entry_drawables"

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 578
    sget v2, Lcom/transsion/camera/R$drawable;->ic_picture_size:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(ILandroid/content/res/Resources;)V

    .line 579
    sget v2, Lcom/transsion/camera/R$array;->picture_ratio_setting_entry_drawables:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(ILandroid/content/res/Resources;)V

    .line 580
    const-string v2, "asd_enhance_setting_entry_drawables"

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 581
    const-string v2, "super_definition_setting_entry_drawables"

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 582
    const-string v2, "ic_taint_detection"

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 583
    const-string v2, "taint_detection_setting_entry_drawables"

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 584
    sget v2, Lcom/transsion/camera/R$drawable;->ic_hdr_icon:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(ILandroid/content/res/Resources;)V

    .line 585
    const-string v2, "hdr_setting_entry_drawables"

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 586
    const-string v2, "color_style_setting_entry_drawables"

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 587
    sget v2, Lcom/transsion/camera/R$bool;->pop_setting_support:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 589
    sget v2, Lcom/transsion/camera/R$drawable;->ic_pop_setting_self_timer:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(ILandroid/content/res/Resources;)V

    .line 590
    sget v2, Lcom/transsion/camera/R$array;->self_timer_pop_setting_entry_drawables:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(ILandroid/content/res/Resources;)V

    .line 594
    const-string v2, "ais_switch_pop_setting_entry_drawables"

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(Ljava/lang/String;Landroid/content/res/Resources;)V

    goto :goto_8b

    .line 596
    :cond_77
    sget v2, Lcom/transsion/camera/R$drawable;->ic_self_timer:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(ILandroid/content/res/Resources;)V

    .line 597
    sget v2, Lcom/transsion/camera/R$array;->self_timer_setting_entry_drawables:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(ILandroid/content/res/Resources;)V

    .line 598
    sget v2, Lcom/transsion/camera/R$drawable;->ic_guide_line:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(ILandroid/content/res/Resources;)V

    .line 599
    sget v2, Lcom/transsion/camera/R$array;->guide_line_setting_entry_drawables:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(ILandroid/content/res/Resources;)V

    .line 602
    :goto_8b
    sget v2, Lcom/transsion/camera/R$bool;->auto_focus_switch_support:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 604
    sget v2, Lcom/transsion/camera/R$drawable;->ic_settings_smartfocus:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(ILandroid/content/res/Resources;)V

    .line 605
    sget v2, Lcom/transsion/camera/R$array;->autofocus_switch_setting_entry_drawables:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(ILandroid/content/res/Resources;)V

    goto :goto_a8

    .line 607
    :cond_9e
    sget v2, Lcom/transsion/camera/R$drawable;->ic_eye_detection:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(ILandroid/content/res/Resources;)V

    .line 608
    sget v2, Lcom/transsion/camera/R$array;->eyedetection_setting_entry_drawables:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawableTypedArray(ILandroid/content/res/Resources;)V

    .line 611
    :goto_a8
    sget v2, Lcom/transsion/camera/R$drawable;->ic_guide_unselected:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(ILandroid/content/res/Resources;)V

    .line 613
    sget v2, Lcom/transsion/camera/R$drawable;->background_selling_point:I

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(ILandroid/content/res/Resources;)V

    if-eqz v1, :cond_be

    .line 615
    sget v1, Lcom/transsion/camera/R$drawable;->ic_treasure_box_item_back:I

    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(ILandroid/content/res/Resources;)V

    .line 616
    sget v1, Lcom/transsion/camera/R$drawable;->ic_treasure_box_item_back_black:I

    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheDrawable(ILandroid/content/res/Resources;)V

    .line 624
    :cond_be
    invoke-static {}, Lcom/transsion/camera/utils/ResCache;->dump()V

    .line 628
    const-string p0, "[cacheResources] end."

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private cancelResetFlashSnapLite()V
    .registers 4

    .line 814
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->supportMotionCaptureInAICAM()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x0

    .line 817
    iput-boolean v0, p0, Lcom/transsion/camera/app_info/BaseApplication;->mNeedResetFlashSnapLiteStatus:Z

    .line 818
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

    .line 819
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mHandler:Lcom/transsion/camera/app/CameraApplication$MainHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private clearDataStore(Landroid/content/Context;)V
    .registers 7

    .line 535
    invoke-static {p1}, Lcom/transsion/camera/utils/FileUtil;->getDataStoreFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_48

    .line 536
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_48

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_48

    .line 537
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    :goto_18
    if-ge v0, p1, :cond_48

    aget-object v1, p0, v0

    .line 538
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 539
    sget-object v2, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "itemName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 540
    const-string v2, ".crc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 541
    invoke-static {v1}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    .line 542
    invoke-virtual {v1}, Lcom/tencent/mmkv/MMKV;->clearAll()V

    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_48
    return-void
.end method

.method private configLog(Landroid/content/res/Resources;)V
    .registers 4

    .line 404
    sget p0, Lcom/transsion/camera/R$bool;->app_debug_log_enable:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 405
    sget v0, Lcom/transsion/camera/R$bool;->close_debug_log_for_user_exclude_fans:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p0, :cond_1d

    if-eqz p1, :cond_1d

    .line 407
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isUserVersion()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isFansSupport()Z

    move-result p1

    if-nez p1, :cond_1d

    const/4 p0, 0x0

    .line 410
    :cond_1d
    invoke-static {p0}, Lcom/transsion/camera/utils/debug/Log;->setDebugLogEnable(Z)V

    .line 411
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

    .line 358
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.transsion.camera.feature.backgroundservice.BackgroundService"

    invoke-direct {p0, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 361
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 366
    sget-object p0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "disableBackgroundService."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p0

    .line 368
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

    .line 788
    iget-wide v0, p0, Lcom/transsion/camera/app/CameraApplication;->mExitTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_12

    .line 789
    iget-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mGlobalMMKVData:Lcom/tencent/mmkv/MMKV;

    const-string v1, "key_cam_exit_timestamp"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->decodeLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/CameraApplication;->mExitTimestamp:J

    .line 791
    :cond_12
    iget-wide v0, p0, Lcom/transsion/camera/app/CameraApplication;->mExitTimestamp:J

    return-wide v0
.end method

.method private getMemoryKillThreshold()J
    .registers 3

    .line 760
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getRam()I

    move-result v0

    packed-switch v0, :pswitch_data_56

    .line 775
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$integer;->memory_kill_threshold_6g:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    :goto_11
    int-to-long v0, p0

    return-wide v0

    .line 773
    :pswitch_13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$integer;->memory_kill_threshold_12g:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_11

    .line 771
    :pswitch_1e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$integer;->memory_kill_threshold_8g:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_11

    .line 769
    :pswitch_29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$integer;->memory_kill_threshold_6g:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_11

    .line 767
    :pswitch_34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$integer;->memory_kill_threshold_4g:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_11

    .line 765
    :pswitch_3f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$integer;->memory_kill_threshold_3g:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_11

    .line 763
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

    .line 552
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 553
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 554
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    return p0

    :catch_11
    move-exception p0

    .line 556
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method private handleAutoKill()V
    .registers 7

    .line 747
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 748
    sget-object v0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Cam app is in background,kill self."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 749
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 751
    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getCameraMemory(Landroid/content/Context;)J

    move-result-wide v0

    .line 752
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->getMemoryKillThreshold()J

    move-result-wide v2

    .line 753
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

    .line 755
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    :cond_49
    return-void
.end method

.method private initDataStore()V
    .registers 6

    .line 849
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->initFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object v0

    .line 850
    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz v0, :cond_16

    .line 851
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->createDataStore(Landroid/content/Context;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 853
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-nez v0, :cond_25

    .line 854
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 856
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

    .line 860
    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 861
    iget-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mFoldFlipActivityProxy:Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    if-nez v0, :cond_17

    const/4 v0, 0x0

    .line 863
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "com.transsion.camera.app.FoldFlipActivityProxyImpl"

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    iput-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mFoldFlipActivityProxy:Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    .line 866
    :cond_17
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mFoldFlipActivityProxy:Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method private initInstance(Landroid/content/res/Resources;)V
    .registers 4

    .line 416
    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportPortraitArchitecture(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 417
    invoke-static {}, Lcom/transsion/camera/app/proxy/ProxyManager;->getPortrait()Lcom/transsion/camera/app/proxy/portrait/IPortraitProxy;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/proxy/portrait/IPortraitProxy;->preInit(Landroid/content/Context;)V

    .line 420
    :cond_d
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportRecordingEffect()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 421
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda10;-><init>(Lcom/transsion/camera/app/CameraApplication;)V

    const-string v1, "recording_effect_mic_number"

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 426
    :cond_21
    invoke-static {p0}, Lcom/transsion/camera/utils/BitmapUtils;->init(Landroid/content/Context;)V

    .line 427
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->setContext(Landroid/content/Context;)V

    .line 428
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableBgServiceDisorderImage:Z

    if-eqz p1, :cond_36

    .line 429
    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->applicationOnCreate()V

    .line 431
    :cond_36
    invoke-static {p0}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->createInstance(Landroid/content/Context;)V

    .line 432
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result p1

    if-eqz p1, :cond_4c

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceCloseOfflineJNISupport()Z

    move-result p1

    if-nez p1, :cond_4c

    .line 433
    invoke-static {}, Lcom/transsion/camera/adapter/platformcamera/OfflineController;->createInstance()V

    .line 435
    :cond_4c
    invoke-static {}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->getInstance()Lcom/transsion/camera/utils/monitor/WatchDogMonitor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->init(Landroid/app/Application;)V

    .line 437
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    if-eqz p0, :cond_60

    .line 438
    const-string p0, "com.transsion.camera.base_business.dv_sdk.DVResourceManager"

    invoke-static {p0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 441
    :cond_60
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isBgServiceCheckConfigEnable()Z

    move-result p0

    if-eqz p0, :cond_6c

    .line 442
    invoke-static {}, Lcom/transsion/camera/utils/debug/CaptureCheckManager;->getInstance()Lcom/transsion/camera/utils/debug/CaptureCheckManager;

    move-result-object p0

    sput-object p0, Lcom/transsion/camera/adapter/CameraProxy;->sCaptureCheckForDebug:Lcom/transsion/camera/utils/debug/ICaptureCheck;

    :cond_6c
    return-void
.end method

.method private isMainActivity(Landroid/app/Activity;)Z
    .registers 2

    .line 781
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

    .line 455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 456
    sget-object v2, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "addAssetsResourcesToContext start "

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 457
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportMakeUp3DAssets:Z

    if-eqz v3, :cond_1c

    .line 458
    invoke-static {}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->getInstance()Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;

    move-result-object v3

    sget-object v4, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->MAKEUP3D:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->initResourcesLoader(Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;)V

    .line 461
    :cond_1c
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportMakeUpAssets:Z

    if-eqz v3, :cond_2d

    .line 462
    invoke-static {}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->getInstance()Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;

    move-result-object v3

    sget-object v4, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->MAKEUP:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->initResourcesLoader(Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;)V

    .line 465
    :cond_2d
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportVoiceDetectionAssets:Z

    if-eqz v3, :cond_3e

    .line 466
    invoke-static {}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->getInstance()Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;

    move-result-object v3

    sget-object v4, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->VOICE_DETECTION:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->initResourcesLoader(Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;)V

    .line 469
    :cond_3e
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportVlogAssets:Z

    if-eqz v3, :cond_4f

    .line 470
    invoke-static {}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->getInstance()Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;

    move-result-object v3

    sget-object v4, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->VLOG:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->initResourcesLoader(Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;)V

    .line 473
    :cond_4f
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportQRCodeAssets:Z

    if-eqz v3, :cond_60

    .line 474
    invoke-static {}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->getInstance()Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;

    move-result-object v3

    sget-object v4, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;->QRCODE:Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->initResourcesLoader(Lcom/transsion/camera/app/common/assets/AssetsLoaderManager$MODE;)V

    .line 476
    :cond_60
    invoke-static {p0}, Lcom/transsion/camera/app/common/assets/AssetsLoaderManager;->addResourcesLoader(Landroid/content/Context;)V

    .line 477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 478
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

    .line 422
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->updateMicNumber(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .registers 6

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 245
    :try_start_4
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIGCManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIGCManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/ai/AIGCManager;->init(Landroid/content/Context;)V

    .line 246
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIArtManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIArtManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/ai/AIArtManager;->init(Landroid/content/Context;)V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_33

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mAsyncLoadConfigsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 250
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

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mAsyncLoadConfigsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 249
    throw v0
.end method

.method private synthetic lambda$onCreate$1()V
    .registers 6

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 255
    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getInstance()Lcom/transsion/hubsdk/common/init/TranHubSdkManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->init(Landroid/content/Context;)V

    .line 257
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x24

    if-lt v2, v3, :cond_1d

    .line 258
    new-instance v2, Lcom/transsion/hubsdk/api/content/TranContextExt;

    invoke-direct {v2}, Lcom/transsion/hubsdk/api/content/TranContextExt;-><init>()V

    .line 259
    invoke-virtual {v2}, Lcom/transsion/hubsdk/api/content/TranContextExt;->enableAssetsOverlay()V

    .line 261
    :cond_1d
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mAsyncLoadConfigsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 262
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

    .line 275
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 277
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/app/ConfigFlow;->initCustomConfigInSubThread(Lcom/transsion/camera/utils/CustomConfigUtil;)V

    .line 278
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->createInstance()V

    .line 279
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->getInstance()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/app/ConfigFlow;->initFlashConfigInSubThread(Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V

    .line 280
    invoke-static {}, Lcom/transsion/camera/utils/FlagUtil;->getInstance()Lcom/transsion/camera/utils/FlagUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/utils/FlagUtil;->initSubFlags()V

    .line 281
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->createInstance()V

    .line 282
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->initDataStore()V

    .line 283
    iget-object v2, p0, Lcom/transsion/camera/app/CameraApplication;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v2}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->createInstance(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 284
    invoke-static {p0}, Lcom/transsion/camera/app/common/isphidl/ISPHIDLController;->createInstance(Landroid/content/Context;)V

    .line 285
    sget v2, Lcom/transsion/camera/app/common/R$bool;->tz_service_support:I

    .line 286
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 287
    sget v3, Lcom/transsion/camera/app/common/R$bool;->isp_hidl_support:I

    .line 288
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez v2, :cond_42

    if-nez p1, :cond_42

    .line 290
    invoke-direct {p0, p0}, Lcom/transsion/camera/app/CameraApplication;->disableBackgroundService(Landroid/content/Context;)V

    .line 292
    :cond_42
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/camera/app/CameraApplication;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 293
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

    .line 292
    invoke-virtual {p1, p0, v2, v5}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;[Lcom/transsion/camera/app/common/taps/IBackgroundStorageLifecycleObserver;)Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    .line 294
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mAsyncLoadConfigsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 295
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 296
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

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 308
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/transsion/camera/utils/dfx/inter/IExCommon;->init(Landroid/content/Context;)V

    .line 309
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

    .line 310
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mAsyncLoadConfigsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 311
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

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 323
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/app/ConfigFlow;->initCommonConfigInSubThread(Lcom/transsion/camera/app/common/CommonConfigUtil;)V

    .line 324
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mAsyncLoadConfigsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 325
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

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 332
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraApplication;->initInstance(Landroid/content/res/Resources;)V

    .line 333
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mAsyncLoadConfigsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 334
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

    .line 337
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheResources(Landroid/content/res/Resources;)V

    return-void
.end method

.method private synthetic lambda$onCreate$7(Landroid/content/res/Resources;)V
    .registers 6

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 341
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraApplication;->cacheClassSync(Landroid/content/res/Resources;)V

    .line 342
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mAsyncLoadConfigsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 343
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

    .line 807
    const-string v0, "key_flash_facade"

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/CameraApplication;->removeTagFromDataStore(Ljava/lang/String;)V

    return-void
.end method

.method private registerPackageDataClear()V
    .registers 4

    .line 514
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 515
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 516
    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 517
    iget-object v1, p0, Lcom/transsion/camera/app/CameraApplication;->mDataClearReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private removeTagFromDataStore(Ljava/lang/String;)V
    .registers 9

    .line 831
    invoke-static {p0}, Lcom/transsion/camera/utils/FileUtil;->getDataStoreFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_6d

    .line 832
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 833
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_6d

    aget-object v2, p0, v1

    .line 834
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 835
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

    .line 836
    :cond_3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ".crc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 837
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    .line 838
    sget-object v4, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove key-value of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 839
    invoke-virtual {v2, p1}, Lcom/tencent/mmkv/MMKV;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_6d
    return-void
.end method

.method private removeTagIfNeed(Landroid/app/Activity;)V
    .registers 8

    .line 801
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraApplication;->isMainActivity(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 802
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

    .line 803
    sget-object p1, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Exit time more than 10 min,reset status."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 804
    iput-wide v2, p0, Lcom/transsion/camera/app/CameraApplication;->mExitTimestamp:J

    const/4 p1, 0x1

    .line 805
    iput-boolean p1, p0, Lcom/transsion/camera/app_info/BaseApplication;->mNeedRemoveFlashTag:Z

    .line 806
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

    .line 823
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->supportMotionCaptureInAICAM()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 826
    :cond_b
    sget-object v0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "reset FlashSnap status in 1 min."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 827
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mHandler:Lcom/transsion/camera/app/CameraApplication$MainHandler;

    const/4 v0, 0x1

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private saveExitTimestamp(J)V
    .registers 4

    .line 795
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mGlobalMMKVData:Lcom/tencent/mmkv/MMKV;

    if-eqz p0, :cond_9

    .line 796
    const-string v0, "key_cam_exit_timestamp"

    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;J)Z

    :cond_9
    return-void
.end method

.method private startAutoFinishActivity(Landroid/app/Activity;)V
    .registers 5

    .line 726
    iget v0, p0, Lcom/transsion/camera/app/CameraApplication;->mAutoKillType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    .line 727
    sget v0, Lcom/transsion/camera/utils/FeatureSupport;->SDBG_SELE_FINISH_PORTRAIT_REVIEW_ACTIVITY_HOME:I

    if-lez v0, :cond_c

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_f

    :cond_c
    const v0, 0xea60

    :goto_f
    iput v0, p0, Lcom/transsion/camera/app/CameraApplication;->mAutoFinishActivityTime:I

    .line 728
    iget-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mHandler:Lcom/transsion/camera/app/CameraApplication$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 729
    iget-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mHandler:Lcom/transsion/camera/app/CameraApplication$MainHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 730
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 731
    iget-object p1, p0, Lcom/transsion/camera/app/CameraApplication;->mHandler:Lcom/transsion/camera/app/CameraApplication$MainHandler;

    iget p0, p0, Lcom/transsion/camera/app/CameraApplication;->mAutoFinishActivityTime:I

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2c
    return-void
.end method

.method private startAutoKill()V
    .registers 5

    .line 711
    iget v0, p0, Lcom/transsion/camera/app/CameraApplication;->mAutoKillType:I

    const/4 v1, 0x1

    const v2, 0xea60

    if-ne v0, v1, :cond_1d

    .line 712
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

    .line 714
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

    .line 717
    :cond_34
    :goto_34
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result v0

    if-eqz v0, :cond_3e

    const/16 v0, 0x1388

    .line 718
    iput v0, p0, Lcom/transsion/camera/app/CameraApplication;->mAutoKillTime:I

    .line 720
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

    .line 721
    iget-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mHandler:Lcom/transsion/camera/app/CameraApplication$MainHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 722
    iget-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mHandler:Lcom/transsion/camera/app/CameraApplication$MainHandler;

    iget p0, p0, Lcom/transsion/camera/app/CameraApplication;->mAutoKillTime:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopAutoFinishActivity()V
    .registers 2

    .line 741
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mHandler:Lcom/transsion/camera/app/CameraApplication$MainHandler;

    if-eqz p0, :cond_8

    const/4 v0, 0x2

    .line 742
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    return-void
.end method

.method private stopAutoKill()V
    .registers 3

    .line 736
    sget-object v0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopAutoKill"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 737
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mHandler:Lcom/transsion/camera/app/CameraApplication$MainHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 873
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method public getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;
    .registers 1

    .line 877
    iget-object p0, p0, Lcom/transsion/camera/app/CameraApplication;->mFoldFlipActivityProxy:Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    return-object p0
.end method

.method public onCreate()V
    .registers 8

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 235
    sget-object v2, Lcom/tencent/mmkv/MMKVLogLevel;->LevelError:Lcom/tencent/mmkv/MMKVLogLevel;

    invoke-static {p0, v2}, Lcom/tencent/mmkv/MMKV;->initialize(Landroid/content/Context;Lcom/tencent/mmkv/MMKVLogLevel;)Ljava/lang/String;

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 237
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/CameraApplication;->configLog(Landroid/content/res/Resources;)V

    .line 238
    sget v3, Lcom/transsion/camera/R$bool;->supportMigrateSP2MMKV:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 239
    invoke-static {p0}, Lcom/transsion/camera/utils/FileUtil;->migrateAllSPToMMKV(Landroid/content/Context;)V

    .line 242
    :cond_1b
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v3

    new-instance v4, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/CameraApplication;)V

    const-string v5, "ai_async_init"

    invoke-virtual {v3, v4, v5}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v3

    new-instance v4, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/CameraApplication;)V

    const-string v5, "init_THub_SDK"

    invoke-virtual {v3, v4, v5}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 264
    sget v3, Lcom/transsion/camera/R$bool;->app_persistent:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 265
    sget v4, Lcom/transsion/camera/R$bool;->allow_record_memory_info:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-static {p0, v4}, Lcom/transsion/camera/utils/MemoryUtils;->init(Landroid/content/Context;Z)V

    .line 267
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->createInstance()V

    .line 268
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/camera/app/ConfigFlow;->initCustomConfigInMainThread(Lcom/transsion/camera/utils/CustomConfigUtil;)V

    .line 269
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->createInstance()V

    .line 270
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/camera/app/ConfigFlow;->initCommonConfigInMainThread(Lcom/transsion/camera/app/common/CommonConfigUtil;)V

    .line 271
    invoke-static {}, Lcom/transsion/camera/utils/FlagUtil;->createInstance()V

    .line 272
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->addAssetsResourcesToContext()V

    .line 274
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v4

    new-instance v5, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v2}, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/CameraApplication;Landroid/content/res/Resources;)V

    const-string v6, "cache_custom_configs"

    invoke-virtual {v4, v5, v6}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 299
    invoke-static {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->init(Landroid/content/Context;)V

    .line 300
    invoke-static {}, Lcom/transsion/camera/utils/manager/CamAssetManager;->getInstance()Lcom/transsion/camera/utils/manager/CamAssetManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/utils/manager/CamAssetManager;->init()V

    if-nez v3, :cond_82

    .line 303
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setLaunchStartTime(I)V

    .line 306
    :cond_82
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v4

    new-instance v5, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/CameraApplication;)V

    const-string v6, "init_dfx"

    invoke-virtual {v4, v5, v6}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 315
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->cacheAndParseAppVersionName(Landroid/content/Context;)V

    .line 317
    new-instance v4, Lcom/transsion/camera/app/CameraApplication$MainHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/transsion/camera/app/CameraApplication$MainHandler;-><init>(Lcom/transsion/camera/app/CameraApplication;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/transsion/camera/app/CameraApplication;->mHandler:Lcom/transsion/camera/app/CameraApplication$MainHandler;

    .line 318
    iget-object v4, p0, Lcom/transsion/camera/app/CameraApplication;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 320
    invoke-super {p0}, Lcom/transsion/camera/app_info/BaseApplication;->onCreate()V

    .line 321
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v4

    new-instance v5, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/CameraApplication;)V

    const-string v6, "cache_common_configs"

    invoke-virtual {v4, v5, v6}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 328
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraAgentFactory;->createCameraAgent(Landroid/content/Context;)V

    .line 330
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v4

    new-instance v5, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, v2}, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/CameraApplication;Landroid/content/res/Resources;)V

    const-string v6, "init_instances"

    invoke-virtual {v4, v5, v6}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v4

    new-instance v5, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0, v2}, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/app/CameraApplication;Landroid/content/res/Resources;)V

    const-string v6, "cache_resources_thread"

    invoke-virtual {v4, v5, v6}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 338
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->cacheLayouts()V

    .line 339
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v4

    new-instance v5, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0, v2}, Lcom/transsion/camera/app/CameraApplication$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/app/CameraApplication;Landroid/content/res/Resources;)V

    const-string v2, "cache_class_sync"

    invoke-virtual {v4, v5, v2}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 345
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->cacheDataStoreFile()V

    .line 346
    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->initDeveloperMode(Landroid/content/Context;)V

    if-eqz v3, :cond_ef

    .line 349
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->registerPackageDataClear()V

    .line 354
    :cond_ef
    sget-object p0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera application execute time:"

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

.method public onTrimMemory(I)V
    .registers 5

    .line 374
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    const/4 p0, 0x1

    .line 375
    const-string v0, "onTrimMemory level:"

    packed-switch p1, :pswitch_data_ce

    .line 398
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

    .line 395
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

    .line 389
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

    .line 392
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

    .line 385
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

    .line 386
    const-string p1, "memory abnormal event"

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/MemoryUtils;->logAvailMemoryAsync(Ljava/lang/String;Z)V

    return-void

    .line 381
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

    .line 382
    const-string p1, "memory abnormal warning"

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/MemoryUtils;->logAvailMemoryAsync(Ljava/lang/String;Z)V

    return-void

    .line 377
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

    .line 378
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
