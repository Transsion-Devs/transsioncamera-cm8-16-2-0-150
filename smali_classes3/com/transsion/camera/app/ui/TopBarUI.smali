.class public Lcom/transsion/camera/app/ui/TopBarUI;
.super Lcom/transsion/camera/app/ui/AbstractTopBarUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentScreenFormType:I

.field private mIconLowLightColor:I

.field private mIconOffColor:I

.field private mIconOnColor:I

.field private mLeftSettingUIs:Ljava/util/List;

.field private mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

.field private final mPopSettingSupport:Z

.field private mRightSettingUIs:Ljava/util/List;

.field private mSettingUIs:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TopBarUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/TopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopupOptionManager;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)V
    .registers 5

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopupOptionManager;)V

    .line 55
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mPopSettingSupported:Z

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mPopSettingSupport:Z

    .line 56
    iput-object p1, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mContext:Landroid/content/Context;

    .line 57
    iput-object p4, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    .line 58
    sget p2, Lcom/transsion/camera/R$color;->top_bar_animation_icon_on:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mIconOnColor:I

    .line 59
    sget p2, Lcom/transsion/camera/R$color;->top_bar_animation_icon_off:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mIconOffColor:I

    .line 60
    sget p2, Lcom/transsion/camera/R$color;->top_bar_animation_icon_low_light:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mIconLowLightColor:I

    return-void
.end method

