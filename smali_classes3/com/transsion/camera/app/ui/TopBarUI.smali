.class public Lcom/transsion/camera/app/ui/TopBarUI;
.super Lcom/transsion/camera/app/ui/AbstractTopBarUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentScreenFormType:I

.field private mLeftSettingUIs:Ljava/util/List;

.field private mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

.field private final mPopSettingSupport:Z

.field private mRightSettingUIs:Ljava/util/List;

.field private mSettingUIs:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TopBarUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/TopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopupOptionManager;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)V
    .registers 5

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopupOptionManager;)V

    .line 53
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mPopSettingSupported:Z

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mPopSettingSupport:Z

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mContext:Landroid/content/Context;

    .line 55
    iput-object p4, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    return-void
.end method

.method private needUpdateTopBarLayout(I)Z
    .registers 7

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_12

    const/16 v3, 0x5a

    if-eq p1, v3, :cond_44

    const/16 v3, 0x10e

    if-eq p1, v3, :cond_44

    :cond_12
    const/4 v3, 0x5

    const/4 v4, 0x4

    if-eq v0, v4, :cond_18

    if-ne v0, v3, :cond_1f

    :cond_18
    if-eqz p1, :cond_44

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_1f

    goto :goto_44

    .line 372
    :cond_1f
    iget p1, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mCurrentScreenFormType:I

    if-eq p1, v3, :cond_25

    if-ne p1, v4, :cond_2d

    :cond_25
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 373
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    if-eq p1, v2, :cond_44

    :cond_2d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 374
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    if-eq p1, v3, :cond_3d

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 375
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    if-ne p1, v4, :cond_42

    :cond_3d
    iget p0, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mCurrentScreenFormType:I

    if-ne p0, v2, :cond_42

    goto :goto_44

    :cond_42
    const/4 p0, 0x1

    return p0

    :cond_44
    :goto_44
    return v1
.end method


