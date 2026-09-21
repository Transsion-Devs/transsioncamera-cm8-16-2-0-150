.class public Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDefaultTaskCallback:Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;

.field private mIsBackPressed:Z

.field private mIsCapturing:Z

.field private mIsSecurityCamera:Z

.field private mIsVideoRecording:Z

.field private mNeedShowRecommendPopUpTips:Z

.field private final mOnThumbnailUIEnableTask:Lcom/transsion/camera/app/common/taps/IThumbnailController;

.field private mTaskCallbackWithListener:Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;

.field private mThumbnailListener:Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

.field private mThumbnailLoader:Lcom/transsion/camera/manager/ThumbnailLoader;

.field protected mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

.field private mThumbnailView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmThumbnailListener(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailListener:Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monThumbnailUIEnable(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->onThumbnailUIEnable()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ThumbnailUIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;ZLcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 14

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v7, p3

    .line 92
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    const/4 p0, 0x0

    .line 63
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsBackPressed:Z

    .line 64
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsSecurityCamera:Z

    const/4 p0, 0x1

    .line 65
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mNeedShowRecommendPopUpTips:Z

    .line 67
    new-instance p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$1;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$1;-><init>(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)V

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mOnThumbnailUIEnableTask:Lcom/transsion/camera/app/common/taps/IThumbnailController;

    .line 93
    iput-object p1, v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 94
    invoke-virtual {v0, p5}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->createThumbnailUI(Lcom/transsion/camera/app/common/storage/DataStore;)Lcom/transsion/camera/app/ui/IThumbnailUI;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    .line 95
    new-instance p1, Lcom/transsion/camera/manager/ThumbnailLoader;

    invoke-direct {p1}, Lcom/transsion/camera/manager/ThumbnailLoader;-><init>()V

    iput-object p1, v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailLoader:Lcom/transsion/camera/manager/ThumbnailLoader;

    .line 96
    iput-boolean p4, v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsSecurityCamera:Z

    .line 98
    new-instance p1, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$2;

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$2;-><init>(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)V

    iput-object p1, v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mTaskCallbackWithListener:Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;

    .line 122
    new-instance p1, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$3;

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$3;-><init>(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)V

    iput-object p1, v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mDefaultTaskCallback:Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;

    .line 140
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->setThumbnailController(Lcom/transsion/camera/app/common/taps/IThumbnailController;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Landroid/content/ContentResolver;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Landroid/content/Context;ZLcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 8

    move-object p1, p2

    move-object p2, p3

    move-object p3, p4

    move p4, p6

    move-object p5, p7

    .line 146
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;-><init>(Landroid/content/ContentResolver;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;ZLcom/transsion/camera/app/common/storage/DataStore;)V

    return-void
.end method

.method private hideRecommendPopupTips()V
    .registers 1

    .line 194
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    if-eqz p0, :cond_7

    .line 195
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->hideRecommendPopupTips()V

    :cond_7
    return-void
.end method

.method private onThumbnailUIEnable()V
    .registers 3

    .line 456
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPendingThumbnailClick:Z

    if-eqz v0, :cond_d

    .line 457
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->performPendingClick()V

    .line 459
    :cond_d
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onThumbnailUIEnable: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 460
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getOfflineSessionCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_22

    .line 461
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setEnable(Z)V

    :cond_22
    return-void
.end method

.method private showRecommendPopupTips()V
    .registers 7

    .line 150
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    .line 151
    iget-boolean v1, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiFramePopTipsSupport:Z

    .line 152
    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mUltraHdPopTipsSupport:Z

    .line 154
    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v2, :cond_af

    if-nez v1, :cond_12

    if-nez v0, :cond_12

    goto/16 :goto_af

    .line 158
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_af

    .line 163
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_ai_frame"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    sget-object v1, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showRecommendPopupTips aiFrameValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 166
    const-string v2, "on"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->showRecommendPopupTips(I)V

    return-void

    .line 172
    :cond_4f
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_ai_zoom_sr"

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    iget-object v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v4, "key_camera_zoom"

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showRecommendPopupTips aiZoomSRValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", zoomValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 176
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_88

    goto :goto_af

    .line 182
    :cond_88
    :try_start_88
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_8c
    .catch Ljava/lang/NumberFormatException; {:try_start_88 .. :try_end_8c} :catch_98

    const v1, 0x30d40

    if-lt v0, v1, :cond_af

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->showRecommendPopupTips(I)V

    return-void

    :catch_98
    move-exception p0

    .line 184
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showRecommendPopupTips invalid zoomValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_af
    :goto_af
    return-void
.end method


# virtual methods
.method protected createThumbnailUI(Lcom/transsion/camera/app/common/storage/DataStore;)Lcom/transsion/camera/app/ui/IThumbnailUI;
    .registers 2

    .line 200
    new-instance p0, Lcom/transsion/camera/app/ui/ThumbnailUI;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ThumbnailUI;-><init>(Lcom/transsion/camera/app/common/storage/DataStore;)V

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .registers 1

    .line 282
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnailView()Landroid/view/View;
    .registers 1

    .line 475
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->getThumbnailView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public hide()V
    .registers 3

    .line 217
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_26

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 219
    :goto_12
    instance-of v1, v0, Landroid/animation/Animator;

    if-eqz v1, :cond_26

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 220
    sget-object p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "hide: dismiss"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 224
    :cond_26
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    return-void
.end method

.method public isUpdateThumbnail()Z
    .registers 1

    .line 471
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->isUpdateThumbnail()Z

    move-result p0

    return p0
.end method

.method public loadLatestThumbnail(Ljava/util/ArrayList;)V
    .registers 4

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailLoader:Lcom/transsion/camera/manager/ThumbnailLoader;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mTaskCallbackWithListener:Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;

    invoke-virtual {v0, v1, p1, p0}, Lcom/transsion/camera/manager/ThumbnailLoader;->loadLatestThumbnail(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;)V

    return-void
.end method

.method public loadThumbnailByUri(Ljava/util/ArrayList;Landroid/net/Uri;)V
    .registers 5

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailLoader:Lcom/transsion/camera/manager/ThumbnailLoader;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mDefaultTaskCallback:Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;

    invoke-virtual {v0, v1, p1, p0, p2}, Lcom/transsion/camera/manager/ThumbnailLoader;->loadThumbnailByUri(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;Landroid/net/Uri;)V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 7

    .line 330
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraOperateActionToUI action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mNeedShowRecommendPopUpTips: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mNeedShowRecommendPopUpTips:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_17f

    const/4 v1, 0x1

    if-eq p1, v1, :cond_164

    const/4 v2, 0x2

    if-eq p1, v2, :cond_17f

    const/4 v2, 0x3

    if-eq p1, v2, :cond_164

    const/4 v2, 0x4

    if-eq p1, v2, :cond_164

    const/16 v2, 0xb

    if-eq p1, v2, :cond_17f

    const/16 v2, 0x1c

    const/4 v3, 0x0

    if-eq p1, v2, :cond_140

    const/16 v2, 0x36

    if-eq p1, v2, :cond_164

    const/16 v2, 0x57

    .line 331
    const-string v4, "ThumbnailUI enable, action:"

    if-eq p1, v2, :cond_120

    const/16 v2, 0x97

    if-eq p1, v2, :cond_10a

    const/16 v2, 0x9d

    if-eq p1, v2, :cond_120

    const/16 v0, 0xc9

    const/4 v2, 0x0

    if-eq p1, v0, :cond_f8

    const/16 v0, 0x17

    if-eq p1, v0, :cond_ef

    const/16 v0, 0x18

    if-eq p1, v0, :cond_e9

    const/16 v0, 0x20

    if-eq p1, v0, :cond_db

    const/16 v0, 0x21

    if-eq p1, v0, :cond_d3

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_c1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_af

    const/16 v0, 0x7c

    if-eq p1, v0, :cond_17f

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_17f

    const/16 v0, 0x90

    if-eq p1, v0, :cond_c1

    const/16 v0, 0x91

    if-eq p1, v0, :cond_af

    packed-switch p1, :pswitch_data_184

    .line 440
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    return-void

    .line 420
    :pswitch_7d
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mNeedShowRecommendPopUpTips:Z

    .line 421
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->restoreRecommendPopupTips()V

    return-void

    .line 433
    :pswitch_85
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mNeedShowRecommendPopUpTips:Z

    return-void

    .line 424
    :pswitch_88
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mNeedShowRecommendPopUpTips:Z

    .line 425
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->hideRecommendPopupTips()V

    return-void

    .line 377
    :pswitch_8e
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsVideoRecording:Z

    .line 378
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setEnable(Z)V

    goto :goto_af

    .line 362
    :pswitch_94
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setEnable(Z)V

    goto :goto_c1

    .line 334
    :pswitch_98
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsCapturing:Z

    .line 335
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsSecurityCamera:Z

    if-nez p1, :cond_13f

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mNeedShowRecommendPopUpTips:Z

    if-eqz p1, :cond_13f

    .line 336
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->showRecommendPopupTips()V

    return-void

    .line 340
    :pswitch_a6
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setEnable(Z)V

    .line 341
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsCapturing:Z

    .line 343
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->hideRecommendPopupTips()V

    return-void

    .line 381
    :cond_af
    :goto_af
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsVideoRecording:Z

    .line 382
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz p1, :cond_13f

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    if-eqz p0, :cond_13f

    .line 383
    invoke-interface {p0, v3, v2}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 365
    :cond_c1
    :goto_c1
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsVideoRecording:Z

    .line 366
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz p1, :cond_13f

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    if-eqz p0, :cond_13f

    .line 367
    invoke-interface {p0, v1, v2}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 346
    :cond_d3
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsCapturing:Z

    if-nez p1, :cond_13f

    .line 347
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setEnable(Z)V

    return-void

    .line 387
    :cond_db
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mOnThumbnailUIEnableTask:Lcom/transsion/camera/app/common/taps/IThumbnailController;

    if-eqz p1, :cond_13f

    .line 388
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mOnThumbnailUIEnableTask:Lcom/transsion/camera/app/common/taps/IThumbnailController;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->setThumbnailController(Lcom/transsion/camera/app/common/taps/IThumbnailController;)V

    return-void

    .line 436
    :cond_e9
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setEnable(Z)V

    .line 437
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mNeedShowRecommendPopUpTips:Z

    return-void

    .line 428
    :cond_ef
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setEnable(Z)V

    .line 429
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mNeedShowRecommendPopUpTips:Z

    .line 430
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->hideRecommendPopupTips()V

    return-void

    .line 371
    :cond_f8
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsVideoRecording:Z

    .line 372
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz p1, :cond_13f

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    if-eqz p0, :cond_13f

    .line 373
    invoke-interface {p0, v3, v2}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 351
    :cond_10a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 352
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->onThumbnailUIEnable()V

    return-void

    .line 356
    :cond_120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 357
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getOfflineSessionCount()I

    move-result p1

    if-ge p1, v1, :cond_13f

    .line 358
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setEnable(Z)V

    :cond_13f
    return-void

    .line 392
    :cond_140
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsCapturing:Z

    .line 393
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsVideoRecording:Z

    .line 394
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPendingThumbnailClick:Z

    if-eqz v0, :cond_151

    .line 395
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->cancelPendingClick()V

    .line 397
    :cond_151
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_160

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    if-eqz v0, :cond_160

    .line 398
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->resetRecordingUI()V

    .line 400
    :cond_160
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    goto :goto_17f

    .line 413
    :cond_164
    :pswitch_164
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    if-eqz v0, :cond_17b

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_picture_size"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->updateThumbnailDefaultView(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_17b
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    return-void

    .line 406
    :cond_17f
    :goto_17f
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->hideRecommendPopupTips()V

    return-void

    nop

    :pswitch_data_184
    .packed-switch 0xd
        :pswitch_a6
        :pswitch_98
        :pswitch_94
        :pswitch_8e
        :pswitch_88
        :pswitch_85
        :pswitch_7d
        :pswitch_164
    .end packed-switch
.end method

.method protected notifyCameraOperateActionToUI(II)V
    .registers 6

    .line 447
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraOperateActionToUI: respond = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_28

    .line 449
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IThumbnailUI;->setClickable(Z)V

    return-void

    :cond_28
    if-nez p2, :cond_2f

    .line 451
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IThumbnailUI;->setClickable(Z)V

    :cond_2f
    return-void
.end method

.method public onBackPressed()Z
    .registers 2

    const/4 v0, 0x1

    .line 306
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsBackPressed:Z

    const/4 p0, 0x0

    return p0
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 4

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/ui/IThumbnailUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailView:Landroid/view/View;

    return-object p1
.end method

.method public onOrientationChanged(IZ)V
    .registers 3

    .line 234
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IThumbnailUI;->onOrientationChanged(IZ)V

    return-void
.end method

.method protected onSetupViews()V
    .registers 1

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->setupViews()V

    return-void
.end method

.method public performClick(Landroid/view/View;)V
    .registers 2

    .line 276
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailListener:Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    if-eqz p0, :cond_7

    .line 277
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;->onThumbnailClicked(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method public playThumbLottieAnimation()V
    .registers 1

    .line 325
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->playThumbLottieAnimation()V

    return-void
.end method

.method public setEnable(Z)V
    .registers 5

    .line 240
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThumbnailUI enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 241
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    if-eqz p1, :cond_25

    .line 242
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsVideoRecording:Z

    if-eqz v1, :cond_25

    .line 243
    const-string p0, "[setEnable] return because video is recording."

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 246
    :cond_25
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 286
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IThumbnailUI;->setThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setThumbnailClickable(Z)V
    .registers 2

    .line 272
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IThumbnailUI;->setThumbnailClickable(Z)V

    return-void
.end method

.method public setThumbnailListener(Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;)V
    .registers 5

    .line 250
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailListener:Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    if-eqz p1, :cond_52

    .line 252
    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getProcessingMedia()Ljava/util/List;

    move-result-object p1

    .line 253
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsSecurityCamera:Z

    if-nez v0, :cond_52

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_52

    .line 254
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;

    .line 255
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createThumbnailUI updateLatestItemThumb uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->updateProcessingThumbUri(Landroid/net/Uri;)V

    .line 257
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 260
    :cond_52
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    new-instance v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$4;-><init>(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->setOnThumbnailClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public show()V
    .registers 1

    .line 467
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    return-void
.end method

.method public unInit()V
    .registers 1

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->unInit()V

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 2

    .line 480
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    if-eqz p0, :cond_7

    .line 481
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IThumbnailUI;->updateCurrentMode(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public updateProcessingThumbUri(Landroid/net/Uri;)V
    .registers 4

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailListener:Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    if-eqz p0, :cond_9

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 312
    invoke-interface {p0, p1, v0, v1}, Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;->onThumbnailUriUpdated(Landroid/net/Uri;ZZ)V

    :cond_9
    return-void
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;Z)V
    .registers 3

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IThumbnailUI;->updateThumbnail(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public updateThumbnailUri(Landroid/net/Uri;ZZ)V
    .registers 7

    const/4 p3, 0x0

    .line 294
    invoke-static {p3}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->setProcessStatus(Z)V

    .line 295
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateThumbnailUri] mThumbnailListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailListener:Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mIsBackPressed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsBackPressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailListener:Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    if-eqz v0, :cond_32

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsBackPressed:Z

    if-nez v1, :cond_32

    .line 297
    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;->onThumbnailUriUpdated(Landroid/net/Uri;ZZ)V

    return-void

    .line 299
    :cond_32
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mIsBackPressed:Z

    .line 300
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->doOnBGImageSaved(Landroid/net/Uri;[B)V

    return-void
.end method
