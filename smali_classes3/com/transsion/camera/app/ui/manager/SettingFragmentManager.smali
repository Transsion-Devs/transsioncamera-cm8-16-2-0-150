.class public Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;
.implements Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/SettingFragmentManager$OnFragmentStateListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mContext:Landroid/content/Context;

.field mEditWaterMarkFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IEditWaterMarkFragmentControl;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field mIGoldWaterMarkFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IGoldWaterMarkFragmentControl;

.field mIRemoteCaptureFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IRemoteCaptureFragmentControl;

.field mIShutterSoundOptionalFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterSoundOptionalFragmentControl;

.field mProWatermarkFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IProWatermarkFragmentControl;

.field private mRTLDirection:Z

.field private mRootLayoutId:I

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

.field private mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

.field protected mSettingUIList:Ljava/util/List;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mStorageSettingProvider:Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;

.field mTuningFeatureFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$ITuningFeatureFragmentControl;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingFragment(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)Lcom/transsion/camera/app/ui/SettingFragment;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSettingFragment(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;Lcom/transsion/camera/app/ui/SettingFragment;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SettingFragmentManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/app/FragmentManager;ILcom/transsion/camera/app/common/IAppUIControl$IEditWaterMarkFragmentControl;Lcom/transsion/camera/app/common/IAppUIControl$IRemoteCaptureFragmentControl;Lcom/transsion/camera/app/common/IAppUIControl$IGoldWaterMarkFragmentControl;Lcom/transsion/camera/app/common/IAppUIControl$IProWatermarkFragmentControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterSoundOptionalFragmentControl;Lcom/transsion/camera/app/common/IAppUIControl$ITuningFeatureFragmentControl;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 12

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingUIList:Ljava/util/List;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mRTLDirection:Z

    .line 79
    iput-object p9, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 80
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mFragmentManager:Landroid/app/FragmentManager;

    .line 81
    iput p2, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mRootLayoutId:I

    .line 82
    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mEditWaterMarkFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IEditWaterMarkFragmentControl;

    .line 83
    iput-object p4, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mIRemoteCaptureFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IRemoteCaptureFragmentControl;

    .line 84
    iput-object p5, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mIGoldWaterMarkFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IGoldWaterMarkFragmentControl;

    .line 85
    iput-object p6, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mProWatermarkFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IProWatermarkFragmentControl;

    .line 86
    iput-object p7, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mIShutterSoundOptionalFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterSoundOptionalFragmentControl;

    .line 87
    iput-object p8, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mTuningFeatureFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$ITuningFeatureFragmentControl;

    .line 88
    iput-object p10, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-void
.end method

.method private filterForNormalCamera(Ljava/util/List;ZZLjava/util/Iterator;)V
    .registers 5

    if-nez p2, :cond_3

    goto :goto_35

    .line 290
    :cond_3
    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_35

    .line 292
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    .line 291
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    .line 292
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object p0

    .line 293
    const-string p2, "key_storage"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 294
    invoke-interface {p4}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 297
    :cond_27
    const-string p2, "key_location"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-nez p3, :cond_3

    .line 298
    invoke-interface {p4}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_35
    :goto_35
    return-void
.end method

.method private filterForSecureCamera(Ljava/util/List;ZLjava/util/Iterator;)V
    .registers 5

    .line 261
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_4a

    .line 263
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    .line 262
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    .line 263
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object p0

    .line 264
    const-string v0, "key_storage"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 265
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 268
    :cond_24
    const-string v0, "key_location"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    if-nez p2, :cond_32

    .line 269
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 272
    :cond_32
    const-string v0, "key_restore_settings"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 273
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 276
    :cond_3e
    const-string v0, "key_secondary_screen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 277
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4a
    return-void
.end method

.method private initSettingUIList(Ljava/util/List;)V
    .registers 5

    .line 319
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    .line 320
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;->setSettingFragmentControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;)V

    .line 321
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    if-nez v1, :cond_2d

    .line 322
    :cond_1b
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V

    .line 323
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 325
    :cond_2d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_34

    .line 326
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 329
    :cond_34
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    if-eqz v1, :cond_43

    .line 330
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 331
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 334
    :cond_43
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mStorageSettingProvider:Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;

    if-eqz v1, :cond_4

    .line 335
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mStorageSettingProvider:Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;

    .line 336
    invoke-interface {v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;->getStorageSettingKey()Ljava/lang/String;

    move-result-object v2

    .line 335
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 337
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mStorageSettingProvider:Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;->getStorageSetting()Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 338
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    goto :goto_4

    :cond_61
    return-void
.end method

.method private setSettingFragmentManager(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)V
    .registers 2

    .line 254
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    if-eqz p0, :cond_7

    .line 255
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/SettingFragment;->setSettingFragmentManager(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)V

    :cond_7
    return-void
.end method

.method private updateFragmentExitAnim()V
    .registers 5

    .line 417
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 418
    sget-object v1, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAnimationEnd size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_5a

    .line 419
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_5a

    .line 424
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 v1, 0x1

    const-string v2, "setting_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 428
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 429
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getExitAnimation(Landroid/content/Context;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4a

    const/4 v3, 0x0

    .line 431
    invoke-virtual {v0, v3, v1, v3, v1}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 433
    :cond_4a
    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 434
    iget v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mRootLayoutId:I

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    const-string v2, "Setting"

    invoke-virtual {v0, v1, p0, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_5a
    :goto_5a
    return-void
.end method

.method private updateScreenFormType(I)V
    .registers 2

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    if-eqz p0, :cond_7

    .line 249
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/SettingFragment;->updateScreenFormType(I)V

    :cond_7
    return-void
.end method


# virtual methods
.method public enterSettingFragment(Landroid/content/Context;)V
    .registers 7

    .line 127
    sget-object v0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[enterSettingFragment] "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mContext:Landroid/content/Context;

    .line 129
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 131
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-virtual {v2, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getEnterAnimation(Landroid/content/Context;)I

    move-result v2

    .line 132
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-virtual {v3, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getExitAnimation(Landroid/content/Context;)I

    move-result p1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_23

    if-eq p1, v3, :cond_23

    .line 134
    invoke-virtual {v1, v2, p1, v2, p1}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 136
    :cond_23
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 137
    const-string v2, "setting_fragment"

    if-lez p1, :cond_4b

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enterSettingFragment size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v2, v0}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 142
    :cond_4b
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 143
    iget p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mRootLayoutId:I

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    const-string v0, "Setting"

    invoke-virtual {v1, p1, p0, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public enterSettingFragmentBottom()V
    .registers 2

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    .line 122
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/SettingFragment;->setShowingSettingBottom(Z)V

    :cond_8
    return-void
.end method

.method public exitFromOtherFragment()V
    .registers 1

    .line 192
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    if-eqz p0, :cond_7

    .line 193
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->exitFromOtherFragment()V

    :cond_7
    return-void
.end method

.method public exitSettingFragment(Ljava/lang/String;)V
    .registers 7

    .line 148
    sget-object v0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[exitSettingFragment] state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    if-nez v1, :cond_20

    .line 150
    const-string p0, "[exitSettingFragment] mSettingFragment == null return"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 154
    :cond_20
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->enterOtherFragment(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 155
    const-string v2, "setting_fragment"

    if-eqz p1, :cond_d9

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_e0

    goto :goto_72

    :sswitch_31
    const-string v3, "key_edit_watermark"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    goto :goto_72

    :cond_3a
    const/4 v4, 0x5

    goto :goto_72

    :sswitch_3c
    const-string v3, "key_remote_capture"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    goto :goto_72

    :cond_45
    const/4 v4, 0x4

    goto :goto_72

    :sswitch_47
    const-string v3, "key_tuning_feature_entrance"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_50

    goto :goto_72

    :cond_50
    const/4 v4, 0x3

    goto :goto_72

    :sswitch_52
    const-string v3, "key_gold_watermark"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5b

    goto :goto_72

    :cond_5b
    const/4 v4, 0x2

    goto :goto_72

    :sswitch_5d
    const-string v3, "key_pro_watermark"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_66

    goto :goto_72

    :cond_66
    move v4, v1

    goto :goto_72

    :sswitch_68
    const-string v3, "key_shutter_sound_optional"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_71

    goto :goto_72

    :cond_71
    const/4 v4, 0x0

    :goto_72
    packed-switch v4, :pswitch_data_fa

    .line 183
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p0, v2, v1}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    return-void

    .line 158
    :pswitch_7b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mEditWaterMarkFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IEditWaterMarkFragmentControl;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IEditWaterMarkFragmentControl;->enterEditWaterMarkFragment(Landroid/app/Fragment;Landroid/content/Context;)V

    return-void

    .line 161
    :pswitch_85
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mIRemoteCaptureFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IRemoteCaptureFragmentControl;

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mRTLDirection:Z

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IRemoteCaptureFragmentControl;->setRTLDirection(Z)V

    .line 162
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mIRemoteCaptureFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IRemoteCaptureFragmentControl;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IRemoteCaptureFragmentControl;->enterRemoteCaptureFragment(Landroid/app/Fragment;Landroid/content/Context;)V

    return-void

    .line 174
    :pswitch_96
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mTuningFeatureFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$ITuningFeatureFragmentControl;

    if-nez p1, :cond_b3

    .line 175
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[exitSettingFragment] enterTuningFeatureFragment failed: mTuningFeatureFragmentControl=null, isLaunchWithDeveloperMode="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLaunchWithDeveloperMode()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 175
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 179
    :cond_b3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$ITuningFeatureFragmentControl;->enterTuningFeatureFragment(Landroid/app/Fragment;Landroid/content/Context;)V

    return-void

    .line 165
    :pswitch_bb
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mIGoldWaterMarkFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IGoldWaterMarkFragmentControl;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IGoldWaterMarkFragmentControl;->enterGoldWaterMarkFragment(Landroid/app/Fragment;Landroid/content/Context;)V

    return-void

    .line 171
    :pswitch_c5
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mProWatermarkFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IProWatermarkFragmentControl;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IProWatermarkFragmentControl;->enterProWaterMarkFragment(Landroid/app/Fragment;Landroid/content/Context;)V

    return-void

    .line 168
    :pswitch_cf
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mIShutterSoundOptionalFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterSoundOptionalFragmentControl;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterSoundOptionalFragmentControl;->enterShutterSoundOptionalFragment(Landroid/app/Fragment;Landroid/content/Context;)V

    return-void

    .line 187
    :cond_d9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p0, v2, v1}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    return-void

    nop

    :sswitch_data_e0
    .sparse-switch
        -0x55cee6fe -> :sswitch_68
        -0x1050408e -> :sswitch_5d
        0x40385125 -> :sswitch_52
        0x5054f049 -> :sswitch_47
        0x5465262d -> :sswitch_3c
        0x7411b24f -> :sswitch_31
    .end sparse-switch

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_cf
        :pswitch_c5
        :pswitch_bb
        :pswitch_96
        :pswitch_85
        :pswitch_7b
    .end packed-switch
.end method

.method public hidePreference(Landroid/preference/Preference;)V
    .registers 2

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    if-eqz p0, :cond_7

    .line 200
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/SettingFragment;->hidePreference(Landroid/preference/Preference;)V

    :cond_7
    return-void
.end method

.method public initSettingFragment()V
    .registers 4

    .line 92
    new-instance v0, Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/SettingFragment;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    .line 93
    sget-object v0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSettingFragment :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/SettingFragment;->setOrientationAnimationListener(Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;)V

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_54

    .line 96
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    iget v2, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mRootLayoutId:I

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/ui/SettingFragment;->setAppUiRootViewId(Lcom/transsion/camera/app/common/IAppUI;I)V

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->updateScreenFormType(I)V

    .line 98
    new-instance v0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager$OnFragmentStateListenerImpl;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager$OnFragmentStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;Lcom/transsion/camera/app/ui/SettingFragment;Lcom/transsion/camera/app/ui/manager/SettingFragmentManager-IA;)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->onOrientationChanged(I)V

    .line 103
    :cond_54
    invoke-direct {p0, p0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->setSettingFragmentManager(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)V

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_24

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_24

    .line 113
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    if-eqz v0, :cond_11

    .line 115
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    goto :goto_11

    :cond_23
    return-void

    .line 110
    :cond_24
    :goto_24
    sget-object p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[notifyCameraOperateActionToUI] mSettingUIList is null or size is 0"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd()V
    .registers 1

    .line 413
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->updateFragmentExitAnim()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 399
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    if-eqz p0, :cond_7

    .line 400
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onOrientationChanged(I)V

    :cond_7
    return-void
.end method

.method public setRTLDirection(Z)V
    .registers 2

    .line 224
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mRTLDirection:Z

    .line 225
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    if-eqz p0, :cond_9

    .line 226
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setRTLDirection(Z)V

    :cond_9
    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 220
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    return-void
.end method

.method public setSettingUIList(Ljava/util/List;Ljava/lang/String;ZZZI)V
    .registers 8

    .line 234
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->unInitSettingUIs()V

    .line 235
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    if-eqz p3, :cond_d

    .line 237
    invoke-direct {p0, p1, p5, v0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->filterForSecureCamera(Ljava/util/List;ZLjava/util/Iterator;)V

    goto :goto_10

    .line 239
    :cond_d
    invoke-direct {p0, p1, p4, p5, v0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->filterForNormalCamera(Ljava/util/List;ZZLjava/util/Iterator;)V

    .line 241
    :goto_10
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->initSettingUIList(Ljava/util/List;)V

    .line 242
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingUIList:Ljava/util/List;

    .line 243
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-virtual {p3, p1, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setSettingUIList(Ljava/util/List;Ljava/lang/String;)V

    .line 244
    invoke-direct {p0, p6}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->updateScreenFormType(I)V

    return-void
.end method

.method public setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V
    .registers 2

    .line 393
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    if-eqz p0, :cond_7

    .line 394
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    :cond_7
    return-void
.end method

.method public setStorageSettingProvider(Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;)V
    .registers 2

    .line 216
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mStorageSettingProvider:Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;

    return-void
.end method

.method public showPreference(Landroid/preference/Preference;)V
    .registers 2

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    if-eqz p0, :cond_7

    .line 207
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/SettingFragment;->showPreference(Landroid/preference/Preference;)V

    :cond_7
    return-void
.end method

.method public unInit()V
    .registers 3

    .line 313
    sget-object v0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "settingFragment unInit start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->unInitSettingUIs()V

    .line 315
    const-string p0, "settingFragment unInit end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public unInitSettingUIs()V
    .registers 3

    .line 304
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_25

    .line 305
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    .line 306
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_10

    .line 308
    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_25
    return-void
.end method