# virtual methods
.method protected getPopupAnimationStrategy()Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;
    .registers 1

    .line 60
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->getPopupAnimationStrategy()Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(I)V
    .registers 5

    .line 325
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->onOrientationChanged(I)V

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v0, :cond_c

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->onOrientationChanged(I)V

    .line 329
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v0, :cond_15

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->onOrientationChanged(I)V

    .line 332
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v0, :cond_1e

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->onOrientationChanged(I)V

    .line 335
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    if-eqz v0, :cond_4b

    .line 336
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4b

    .line 337
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/TopBarUI;->needUpdateTopBarLayout(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/ui/TopBarUI;->updateTopBarLayout(Ljava/util/List;Z)V

    goto :goto_4b

    .line 340
    :cond_46
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/TopBarUI;->updateTopBarLayout(Ljava/util/List;Z)V

    .line 343
    :cond_4b
    :goto_4b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_76

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarItemUIs:Ljava/util/List;

    if-eqz v0, :cond_76

    .line 344
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_76

    .line 345
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/TopBarUI;->needUpdateTopBarLayout(I)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarItemUIs:Ljava/util/List;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/ui/TopBarUI;->updateLeftTopBarLayout(Ljava/util/List;Z)V

    goto :goto_76

    .line 348
    :cond_71
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarItemUIs:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/TopBarUI;->updateLeftTopBarLayout(Ljava/util/List;Z)V

    .line 351
    :cond_76
    :goto_76
    iget-object v0, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarItemUIs:Ljava/util/List;

    if-eqz v0, :cond_a1

    .line 352
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a1

    .line 353
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/TopBarUI;->needUpdateTopBarLayout(I)Z

    move-result p1

    if-eqz p1, :cond_9c

    .line 354
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarItemUIs:Ljava/util/List;

    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/ui/TopBarUI;->updateRightTopBarLayout(Ljava/util/List;Z)V

    goto :goto_a1

    .line 356
    :cond_9c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarItemUIs:Ljava/util/List;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/TopBarUI;->updateRightTopBarLayout(Ljava/util/List;Z)V

    .line 359
    :cond_a1
    :goto_a1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mCurrentScreenFormType:I

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 308
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->onScreenFormChanged(IZ)V

    .line 309
    iget-object p1, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_23

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    if-eqz p1, :cond_23

    .line 310
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_23

    .line 311
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/TopBarUI;->updateTopBarLayout(Ljava/util/List;Z)V

    .line 313
    :cond_23
    iget-object p1, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_42

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarItemUIs:Ljava/util/List;

    if-eqz p1, :cond_42

    .line 314
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_42

    .line 315
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarItemUIs:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/TopBarUI;->updateLeftTopBarLayout(Ljava/util/List;Z)V

    .line 317
    :cond_42
    iget-object p1, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_61

    iget-object p1, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_61

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarItemUIs:Ljava/util/List;

    if-eqz p1, :cond_61

    .line 318
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_61

    .line 319
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarItemUIs:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/TopBarUI;->updateRightTopBarLayout(Ljava/util/List;Z)V

    :cond_61
    return-void
.end method

.method public pause()V
    .registers 1

    .line 303
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/TopBarUI;->recover()V

    return-void
.end method

.method public playLivePhotoLottieAnimation(I)V
    .registers 6

    .line 429
    iget-object v0, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mLeftSettingUIs:Ljava/util/List;

    const-string v1, "key_live_photo"

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 430
    iget-object v0, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mLeftSettingUIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 431
    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 432
    invoke-interface {v2, p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setAnimation(I)V

    return-void

    .line 437
    :cond_2c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mRightSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_56

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_56

    .line 438
    iget-object v0, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mRightSettingUIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 439
    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 440
    invoke-interface {v2, p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setAnimation(I)V

    return-void

    .line 446
    :cond_56
    iget-object v0, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_7f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 447
    iget-object p0, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mSettingUIs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_66
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 448
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 449
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setAnimation(I)V

    :cond_7f
    return-void
.end method

.method public recover()V
    .registers 5

    .line 391
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    if-nez v0, :cond_6

    goto/16 :goto_97

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    .line 394
    :goto_8
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-ge v1, v2, :cond_2a

    .line 395
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_21

    goto :goto_27

    .line 397
    :cond_21
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 398
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 400
    :cond_2a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mSettingUIs:Ljava/util/List;

    if-eqz v1, :cond_4e

    move v1, v0

    .line 401
    :goto_2f
    iget-object v2, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mSettingUIs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4e

    .line 402
    iget-object v2, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mSettingUIs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 404
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 405
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 409
    :cond_4e
    iget-object v1, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mLeftSettingUIs:Ljava/util/List;

    if-eqz v1, :cond_73

    move v1, v0

    .line 410
    :goto_53
    iget-object v2, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mLeftSettingUIs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_73

    .line 411
    iget-object v2, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mLeftSettingUIs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_6a

    goto :goto_70

    .line 413
    :cond_6a
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 414
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    :goto_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 417
    :cond_73
    iget-object v1, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mRightSettingUIs:Ljava/util/List;

    if-eqz v1, :cond_97

    .line 418
    :goto_77
    iget-object v1, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mRightSettingUIs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_97

    .line 419
    iget-object v1, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mRightSettingUIs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_8e

    goto :goto_94

    .line 421
    :cond_8e
    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 422
    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    :goto_94
    add-int/lit8 v0, v0, 0x1

    goto :goto_77

    :cond_97
    :goto_97
    return-void
.end method

.method public resume()V
    .registers 1

    .line 298
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->showTopBarContainer()V

    .line 299
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/TopBarUI;->recover()V

    return-void
.end method

.method protected updateLeftTopBarLayout(Ljava/util/List;Z)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 143
    invoke-super/range {p0 .. p2}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateLeftTopBarLayout(Ljava/util/List;Z)V

    .line 144
    iput-object v1, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mLeftSettingUIs:Ljava/util/List;

    .line 145
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-nez v2, :cond_15

    .line 146
    sget-object v0, Lcom/transsion/camera/app/ui/TopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mLeftTopBarContainer is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_15
    if-eqz v2, :cond_f1

    .line 153
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_30

    .line 155
    iget v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    const/16 v6, 0x5a

    if-eq v2, v6, :cond_2e

    const/16 v6, 0x10e

    if-eq v2, v6, :cond_2e

    :cond_2c
    :goto_2c
    move v2, v3

    goto :goto_38

    :cond_2e
    move v2, v5

    goto :goto_38

    :cond_30
    const/4 v6, 0x4

    if-eq v2, v6, :cond_2c

    const/4 v6, 0x5

    if-ne v2, v6, :cond_37

    goto :goto_2c

    :cond_37
    move v2, v4

    .line 170
    :goto_38
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 171
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    move v8, v4

    :goto_42
    if-ge v8, v6, :cond_eb

    .line 173
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 174
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v9, :cond_52

    .line 175
    invoke-interface {v10, v9}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setIAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    :cond_52
    if-eqz v2, :cond_65

    if-eq v2, v5, :cond_5f

    if-eq v2, v3, :cond_59

    goto :goto_6a

    .line 185
    :cond_59
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-interface {v10, v9}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V

    goto :goto_6a

    .line 182
    :cond_5f
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-interface {v10, v9}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V

    goto :goto_6a

    .line 179
    :cond_65
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-interface {v10, v9}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V

    .line 190
    :goto_6a
    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 191
    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_84

    .line 193
    iget-object v11, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    sget v13, Lcom/transsion/camera/R$layout;->top_bar_setting_item:I

    sget v14, Lcom/transsion/camera/R$id;->top_setting_item_img:I

    sget v15, Lcom/transsion/camera/R$id;->top_setting_img_selling_point:I

    sget v16, Lcom/transsion/camera/R$id;->top_setting_selling_point_layer:I

    invoke-interface/range {v10 .. v16}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIII)Landroid/view/View;

    move-result-object v11

    .line 199
    :cond_84
    iget-object v12, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    invoke-interface {v10, v12}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->onScreenSupply(Z)V

    .line 200
    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setupEntryView()V

    .line 201
    iget-object v12, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    invoke-interface {v10, v12}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setMasterGuideUIManager(Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;)V

    .line 202
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_a1

    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getIsShouldGone()Z

    move-result v12

    if-eqz v12, :cond_a7

    :cond_a1
    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->needItemAnimation()Z

    move-result v12

    if-eqz v12, :cond_b9

    .line 203
    :cond_a7
    invoke-interface {v7, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-boolean v12, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mPopSettingSupport:Z

    if-eqz v12, :cond_b6

    .line 205
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v12

    sub-int/2addr v12, v5

    invoke-interface {v10, v12}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPositionInTopBar(I)V

    .line 207
    :cond_b6
    invoke-interface {v10, v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setDirection(I)V

    .line 209
    :cond_b9
    iget-object v12, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_e7

    iget-object v12, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_e7

    iget-object v12, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 210
    invoke-virtual {v12}, Lcom/transsion/camera/app/ui/PopupOptionManager;->getCurrentShowView()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_e7

    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v9}, Lcom/transsion/camera/app/ui/PopupOptionManager;->needShowPopUpOption()Z

    move-result v9

    if-eqz v9, :cond_e7

    if-eqz p2, :cond_e7

    .line 211
    invoke-interface {v10, v11, v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->onEntryViewClick(Landroid/view/View;Z)Z

    .line 212
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v9, v4}, Lcom/transsion/camera/app/ui/PopupOptionManager;->setNeedShowPopUpOption(Z)V

    :cond_e7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_42

    .line 215
    :cond_eb
    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    .line 216
    invoke-virtual {v0, v7, v5}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->updateTopBar(Ljava/util/Map;I)V

    return-void

    .line 150
    :cond_f1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mLeftTopBarContainer should be instance of TopBarContainer!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected updateRightTopBarLayout(Ljava/util/List;Z)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 221
    invoke-super/range {p0 .. p2}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateRightTopBarLayout(Ljava/util/List;Z)V

    .line 222
    iput-object v1, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mRightSettingUIs:Ljava/util/List;

    .line 223
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-nez v2, :cond_15

    .line 224
    sget-object v0, Lcom/transsion/camera/app/ui/TopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mTopBarContainer is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_15
    if-eqz v2, :cond_f1

    .line 231
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_30

    .line 233
    iget v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    const/16 v6, 0x5a

    if-eq v2, v6, :cond_2e

    const/16 v6, 0x10e

    if-eq v2, v6, :cond_2e

    :cond_2c
    :goto_2c
    move v2, v4

    goto :goto_38

    :cond_2e
    move v2, v5

    goto :goto_38

    :cond_30
    const/4 v6, 0x4

    if-eq v2, v6, :cond_2c

    const/4 v6, 0x5

    if-ne v2, v6, :cond_37

    goto :goto_2c

    :cond_37
    move v2, v3

    .line 248
    :goto_38
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 249
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    move v8, v3

    :goto_42
    if-ge v8, v6, :cond_eb

    .line 251
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 252
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v9, :cond_52

    .line 253
    invoke-interface {v10, v9}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setIAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    :cond_52
    if-eqz v2, :cond_65

    if-eq v2, v5, :cond_5f

    if-eq v2, v4, :cond_59

    goto :goto_6a

    .line 263
    :cond_59
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-interface {v10, v9}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V

    goto :goto_6a

    .line 260
    :cond_5f
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-interface {v10, v9}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V

    goto :goto_6a

    .line 257
    :cond_65
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-interface {v10, v9}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V

    .line 268
    :goto_6a
    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 269
    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_84

    .line 271
    iget-object v11, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    sget v13, Lcom/transsion/camera/R$layout;->top_bar_setting_item:I

    sget v14, Lcom/transsion/camera/R$id;->top_setting_item_img:I

    sget v15, Lcom/transsion/camera/R$id;->top_setting_img_selling_point:I

    sget v16, Lcom/transsion/camera/R$id;->top_setting_selling_point_layer:I

    invoke-interface/range {v10 .. v16}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIII)Landroid/view/View;

    move-result-object v11

    .line 277
    :cond_84
    iget-object v12, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    invoke-interface {v10, v12}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->onScreenSupply(Z)V

    .line 278
    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setupEntryView()V

    .line 279
    iget-object v12, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    invoke-interface {v10, v12}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setMasterGuideUIManager(Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;)V

    .line 280
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_a1

    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getIsShouldGone()Z

    move-result v12

    if-eqz v12, :cond_a7

    :cond_a1
    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->needItemAnimation()Z

    move-result v12

    if-eqz v12, :cond_b9

    .line 281
    :cond_a7
    invoke-interface {v7, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-boolean v12, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mPopSettingSupport:Z

    if-eqz v12, :cond_b6

    .line 283
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v12

    sub-int/2addr v12, v5

    invoke-interface {v10, v12}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPositionInTopBar(I)V

    .line 285
    :cond_b6
    invoke-interface {v10, v4}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setDirection(I)V

    .line 287
    :cond_b9
    iget-object v12, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_e7

    iget-object v12, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_e7

    iget-object v12, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 288
    invoke-virtual {v12}, Lcom/transsion/camera/app/ui/PopupOptionManager;->getCurrentShowView()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_e7

    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v9}, Lcom/transsion/camera/app/ui/PopupOptionManager;->needShowPopUpOption()Z

    move-result v9

    if-eqz v9, :cond_e7

    if-eqz p2, :cond_e7

    .line 289
    invoke-interface {v10, v11, v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->onEntryViewClick(Landroid/view/View;Z)Z

    .line 290
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v9, v3}, Lcom/transsion/camera/app/ui/PopupOptionManager;->setNeedShowPopUpOption(Z)V

    :cond_e7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_42

    .line 293
    :cond_eb
    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    .line 294
    invoke-virtual {v0, v7, v4}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->updateTopBar(Ljava/util/Map;I)V

    return-void

    .line 228
    :cond_f1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mRightTopBarContainer should be instance of TopBarContainer!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected updateTopBarLayout(Ljava/util/List;Z)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 65
    invoke-super/range {p0 .. p2}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateTopBarLayout(Ljava/util/List;Z)V

    .line 66
    iput-object v1, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mSettingUIs:Ljava/util/List;

    .line 67
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-nez v2, :cond_15

    .line 68
    sget-object v0, Lcom/transsion/camera/app/ui/TopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mTopBarContainer is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_15
    if-eqz v2, :cond_106

    .line 76
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_30

    .line 78
    iget v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    const/16 v6, 0x5a

    if-eq v2, v6, :cond_2e

    const/16 v6, 0x10e

    if-eq v2, v6, :cond_2e

    :cond_2c
    :goto_2c
    move v2, v3

    goto :goto_38

    :cond_2e
    move v2, v5

    goto :goto_38

    :cond_30
    const/4 v6, 0x4

    if-eq v2, v6, :cond_2c

    const/4 v6, 0x5

    if-ne v2, v6, :cond_37

    goto :goto_2c

    :cond_37
    move v2, v4

    .line 92
    :goto_38
    sget-object v6, Lcom/transsion/camera/app/ui/TopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[updateTopBarLayout]  mOrientation = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 93
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 94
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    move v8, v4

    :goto_5a
    if-ge v8, v6, :cond_100

    .line 96
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 97
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v9, :cond_6a

    .line 98
    invoke-interface {v10, v9}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setIAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    :cond_6a
    if-eqz v2, :cond_7d

    if-eq v2, v5, :cond_77

    if-eq v2, v3, :cond_71

    goto :goto_82

    .line 108
    :cond_71
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-interface {v10, v9}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V

    goto :goto_82

    .line 105
    :cond_77
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-interface {v10, v9}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V

    goto :goto_82

    .line 102
    :cond_7d
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-interface {v10, v9}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V

    .line 113
    :goto_82
    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 114
    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_9c

    .line 116
    iget-object v11, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    sget v13, Lcom/transsion/camera/R$layout;->top_bar_setting_item:I

    sget v14, Lcom/transsion/camera/R$id;->top_setting_item_img:I

    sget v15, Lcom/transsion/camera/R$id;->top_setting_img_selling_point:I

    sget v16, Lcom/transsion/camera/R$id;->top_setting_selling_point_layer:I

    invoke-interface/range {v10 .. v16}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIII)Landroid/view/View;

    move-result-object v11

    .line 122
    :cond_9c
    iget-object v12, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    invoke-interface {v10, v12}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->onScreenSupply(Z)V

    .line 123
    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setupEntryView()V

    .line 124
    iget-object v12, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    invoke-interface {v10, v12}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setMasterGuideUIManager(Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;)V

    .line 125
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_b9

    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getIsShouldGone()Z

    move-result v12

    if-eqz v12, :cond_bf

    :cond_b9
    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->needItemAnimation()Z

    move-result v12

    if-eqz v12, :cond_ce

    .line 126
    :cond_bf
    invoke-interface {v7, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-boolean v12, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mPopSettingSupport:Z

    if-nez v12, :cond_ce

    .line 128
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v12

    sub-int/2addr v12, v5

    invoke-interface {v10, v12}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPositionInTopBar(I)V

    .line 131
    :cond_ce
    iget-object v12, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_fc

    iget-object v12, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_fc

    iget-object v12, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 132
    invoke-virtual {v12}, Lcom/transsion/camera/app/ui/PopupOptionManager;->getCurrentShowView()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_fc

    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v9}, Lcom/transsion/camera/app/ui/PopupOptionManager;->needShowPopUpOption()Z

    move-result v9

    if-eqz v9, :cond_fc

    if-eqz p2, :cond_fc

    .line 133
    invoke-interface {v10, v11, v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->onEntryViewClick(Landroid/view/View;Z)Z

    .line 134
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v9, v4}, Lcom/transsion/camera/app/ui/PopupOptionManager;->setNeedShowPopUpOption(Z)V

    :cond_fc
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5a

    .line 137
    :cond_100
    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    .line 138
    invoke-virtual {v0, v7, v4}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->updateTopBar(Ljava/util/Map;I)V

    return-void

    .line 72
    :cond_106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mTopBarContainer should be instance of TopBarContainer!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