.method private needUpdateTopBarLayout(I)Z
    .registers 7

    .line 372
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

    .line 380
    :cond_1f
    iget p1, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mCurrentScreenFormType:I

    if-eq p1, v3, :cond_25

    if-ne p1, v4, :cond_2d

    :cond_25
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 381
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    if-eq p1, v2, :cond_44

    :cond_2d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 382
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    if-eq p1, v3, :cond_3d

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 383
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

    .line 65
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->getPopupAnimationStrategy()Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(I)V
    .registers 5

    .line 333
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->onOrientationChanged(I)V

    .line 334
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v0, :cond_c

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->onOrientationChanged(I)V

    .line 337
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v0, :cond_15

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->onOrientationChanged(I)V

    .line 340
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v0, :cond_1e

    .line 341
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->onOrientationChanged(I)V

    .line 343
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

    .line 344
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4b

    .line 345
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/TopBarUI;->needUpdateTopBarLayout(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/ui/TopBarUI;->updateTopBarLayout(Ljava/util/List;Z)V

    goto :goto_4b

    .line 348
    :cond_46
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/TopBarUI;->updateTopBarLayout(Ljava/util/List;Z)V

    .line 351
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

    .line 352
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_76

    .line 353
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/TopBarUI;->needUpdateTopBarLayout(I)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 354
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarItemUIs:Ljava/util/List;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/ui/TopBarUI;->updateLeftTopBarLayout(Ljava/util/List;Z)V

    goto :goto_76

    .line 356
    :cond_71
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarItemUIs:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/TopBarUI;->updateLeftTopBarLayout(Ljava/util/List;Z)V

    .line 359
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

    .line 360
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a1

    .line 361
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/TopBarUI;->needUpdateTopBarLayout(I)Z

    move-result p1

    if-eqz p1, :cond_9c

    .line 362
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarItemUIs:Ljava/util/List;

    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/ui/TopBarUI;->updateRightTopBarLayout(Ljava/util/List;Z)V

    goto :goto_a1

    .line 364
    :cond_9c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarItemUIs:Ljava/util/List;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/TopBarUI;->updateRightTopBarLayout(Ljava/util/List;Z)V

    .line 367
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

    .line 316
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->onScreenFormChanged(IZ)V

    .line 317
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

    .line 318
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_23

    .line 319
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/TopBarUI;->updateTopBarLayout(Ljava/util/List;Z)V

    .line 321
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

    .line 322
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_42

    .line 323
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarItemUIs:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/TopBarUI;->updateLeftTopBarLayout(Ljava/util/List;Z)V

    .line 325
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

    .line 326
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_61

    .line 327
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarItemUIs:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/TopBarUI;->updateRightTopBarLayout(Ljava/util/List;Z)V

    :cond_61
    return-void
.end method

.method public pause()V
    .registers 1

    .line 311
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/TopBarUI;->recover()V

    return-void
.end method

.method public playLivePhotoLottieAnimation(I)V
    .registers 6

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mLeftSettingUIs:Ljava/util/List;

    const-string v1, "key_live_photo"

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 438
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

    .line 439
    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 440
    invoke-interface {v2, p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setAnimation(I)V

    return-void

    .line 445
    :cond_2c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mRightSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_56

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_56

    .line 446
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

    .line 447
    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 448
    invoke-interface {v2, p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setAnimation(I)V

    return-void

    .line 454
    :cond_56
    iget-object v0, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_7f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 455
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

    .line 456
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 457
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setAnimation(I)V

    :cond_7f
    return-void
.end method

.method public recover()V
    .registers 5

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    if-nez v0, :cond_6

    goto/16 :goto_97

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    .line 402
    :goto_8
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-ge v1, v2, :cond_2a

    .line 403
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_21

    goto :goto_27

    .line 405
    :cond_21
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 406
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 408
    :cond_2a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mSettingUIs:Ljava/util/List;

    if-eqz v1, :cond_4e

    move v1, v0

    .line 409
    :goto_2f
    iget-object v2, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mSettingUIs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4e

    .line 410
    iget-object v2, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mSettingUIs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 412
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 413
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 417
    :cond_4e
    iget-object v1, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mLeftSettingUIs:Ljava/util/List;

    if-eqz v1, :cond_73

    move v1, v0

    .line 418
    :goto_53
    iget-object v2, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mLeftSettingUIs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_73

    .line 419
    iget-object v2, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mLeftSettingUIs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_6a

    goto :goto_70

    .line 421
    :cond_6a
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 422
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    :goto_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 425
    :cond_73
    iget-object v1, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mRightSettingUIs:Ljava/util/List;

    if-eqz v1, :cond_97

    .line 426
    :goto_77
    iget-object v1, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mRightSettingUIs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_97

    .line 427
    iget-object v1, p0, Lcom/transsion/camera/app/ui/TopBarUI;->mRightSettingUIs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_8e

    goto :goto_94

    .line 429
    :cond_8e
    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 430
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

    .line 306
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->showTopBarContainer()V

    .line 307
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/TopBarUI;->recover()V

    return-void
.end method

.method protected updateLeftTopBarLayout(Ljava/util/List;Z)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 149
    invoke-super/range {p0 .. p2}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateLeftTopBarLayout(Ljava/util/List;Z)V

    .line 150
    iput-object v1, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mLeftSettingUIs:Ljava/util/List;

    .line 151
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-nez v2, :cond_15

    .line 152
    sget-object v0, Lcom/transsion/camera/app/ui/TopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mLeftTopBarContainer is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_15
    if-eqz v2, :cond_103

    .line 159
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_30

    .line 161
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

    .line 176
    :goto_38
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 177
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    move v8, v4

    :goto_42
    if-ge v8, v6, :cond_fd

    .line 179
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 180
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v9, :cond_52

    .line 181
    invoke-interface {v10, v9}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setIAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    :cond_52
    if-eqz v2, :cond_65

    if-eq v2, v5, :cond_5f

    if-eq v2, v3, :cond_59

    goto :goto_6a

    .line 191
    :cond_59
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-interface {v10, v9}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V

    goto :goto_6a

    .line 188
    :cond_5f
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-interface {v10, v9}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V

    goto :goto_6a

    .line 185
    :cond_65
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-interface {v10, v9}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V

    .line 196
    :goto_6a
    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 197
    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v11

    .line 198
    iget v12, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mIconOnColor:I

    iget v13, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mIconOffColor:I

    iget v14, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mIconLowLightColor:I

    invoke-interface {v10, v12, v13, v14}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->initIconColor(III)V

    if-nez v11, :cond_96

    .line 200
    iget-object v11, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    .line 201
    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->isSellingPointAndShow()Z

    move-result v13

    if-eqz v13, :cond_8a

    sget v13, Lcom/transsion/camera/R$layout;->top_bar_setting_selling_point_layout:I

    goto :goto_8c

    :cond_8a
    sget v13, Lcom/transsion/camera/R$layout;->top_bar_setting_item:I

    :goto_8c
    sget v14, Lcom/transsion/camera/R$id;->top_setting_item_img:I

    sget v15, Lcom/transsion/camera/R$id;->top_setting_img_selling_point:I

    const/16 v16, -0x1

    .line 200
    invoke-interface/range {v10 .. v16}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIII)Landroid/view/View;

    move-result-object v11

    .line 206
    :cond_96
    iget-object v12, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    invoke-interface {v10, v12, v4}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->onScreenSupply(ZZ)V

    .line 207
    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setupEntryView()V

    .line 208
    iget-object v12, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    invoke-interface {v10, v12}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setMasterGuideUIManager(Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;)V

    .line 209
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_b3

    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getIsShouldGone()Z

    move-result v12

    if-eqz v12, :cond_b9

    :cond_b3
    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->needItemAnimation()Z

    move-result v12

    if-eqz v12, :cond_cb

    .line 210
    :cond_b9
    invoke-interface {v7, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-boolean v12, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mPopSettingSupport:Z

    if-eqz v12, :cond_c8

    .line 212
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v12

    sub-int/2addr v12, v5

    invoke-interface {v10, v12}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPositionInTopBar(I)V

    .line 214
    :cond_c8
    invoke-interface {v10, v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setDirection(I)V

    .line 216
    :cond_cb
    iget-object v12, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_f9

    iget-object v12, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_f9

    iget-object v12, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 217
    invoke-virtual {v12}, Lcom/transsion/camera/app/ui/PopupOptionManager;->getCurrentShowView()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_f9

    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v9}, Lcom/transsion/camera/app/ui/PopupOptionManager;->needShowPopUpOption()Z

    move-result v9

    if-eqz v9, :cond_f9

    if-eqz p2, :cond_f9

    .line 218
    invoke-interface {v10, v11, v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->onEntryViewClick(Landroid/view/View;Z)Z

    .line 219
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v9, v4}, Lcom/transsion/camera/app/ui/PopupOptionManager;->setNeedShowPopUpOption(Z)V

    :cond_f9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_42

    .line 222
    :cond_fd
    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    .line 223
    invoke-virtual {v0, v7, v5}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->updateTopBar(Ljava/util/Map;I)V

    return-void

    .line 156
    :cond_103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mLeftTopBarContainer should be instance of TopBarContainer!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected updateRightTopBarLayout(Ljava/util/List;Z)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 228
    invoke-super/range {p0 .. p2}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateRightTopBarLayout(Ljava/util/List;Z)V

    .line 229
    iput-object v1, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mRightSettingUIs:Ljava/util/List;

    .line 230
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-nez v2, :cond_15

    .line 231
    sget-object v0, Lcom/transsion/camera/app/ui/TopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mTopBarContainer is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_15
    if-eqz v2, :cond_103

    .line 238
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_30

    .line 240
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

    .line 255
    :goto_38
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 256
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    move v8, v3

    :goto_42
    if-ge v8, v6, :cond_fd

    .line 258
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 259
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v9, :cond_52

    .line 260
    invoke-interface {v10, v9}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setIAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    :cond_52
    if-eqz v2, :cond_65

    if-eq v2, v5, :cond_5f

    if-eq v2, v4, :cond_59

    goto :goto_6a

    .line 270
    :cond_59
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-interface {v10, v9}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V

    goto :goto_6a

    .line 267
    :cond_5f
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-interface {v10, v9}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V

    goto :goto_6a

    .line 264
    :cond_65
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-interface {v10, v9}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V

    .line 275
    :goto_6a
    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 276
    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v11

    .line 277
    iget v12, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mIconOnColor:I

    iget v13, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mIconOffColor:I

    iget v14, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mIconLowLightColor:I

    invoke-interface {v10, v12, v13, v14}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->initIconColor(III)V

    if-nez v11, :cond_96

    .line 279
    iget-object v11, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    .line 280
    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->isSellingPointAndShow()Z

    move-result v13

    if-eqz v13, :cond_8a

    sget v13, Lcom/transsion/camera/R$layout;->top_bar_setting_selling_point_layout:I

    goto :goto_8c

    :cond_8a
    sget v13, Lcom/transsion/camera/R$layout;->top_bar_setting_item:I

    :goto_8c
    sget v14, Lcom/transsion/camera/R$id;->top_setting_item_img:I

    sget v15, Lcom/transsion/camera/R$id;->top_setting_img_selling_point:I

    const/16 v16, -0x1

    .line 279
    invoke-interface/range {v10 .. v16}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIII)Landroid/view/View;

    move-result-object v11

    .line 285
    :cond_96
    iget-object v12, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    invoke-interface {v10, v12, v3}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->onScreenSupply(ZZ)V

    .line 286
    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setupEntryView()V

    .line 287
    iget-object v12, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    invoke-interface {v10, v12}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setMasterGuideUIManager(Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;)V

    .line 288
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_b3

    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getIsShouldGone()Z

    move-result v12

    if-eqz v12, :cond_b9

    :cond_b3
    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->needItemAnimation()Z

    move-result v12

    if-eqz v12, :cond_cb

    .line 289
    :cond_b9
    invoke-interface {v7, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-boolean v12, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mPopSettingSupport:Z

    if-eqz v12, :cond_c8

    .line 291
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v12

    sub-int/2addr v12, v5

    invoke-interface {v10, v12}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPositionInTopBar(I)V

    .line 293
    :cond_c8
    invoke-interface {v10, v4}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setDirection(I)V

    .line 295
    :cond_cb
    iget-object v12, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_f9

    iget-object v12, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_f9

    iget-object v12, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 296
    invoke-virtual {v12}, Lcom/transsion/camera/app/ui/PopupOptionManager;->getCurrentShowView()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_f9

    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v9}, Lcom/transsion/camera/app/ui/PopupOptionManager;->needShowPopUpOption()Z

    move-result v9

    if-eqz v9, :cond_f9

    if-eqz p2, :cond_f9

    .line 297
    invoke-interface {v10, v11, v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->onEntryViewClick(Landroid/view/View;Z)Z

    .line 298
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v9, v3}, Lcom/transsion/camera/app/ui/PopupOptionManager;->setNeedShowPopUpOption(Z)V

    :cond_f9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_42

    .line 301
    :cond_fd
    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    .line 302
    invoke-virtual {v0, v7, v4}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->updateTopBar(Ljava/util/Map;I)V

    return-void

    .line 235
    :cond_103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mRightTopBarContainer should be instance of TopBarContainer!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected updateTopBarLayout(Ljava/util/List;Z)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 70
    invoke-super/range {p0 .. p2}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateTopBarLayout(Ljava/util/List;Z)V

    .line 71
    iput-object v1, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mSettingUIs:Ljava/util/List;

    .line 72
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-nez v2, :cond_15

    .line 73
    sget-object v0, Lcom/transsion/camera/app/ui/TopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mTopBarContainer is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_15
    if-eqz v2, :cond_118

    .line 81
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_30

    .line 83
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

    .line 97
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

    .line 98
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 99
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    move v8, v4

    :goto_5a
    if-ge v8, v6, :cond_112

    .line 101
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 102
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v9, :cond_6a

    .line 103
    invoke-interface {v10, v9}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setIAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    :cond_6a
    if-eqz v2, :cond_7d

    if-eq v2, v5, :cond_77

    if-eq v2, v3, :cond_71

    goto :goto_82

    .line 113
    :cond_71
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-interface {v10, v9}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V

    goto :goto_82

    .line 110
    :cond_77
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-interface {v10, v9}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V

    goto :goto_82

    .line 107
    :cond_7d
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-interface {v10, v9}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V

    .line 118
    :goto_82
    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 119
    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v11

    .line 120
    iget v12, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mIconOnColor:I

    iget v13, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mIconOffColor:I

    iget v14, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mIconLowLightColor:I

    invoke-interface {v10, v12, v13, v14}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->initIconColor(III)V

    if-nez v11, :cond_ae

    .line 122
    iget-object v11, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    .line 123
    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->isSellingPointAndShow()Z

    move-result v13

    if-eqz v13, :cond_a2

    sget v13, Lcom/transsion/camera/R$layout;->top_bar_setting_selling_point_layout:I

    goto :goto_a4

    :cond_a2
    sget v13, Lcom/transsion/camera/R$layout;->top_bar_setting_item:I

    :goto_a4
    sget v14, Lcom/transsion/camera/R$id;->top_setting_item_img:I

    sget v15, Lcom/transsion/camera/R$id;->top_setting_img_selling_point:I

    const/16 v16, -0x1

    .line 122
    invoke-interface/range {v10 .. v16}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIII)Landroid/view/View;

    move-result-object v11

    .line 128
    :cond_ae
    iget-object v12, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    invoke-interface {v10, v12, v4}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->onScreenSupply(ZZ)V

    .line 129
    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setupEntryView()V

    .line 130
    iget-object v12, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    invoke-interface {v10, v12}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setMasterGuideUIManager(Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;)V

    .line 131
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_cb

    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getIsShouldGone()Z

    move-result v12

    if-eqz v12, :cond_d1

    :cond_cb
    invoke-interface {v10}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->needItemAnimation()Z

    move-result v12

    if-eqz v12, :cond_e0

    .line 132
    :cond_d1
    invoke-interface {v7, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-boolean v12, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mPopSettingSupport:Z

    if-nez v12, :cond_e0

    .line 134
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v12

    sub-int/2addr v12, v5

    invoke-interface {v10, v12}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPositionInTopBar(I)V

    .line 137
    :cond_e0
    iget-object v12, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_10e

    iget-object v12, v0, Lcom/transsion/camera/app/ui/TopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_10e

    iget-object v12, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 138
    invoke-virtual {v12}, Lcom/transsion/camera/app/ui/PopupOptionManager;->getCurrentShowView()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10e

    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v9}, Lcom/transsion/camera/app/ui/PopupOptionManager;->needShowPopUpOption()Z

    move-result v9

    if-eqz v9, :cond_10e

    if-eqz p2, :cond_10e

    .line 139
    invoke-interface {v10, v11, v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->onEntryViewClick(Landroid/view/View;Z)Z

    .line 140
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v9, v4}, Lcom/transsion/camera/app/ui/PopupOptionManager;->setNeedShowPopUpOption(Z)V

    :cond_10e
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5a

    .line 143
    :cond_112
    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    .line 144
    invoke-virtual {v0, v7, v4}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->updateTopBar(Ljava/util/Map;I)V

    return-void

    .line 77
    :cond_118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mTopBarContainer should be instance of TopBarContainer!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
