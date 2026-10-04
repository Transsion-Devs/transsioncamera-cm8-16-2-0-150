.class public Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI$ItemSelectHook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$mStatusChangeListener;,
        Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$SettingFragmentListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$HelpGuideListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$EditWaterMarkListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$GoldWaterMarkListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$ProWaterMarkListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$ImageStyleListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$ArcFilterListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$ColorStyleListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$SuperNightFilterListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$CelebritySceneListenerImpl;
    }
.end annotation


# static fields
.field public static final MOVE_DISTANCE:I = 0xb4

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mCelebritySceneShow:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentModeName:Ljava/lang/String;

.field private mEnable:Z

.field private mExposerTimeCapture:Z

.field private mFilterUIShow:Z

.field private mFlipDownSettingUIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;",
            ">;"
        }
    .end annotation
.end field

.field private mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

.field private mFlipTopSettingUIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;

.field private mImageStyleShow:Z

.field private mInModeSupportRecording:Z

.field private mIsAdJustExposure:Z

.field private mIsDialogShow:Z

.field private mIsModeSwitching:Z

.field private mIsOnScale:Z

.field private mIsPreviewDown:Z

.field private mIsScrolling:Z

.field private mIsSuperDefinitionColsing:Z

.field private mIsSuperNightCapturing:Z

.field private mIsUILoading:Z

.field private mIsVideoRecording:Z

.field private mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;

.field private mLastClickTime:J

.field private mNeedHideBackView:Z

.field private final mPopSettingSupport:Z

.field private final mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

.field private final mPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

.field private mPopupWindowShow:Z

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mRearFrontCameraSwitching:Z

.field private mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mSelfTimerCapture:Z

.field private mSettingUIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mZoomTriggerByPhysicalKey:Z


# direct methods
.method public static synthetic $r8$lambda$SJZzCqmqbnE0gTvm8GgHpz10OkI(ILcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;)V
    .registers 2

    .line 567
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->onOrientationChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dXnkblAPmBSBIZBrypbnhRXOWWg(ILcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;)V
    .registers 2

    .line 588
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$h4_UmVR9nE9MM6zHNrZBnUQQ_h8(ILcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;)V
    .registers 2

    .line 597
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$txMrXOTDr57PxV6wzveguUL3Zgg(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->lambda$notifyCameraOperateActionToUI$3()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmFragmentListener(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFragmentListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPopSettingUI(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;)Lcom/transsion/camera/app/ui/PopSettingUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmEnable(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mEnable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsVideoRecording(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsVideoRecording:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 56
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PopSettingUIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 14

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v7, p5

    .line 104
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 59
    new-instance p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$mStatusChangeListener;

    const/4 p2, 0x0

    invoke-direct {p0, v0, p2}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$mStatusChangeListener;-><init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager-IA;)V

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const/4 p0, 0x0

    .line 74
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsSuperDefinitionColsing:Z

    .line 75
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsVideoRecording:Z

    const/4 p2, 0x1

    .line 79
    iput-boolean p2, v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mEnable:Z

    const-wide/16 p4, 0x0

    .line 86
    iput-wide p4, v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mLastClickTime:J

    .line 89
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsDialogShow:Z

    .line 90
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFilterUIShow:Z

    .line 91
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mImageStyleShow:Z

    .line 92
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCelebritySceneShow:Z

    .line 93
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mInModeSupportRecording:Z

    .line 96
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mRearFrontCameraSwitching:Z

    .line 106
    iput-object p1, v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mContext:Landroid/content/Context;

    .line 107
    iput-object v1, v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 108
    iput-object v7, v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    .line 109
    new-instance p0, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;-><init>()V

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    .line 110
    invoke-virtual {v0, p1, v1, p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->createUI(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;)Lcom/transsion/camera/app/ui/PopSettingUI;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    .line 111
    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/ui/PopSettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 112
    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/ui/PopSettingUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/transsion/camera/R$bool;->pop_setting_support:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingSupport:Z

    .line 114
    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_69

    .line 115
    const-string p0, "com.transsion.camera.app.ui.FlipPopSettingUI"

    filled-new-array {p1, v1, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/IPopSettingUI;

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    if-eqz p0, :cond_69

    .line 119
    invoke-interface {p0, v7}, Lcom/transsion/camera/app/ui/IPopSettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    :cond_69
    return-void
.end method

.method private currentModeSupportRecording()Z
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    .line 181
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    .line 182
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.video.SlowMotionModeEntry"

    .line 183
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    .line 184
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_33

    goto :goto_35

    :cond_33
    const/4 p0, 0x0

    return p0

    :cond_35
    :goto_35
    const/4 p0, 0x1

    return p0
.end method

.method private findPopSettingKey(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;)Z
    .registers 6

    const/4 p0, 0x0

    if-eqz p1, :cond_2f

    .line 287
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_a

    goto :goto_2f

    .line 291
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    if-eqz v0, :cond_e

    .line 292
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-ne v0, p3, :cond_e

    const/4 p0, 0x1

    :cond_2f
    :goto_2f
    return p0
.end method

.method private flipScreen()Z
    .registers 2

    const/4 v0, 0x7

    .line 421
    iget p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne v0, p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private getPictureRatio()Ljava/lang/String;
    .registers 2

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_picture_size"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initPopSettingItemUI(Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 306
    :cond_3
    const-string v0, "key_settings_entry"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 307
    new-instance v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$SettingFragmentListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$SettingFragmentListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    :cond_18
    const-string v0, "key_help_guide"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 310
    new-instance v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$HelpGuideListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$HelpGuideListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    :cond_2c
    const-string v0, "key_edit_watermark"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 313
    new-instance v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$EditWaterMarkListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$EditWaterMarkListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    :cond_40
    const-string v0, "key_gold_watermark"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 316
    new-instance v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$GoldWaterMarkListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$GoldWaterMarkListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    :cond_54
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_6e

    const-string v0, "key_pro_watermark"

    .line 319
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 320
    new-instance v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$ProWaterMarkListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$ProWaterMarkListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    :cond_6e
    const-string v0, "key_image_style"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 323
    new-instance v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$ImageStyleListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$ImageStyleListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    :cond_82
    const-string v0, "key_filter"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 326
    new-instance v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$ArcFilterListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$ArcFilterListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    :cond_96
    const-string v0, "key_color_style"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 329
    new-instance v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$ColorStyleListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$ColorStyleListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    :cond_aa
    const-string v0, "key_supernight_filter"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 332
    new-instance v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$SuperNightFilterListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$SuperNightFilterListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    :cond_be
    const-string v0, "key_celebrity_scene"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 335
    new-instance v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$CelebritySceneListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$CelebritySceneListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    :cond_d2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_d9

    .line 338
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 341
    :cond_d9
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_e0

    .line 342
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 345
    :cond_e0
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    if-eqz v0, :cond_e7

    .line 346
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V

    .line 349
    :cond_e7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_ee

    .line 350
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 352
    :cond_ee
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->setItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI$ItemSelectHook;)V

    return-void
.end method

.method private isFastDoubleClick()Z
    .registers 7

    .line 1246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1247
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_16

    const-wide/16 v4, 0x190

    cmp-long v2, v2, v4

    if-gez v2, :cond_16

    const/4 p0, 0x1

    return p0

    .line 1251
    :cond_16
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mLastClickTime:J

    const/4 p0, 0x0

    return p0
.end method

.method private isReachPreviewBoundary(FF)Z
    .registers 5

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->mode_picker_main_list_view_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_2e

    iget v1, p0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_2e

    iget p1, p0, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-ltz p1, :cond_2e

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v0

    int-to-float p0, p0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 p0, 0x0

    return p0

    :cond_2e
    :goto_2e
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$notifyCameraOperateActionToUI$3()V
    .registers 3

    .line 625
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 626
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 628
    :cond_a
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    return-void
.end method

.method private unInitPopSettingUIs()V
    .registers 3

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 210
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_10

    .line 212
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 214
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipTopSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_4a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipTopSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 216
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_35

    .line 218
    :cond_45
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipTopSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 220
    :cond_4a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipDownSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_6f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipDownSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 222
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_5a

    .line 224
    :cond_6a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipDownSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_6f
    return-void
.end method

.method private updatePopSettingUIs(Ljava/util/List;Ljava/util/List;)V
    .registers 7

    if-eqz p1, :cond_28

    .line 264
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 265
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    if-eqz v1, :cond_c

    .line 266
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->findPopSettingKey(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 267
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_c

    :cond_28
    if-eqz p2, :cond_6d

    .line 272
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 273
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_34
    :goto_34
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    if-eqz v0, :cond_4f

    .line 274
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->findPopSettingKey(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 275
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->initPopSettingItemUI(Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;)V

    .line 277
    :cond_4f
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v1, :cond_34

    if-eqz v0, :cond_34

    .line 278
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v1

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 279
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 280
    iget v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mBatteryStatus:I

    iget v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mTemperatureStatus:I

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    goto :goto_34

    :cond_6d
    return-void
.end method


# virtual methods
.method protected createUI(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;)Lcom/transsion/camera/app/ui/PopSettingUI;
    .registers 5

    .line 1304
    new-instance v0, Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/transsion/camera/app/ui/PopSettingUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;)V

    return-object v0
.end method

.method public dismissPopup()Z
    .registers 2

    .line 578
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->flipScreen()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    if-eqz v0, :cond_f

    .line 579
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->dismissPopup()Z

    move-result p0

    return p0

    .line 581
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->dismissPopup()Z

    move-result p0

    return p0
.end method

.method public dismissPopupWithoutAnimation()Z
    .registers 2

    .line 414
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->flipScreen()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    if-eqz v0, :cond_f

    .line 415
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->dismissPopupWithoutAnimation()Z

    move-result p0

    return p0

    .line 417
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->dismissPopupWithoutAnimation()Z

    move-result p0

    return p0
.end method

.method public hidePopSettingUI()V
    .registers 2

    const/4 v0, 0x1

    .line 1029
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->hidePopSettingUI(Z)V

    return-void
.end method

.method public hidePopSettingUI(Z)V
    .registers 4

    .line 1033
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1034
    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(ZZ)V

    .line 1036
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    if-eqz p0, :cond_f

    .line 1037
    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(ZZ)V

    :cond_f
    return-void
.end method

.method public hidePopSettings()V
    .registers 2

    .line 1269
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 8

    .line 586
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    .line 587
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_f

    .line 588
    new-instance v1, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 590
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz v0, :cond_16

    .line 591
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->onCameraOperateAction(I)V

    .line 593
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    if-eqz v0, :cond_1d

    .line 594
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/IPopSettingUI;->onCameraOperateAction(I)V

    .line 596
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipDownSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_2b

    .line 597
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipTopSettingUIList:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_2b
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3dd

    const/16 v2, 0x8

    if-eq p1, v0, :cond_3c4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3b0

    const/4 v3, 0x3

    if-eq p1, v3, :cond_34e

    const/4 v3, 0x4

    if-eq p1, v3, :cond_33b

    const/4 v3, 0x5

    if-eq p1, v3, :cond_335

    if-eq p1, v2, :cond_32b

    const/16 v3, 0x9

    if-eq p1, v3, :cond_31b

    const/16 v3, 0xf

    if-eq p1, v3, :cond_309

    const/16 v3, 0x10

    if-eq p1, v3, :cond_2fa

    const/16 v3, 0x24

    if-eq p1, v3, :cond_2e5

    const/16 v3, 0x25

    if-eq p1, v3, :cond_2d1

    const/16 v3, 0x5a

    if-eq p1, v3, :cond_2af

    const/16 v3, 0x5b

    if-eq p1, v3, :cond_36a

    const/16 v3, 0x5d

    if-eq p1, v3, :cond_2a6

    const/16 v3, 0x5e

    if-eq p1, v3, :cond_2fa

    packed-switch p1, :pswitch_data_400

    .line 599
    const-string v3, "com.transsion.camera.feature.mode.streetphoto.StreetPhotoModeEntry"

    sparse-switch p1, :sswitch_data_40a

    packed-switch p1, :pswitch_data_4fc

    packed-switch p1, :pswitch_data_506

    goto/16 :goto_3ff

    .line 949
    :pswitch_75
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->isFilterUIShow(Z)V

    .line 950
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setNeedPopSettingEntryAnimation(Z)V

    .line 951
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFilterUIShow:Z

    return-void

    .line 938
    :pswitch_82
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->isFilterUIShow(Z)V

    .line 939
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setNeedPopSettingEntryAnimation(Z)V

    .line 940
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mInModeSupportRecording:Z

    if-nez p1, :cond_95

    .line 941
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    .line 943
    :cond_95
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->hidePopSettingByFilter()V

    .line 944
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 945
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->isZoomStart(Z)V

    .line 946
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFilterUIShow:Z

    return-void

    .line 824
    :pswitch_a7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p1, :cond_dc

    .line 825
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    .line 826
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowAppearing(Z)V

    .line 827
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mNeedHideBackView:Z

    if-eqz p1, :cond_c8

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mImageStyleShow:Z

    if-nez p1, :cond_c8

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFilterUIShow:Z

    if-nez p1, :cond_c8

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCelebritySceneShow:Z

    if-nez p1, :cond_c8

    .line 829
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    .line 831
    :cond_c8
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_dc

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_dc

    .line 832
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;->isPopupShowing()Z

    move-result p1

    if-nez p1, :cond_dc

    .line 833
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopupWindowShow:Z

    .line 837
    :cond_dc
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mNeedHideBackView:Z

    goto/16 :goto_335

    .line 981
    :pswitch_e0
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_3ff

    .line 982
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopupWindowShow:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mNeedHideBackView:Z

    .line 983
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    .line 984
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowAppearing(Z)V

    .line 985
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopupWindowShow:Z

    xor-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->needPopupItemAnimation(Z)V

    .line 986
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopupWindowShow:Z

    return-void

    .line 906
    :pswitch_100
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsVideoRecording:Z

    .line 907
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mExposerTimeCapture:Z

    .line 908
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSelfTimerCapture:Z

    .line 909
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsSuperNightCapturing:Z

    .line 910
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsDialogShow:Z

    .line 911
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFilterUIShow:Z

    .line 912
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->onPause()V

    .line 913
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setExposerTimeCapture(Z)V

    .line 914
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->dismissPopupWithoutAnimation()Z

    return-void

    .line 994
    :sswitch_11a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    const-string p1, "key_celebrity_scene"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->scrollPopSettingItemToCenter(Ljava/lang/String;)V

    return-void

    .line 976
    :sswitch_122
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->isCelebritySceneShow(Z)V

    .line 977
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setNeedPopSettingEntryAnimation(Z)V

    .line 978
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCelebritySceneShow:Z

    return-void

    .line 969
    :sswitch_12f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->isCelebritySceneShow(Z)V

    .line 970
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setNeedPopSettingEntryAnimation(Z)V

    .line 971
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 972
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    .line 973
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCelebritySceneShow:Z

    return-void

    .line 650
    :sswitch_146
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsSuperDefinitionColsing:Z

    return-void

    .line 647
    :sswitch_149
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsSuperDefinitionColsing:Z

    return-void

    .line 990
    :sswitch_14c
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mRearFrontCameraSwitching:Z

    .line 991
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    return-void

    .line 962
    :sswitch_154
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->isImageStyleShow(Z)V

    .line 963
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_166

    .line 964
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    .line 966
    :cond_166
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mImageStyleShow:Z

    return-void

    .line 954
    :sswitch_169
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->isImageStyleShow(Z)V

    .line 955
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 956
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_180

    .line 957
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    .line 959
    :cond_180
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mImageStyleShow:Z

    return-void

    .line 853
    :sswitch_183
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mZoomTriggerByPhysicalKey:Z

    goto/16 :goto_23e

    .line 862
    :sswitch_187
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsAdJustExposure:Z

    return-void

    .line 859
    :sswitch_18a
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsAdJustExposure:Z

    return-void

    .line 665
    :sswitch_18d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p1, :cond_3ff

    .line 666
    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    .line 667
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->getPopSettingVisible()I

    move-result p1

    if-nez p1, :cond_3ff

    .line 668
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    return-void

    .line 632
    :sswitch_1a2
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_1af

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p1, :cond_1af

    .line 633
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->dismissPopup()Z

    .line 635
    :cond_1af
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mExposerTimeCapture:Z

    .line 636
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    return-void

    .line 881
    :sswitch_1b4
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsPreviewDown:Z

    .line 882
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    .line 883
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSelfTimerCapture:Z

    if-nez p1, :cond_3ff

    .line 884
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mEnable:Z

    return-void

    .line 878
    :sswitch_1bf
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsPreviewDown:Z

    return-void

    .line 875
    :sswitch_1c2
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mEnable:Z

    return-void

    .line 743
    :sswitch_1c5
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setEnable(Z)V

    return-void

    .line 639
    :sswitch_1c9
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    if-nez p1, :cond_1d7

    .line 640
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 641
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setExposerTimeCapture(Z)V

    .line 643
    :cond_1d7
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mExposerTimeCapture:Z

    .line 644
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    return-void

    .line 935
    :sswitch_1dc
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsDialogShow:Z

    return-void

    .line 932
    :sswitch_1df
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsDialogShow:Z

    return-void

    .line 605
    :sswitch_1e2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    return-void

    .line 924
    :sswitch_1e8
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsUILoading:Z

    .line 925
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setEnable(Z)V

    .line 926
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsVideoRecording:Z

    return-void

    .line 619
    :sswitch_1f0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->dismissPopupWithoutAnimation()Z

    .line 624
    :sswitch_1f3
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;)V

    const-wide/16 v1, 0x1c2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 677
    :sswitch_207
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    const/16 v4, 0xe9

    if-nez v3, :cond_21a

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz v3, :cond_21a

    if-eq p1, v4, :cond_217

    const/16 v5, 0xd7

    if-ne p1, v5, :cond_21a

    .line 680
    :cond_217
    invoke-interface {v3, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    :cond_21a
    if-ne p1, v4, :cond_223

    .line 684
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz v0, :cond_223

    .line 685
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    :cond_223
    const/16 v0, 0xdb

    if-ne p1, v0, :cond_22a

    .line 689
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->resetState()V

    .line 691
    :cond_22a
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    return-void

    .line 917
    :sswitch_22d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->onResume()V

    .line 918
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    .line 919
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsPreviewDown:Z

    .line 920
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsModeSwitching:Z

    .line 921
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mRearFrontCameraSwitching:Z

    return-void

    .line 856
    :goto_23e
    :sswitch_23e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->isZoomStart(Z)V

    return-void

    .line 846
    :sswitch_244
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mZoomTriggerByPhysicalKey:Z

    if-nez p1, :cond_24d

    .line 847
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->isZoomStart(Z)V

    .line 849
    :cond_24d
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mZoomTriggerByPhysicalKey:Z

    .line 850
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->hidePopSettingUI()V

    return-void

    .line 776
    :sswitch_253
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mEnable:Z

    .line 777
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 778
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    return-void

    .line 842
    :sswitch_260
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    .line 843
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mEnable:Z

    return-void

    .line 746
    :sswitch_268
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    if-nez p1, :cond_271

    .line 747
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 749
    :cond_271
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    if-eqz p1, :cond_278

    .line 750
    invoke-interface {p1, v1}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 752
    :cond_278
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    return-void

    .line 900
    :sswitch_27b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->getPictureRatio()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->restoreSetting(Ljava/lang/String;)V

    .line 901
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    .line 902
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->getPictureRatio()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/PictureSizeHelper;->getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 901
    invoke-virtual {p1, v2, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->updateTreasureBoxBG(Ljava/lang/String;Z)V

    .line 903
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    return-void

    .line 896
    :sswitch_297
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    .line 897
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->resetTBScrollerView()V

    return-void

    .line 929
    :pswitch_2a2
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->dismissPopup()Z

    return-void

    .line 724
    :cond_2a6
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->dismissPopupWithoutAnimation()Z

    .line 725
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsVideoRecording:Z

    .line 726
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    return-void

    .line 755
    :cond_2af
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mExposerTimeCapture:Z

    .line 756
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz v3, :cond_2b8

    .line 757
    invoke-virtual {v3, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setExposerTimeCapture(Z)V

    .line 760
    :cond_2b8
    :pswitch_2b8
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSelfTimerCapture:Z

    .line 761
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz v3, :cond_2c1

    .line 762
    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    :cond_2c1
    :sswitch_2c1
    const/16 v2, 0xed

    if-ne p1, v2, :cond_2c7

    .line 766
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsSuperNightCapturing:Z

    .line 770
    :cond_2c7
    :sswitch_2c7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p1, :cond_2ce

    .line 771
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 773
    :cond_2ce
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mEnable:Z

    return-void

    .line 705
    :cond_2d1
    :sswitch_2d1
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFilterUIShow:Z

    if-nez p1, :cond_2dd

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mImageStyleShow:Z

    if-nez p1, :cond_2dd

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCelebritySceneShow:Z

    if-eqz p1, :cond_3ff

    :cond_2dd
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p0, :cond_3ff

    .line 709
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    return-void

    .line 694
    :cond_2e5
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    if-nez p1, :cond_2f0

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p1, :cond_2f0

    .line 695
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 697
    :cond_2f0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p1, :cond_2f7

    .line 698
    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    .line 700
    :cond_2f7
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    return-void

    .line 734
    :cond_2fa
    :pswitch_2fa
    :sswitch_2fa
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsPreviewDown:Z

    if-eqz p1, :cond_300

    .line 735
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mEnable:Z

    .line 737
    :cond_300
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsVideoRecording:Z

    .line 738
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setEnable(Z)V

    .line 739
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    return-void

    .line 716
    :cond_309
    :pswitch_309
    :sswitch_309
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->dismissPopupWithoutAnimation()Z

    .line 717
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 718
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    if-eqz p1, :cond_318

    .line 719
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 721
    :cond_318
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsVideoRecording:Z

    return-void

    .line 865
    :cond_31b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    .line 866
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsPreviewDown:Z

    if-nez p1, :cond_326

    .line 867
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mEnable:Z

    .line 869
    :cond_326
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setEnable(Z)V

    .line 870
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsVideoRecording:Z

    .line 872
    :cond_32b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->getPictureRatio()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPictureRatio(Ljava/lang/String;)V

    return-void

    .line 839
    :cond_335
    :goto_335
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    return-void

    .line 781
    :cond_33b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    .line 782
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->getPictureRatio()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/PictureSizeHelper;->getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->updateTreasureBoxBG(Ljava/lang/String;Z)V

    return-void

    .line 785
    :cond_34e
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsModeSwitching:Z

    .line 786
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->currentModeSupportRecording()Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mInModeSupportRecording:Z

    .line 787
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz v3, :cond_36a

    .line 788
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v3

    if-eqz v3, :cond_365

    .line 789
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopSettingContainerVisible(I)V

    .line 791
    :cond_365
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->updatePopBackViewBackground()V

    .line 794
    :cond_36a
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mExposerTimeCapture:Z

    .line 795
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz v2, :cond_373

    .line 796
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setExposerTimeCapture(Z)V

    .line 799
    :cond_373
    :pswitch_373
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSelfTimerCapture:Z

    .line 800
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFilterUIShow:Z

    if-nez v2, :cond_37d

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCelebritySceneShow:Z

    if-eqz v2, :cond_388

    :cond_37d
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mInModeSupportRecording:Z

    if-nez v2, :cond_388

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz v2, :cond_388

    .line 801
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    :cond_388
    :sswitch_388
    const/16 v2, 0xee

    if-ne p1, v2, :cond_38e

    .line 806
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsSuperNightCapturing:Z

    :cond_38e
    :sswitch_38e
    const/16 v2, 0x18

    if-ne p1, v2, :cond_399

    .line 810
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p1, :cond_399

    .line 811
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->isZoomStart(Z)V

    .line 813
    :cond_399
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p1, :cond_3a0

    .line 814
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    .line 816
    :cond_3a0
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsPreviewDown:Z

    if-nez p1, :cond_3a6

    .line 817
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mEnable:Z

    .line 819
    :cond_3a6
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mExposerTimeCapture:Z

    if-nez p1, :cond_3ff

    .line 820
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    return-void

    .line 888
    :cond_3b0
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsModeSwitching:Z

    .line 889
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsUILoading:Z

    .line 890
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsSuperNightCapturing:Z

    .line 891
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->dismissPopupWithoutAnimation()Z

    .line 892
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v0, v0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->hidePopSettingView(ZZZ)V

    .line 893
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->resetTBScrollerView()V

    return-void

    .line 653
    :cond_3c4
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsVideoRecording:Z

    .line 654
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mExposerTimeCapture:Z

    .line 655
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSelfTimerCapture:Z

    .line 656
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mRearFrontCameraSwitching:Z

    .line 657
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p1, :cond_3ff

    .line 658
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setExposerTimeCapture(Z)V

    .line 659
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsSuperDefinitionColsing:Z

    if-eqz p1, :cond_3ff

    .line 660
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    return-void

    .line 608
    :cond_3dd
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsSuperNightCapturing:Z

    .line 609
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_3ff

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopupWindowShow:Z

    if-eqz p1, :cond_3ff

    .line 610
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->dismissPopupWithoutAnimation()Z

    .line 611
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopupWindowShow:Z

    .line 612
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->getPopSettingVisible()I

    move-result p1

    if-nez p1, :cond_3ff

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mRearFrontCameraSwitching:Z

    if-nez p1, :cond_3ff

    .line 614
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->startShowPopSettingAnimation(ZZ)V

    :cond_3ff
    :goto_3ff
    return-void

    :pswitch_data_400
    .packed-switch 0xb
        :pswitch_2b8
        :pswitch_373
        :pswitch_2a2
    .end packed-switch

    :sswitch_data_40a
    .sparse-switch
        0x13 -> :sswitch_297
        0x14 -> :sswitch_27b
        0x15 -> :sswitch_268
        0x16 -> :sswitch_260
        0x17 -> :sswitch_253
        0x18 -> :sswitch_388
        0x19 -> :sswitch_244
        0x1a -> :sswitch_23e
        0x20 -> :sswitch_22d
        0x3b -> :sswitch_2fa
        0x58 -> :sswitch_207
        0x68 -> :sswitch_1f3
        0x6a -> :sswitch_1f3
        0x6b -> :sswitch_1f0
        0x6d -> :sswitch_1e8
        0x6e -> :sswitch_207
        0x7c -> :sswitch_1e2
        0x7d -> :sswitch_1e2
        0x87 -> :sswitch_1df
        0x88 -> :sswitch_1dc
        0x90 -> :sswitch_309
        0x91 -> :sswitch_2fa
        0x92 -> :sswitch_1c9
        0x9c -> :sswitch_1c5
        0x9d -> :sswitch_1c5
        0xa3 -> :sswitch_1e2
        0xa5 -> :sswitch_1e2
        0xb2 -> :sswitch_1f3
        0xb8 -> :sswitch_1c2
        0xc2 -> :sswitch_1bf
        0xc3 -> :sswitch_1b4
        0xd1 -> :sswitch_1a2
        0xd2 -> :sswitch_18d
        0xd3 -> :sswitch_2d1
        0xd7 -> :sswitch_207
        0xd9 -> :sswitch_18a
        0xda -> :sswitch_187
        0xdb -> :sswitch_207
        0xe0 -> :sswitch_183
        0xe3 -> :sswitch_23e
        0xe9 -> :sswitch_207
        0xea -> :sswitch_2d1
        0xed -> :sswitch_2c1
        0xee -> :sswitch_388
        0xf2 -> :sswitch_169
        0xf3 -> :sswitch_154
        0xf6 -> :sswitch_1f3
        0x101 -> :sswitch_2c7
        0x102 -> :sswitch_38e
        0x105 -> :sswitch_1e2
        0x111 -> :sswitch_309
        0x112 -> :sswitch_2fa
        0x149 -> :sswitch_14c
        0x150 -> :sswitch_149
        0x151 -> :sswitch_146
        0x183 -> :sswitch_12f
        0x184 -> :sswitch_122
        0x185 -> :sswitch_11a
        0x18b -> :sswitch_2c7
        0x18c -> :sswitch_38e
    .end sparse-switch

    :pswitch_data_4fc
    .packed-switch 0x1c
        :pswitch_100
        :pswitch_e0
        :pswitch_a7
    .end packed-switch

    :pswitch_data_506
    .packed-switch 0x2e
        :pswitch_309
        :pswitch_2fa
        :pswitch_82
        :pswitch_75
    .end packed-switch
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 4

    .line 167
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V

    .line 168
    const-string v0, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 169
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPreviewRect:Landroid/graphics/Rect;

    return-void

    .line 172
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPreviewRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsUILoading:Z

    if-eqz v0, :cond_27

    .line 173
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->currentModeSupportRecording()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mInModeSupportRecording:Z

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->getPictureRatio()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPictureRatio(Ljava/lang/String;)V

    .line 176
    :cond_27
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPreviewRect:Landroid/graphics/Rect;

    return-void
.end method

.method public onBackPressed(Z)Z
    .registers 4

    .line 1222
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->isPopSettingPopAppearing()Z

    move-result p1

    if-eqz p1, :cond_19

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsPreviewDown:Z

    if-nez p1, :cond_19

    .line 1223
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->dismissPopup()Z

    return v0

    .line 1226
    :cond_19
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->getPopSettingVisible()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_37

    .line 1227
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFilterUIShow:Z

    if-nez p1, :cond_2b

    .line 1228
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 1230
    :cond_2b
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopupWindowShow:Z

    if-eqz p1, :cond_36

    .line 1231
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopSettingContainerVisible(I)V

    :cond_36
    return v0

    .line 1235
    :cond_37
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsPreviewDown:Z

    if-eqz p1, :cond_41

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsVideoRecording:Z

    if-eqz p1, :cond_41

    .line 1236
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mEnable:Z

    .line 1238
    :cond_41
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->flipScreen()Z

    move-result p1

    if-eqz p1, :cond_52

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    if-eqz p1, :cond_52

    .line 1239
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/IPopSettingUI;->onBackPressed()Z

    move-result p1

    if-eqz p1, :cond_52

    return v0

    .line 1242
    :cond_52
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onBatteryStatusChanged(ZII)V
    .registers 6

    .line 357
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onBatteryStatusChanged(ZII)V

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_23

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 360
    invoke-interface {v1, p1, p2, p3}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    goto :goto_13

    .line 363
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipTopSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_43

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipTopSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 365
    invoke-interface {v1, p1, p2, p3}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    goto :goto_33

    .line 368
    :cond_43
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipDownSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_63

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_63

    .line 369
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipDownSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_53
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 370
    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    goto :goto_53

    :cond_63
    return-void
.end method

.method public onConfigurationChanged()Z
    .registers 3

    .line 1213
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 1214
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 1215
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopSettingContainerVisible(I)V

    .line 1217
    :cond_f
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onConfigurationChanged()Z

    move-result p0

    return p0
.end method

.method public onCustomItemSelected()V
    .registers 2

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFragmentListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;

    if-eqz v0, :cond_7

    .line 389
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;->onProWaterMarkClicked()V

    .line 391
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->onItemSelected()V

    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 4

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    if-eqz v0, :cond_9

    .line 127
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/ui/IPopSettingUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 129
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onItemSelected()V
    .registers 1

    .line 381
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;

    if-eqz p0, :cond_7

    .line 382
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;->onItemSelected()V

    :cond_7
    return-void
.end method

.method public onLottieAnimationEnd()V
    .registers 1

    .line 443
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p0, :cond_7

    .line 444
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->onLottieAnimationEnd()V

    :cond_7
    return-void
.end method

.method public onLottieAnimationStart()V
    .registers 1

    .line 431
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p0, :cond_7

    .line 432
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->onLottieAnimationStart()V

    :cond_7
    return-void
.end method

.method public onLottieAnimationUpdate(F)V
    .registers 2

    .line 437
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p0, :cond_7

    .line 438
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->onLottieAnimationUpdate(F)V

    :cond_7
    return-void
.end method

.method public onOrientationChanged(IZ)V
    .registers 4

    .line 565
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 566
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz p2, :cond_f

    .line 567
    new-instance v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 569
    :cond_f
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p2, :cond_16

    .line 570
    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->onOrientationChanged(I)V

    .line 572
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    if-eqz p0, :cond_1d

    .line 573
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    :cond_1d
    return-void
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 3

    const/4 v0, 0x1

    .line 1189
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsOnScale:Z

    .line 1190
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .registers 3

    const/4 v0, 0x0

    .line 1195
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsOnScale:Z

    .line 1196
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScreenFormChanged(IZ)V
    .registers 4

    .line 550
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScreenFormChanged(IZ)V

    .line 551
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz v0, :cond_a

    .line 552
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/PopSettingUI;->onScreenFormChanged(IZ)V

    .line 554
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    if-eqz v0, :cond_11

    .line 555
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/IScreenFormControl;->onScreenFormChanged(IZ)V

    .line 557
    :cond_11
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsPreviewDown:Z

    if-eqz p1, :cond_1a

    const/4 p1, 0x0

    .line 558
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mEnable:Z

    .line 559
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    :cond_1a
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 16

    const/4 v0, 0x0

    if-eqz p1, :cond_233

    if-nez p2, :cond_7

    goto/16 :goto_233

    .line 1051
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_233

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v2, :cond_16

    goto/16 :goto_233

    .line 1054
    :cond_16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v1, v3

    .line 1055
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    .line 1057
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingSupport:Z

    if-nez v4, :cond_2d

    return v0

    .line 1061
    :cond_2d
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->flipScreen()Z

    move-result v4

    if-eqz v4, :cond_34

    return v0

    .line 1065
    :cond_34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isReachPreviewBoundary(FF)Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x5

    if-eqz v4, :cond_51

    iget v4, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-eq v4, v8, :cond_51

    if-eq v4, v7, :cond_51

    if-eq v4, v6, :cond_51

    if-eq v4, v5, :cond_51

    return v0

    .line 1073
    :cond_51
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsVideoRecording:Z

    if-nez v4, :cond_233

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsAdJustExposure:Z

    if-nez v4, :cond_233

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mEnable:Z

    if-eqz v4, :cond_233

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsUILoading:Z

    if-nez v4, :cond_233

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mExposerTimeCapture:Z

    if-nez v4, :cond_233

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsSuperNightCapturing:Z

    if-nez v4, :cond_233

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsModeSwitching:Z

    if-eqz v4, :cond_6f

    goto/16 :goto_233

    .line 1083
    :cond_6f
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v4

    if-eqz v4, :cond_90

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFilterUIShow:Z

    if-eqz v4, :cond_7d

    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mInModeSupportRecording:Z

    if-eqz v4, :cond_8f

    :cond_7d
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mImageStyleShow:Z

    if-eqz v4, :cond_8b

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v9, "com.transsion.camera.feature.mode.streetphoto.StreetPhotoModeEntry"

    .line 1085
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8f

    :cond_8b
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCelebritySceneShow:Z

    if-eqz v4, :cond_90

    :cond_8f
    return v0

    .line 1090
    :cond_90
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsDialogShow:Z

    if-eqz v4, :cond_9c

    .line 1091
    sget-object p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onScroll mIsDialogShow,return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 1095
    :cond_9c
    iget v4, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/high16 v9, 0x43340000    # 180.0f

    const/high16 v10, -0x3ccc0000    # -180.0f

    if-eqz v4, :cond_1f7

    if-eq v4, v6, :cond_1f7

    if-ne v4, v5, :cond_aa

    goto/16 :goto_1f7

    :cond_aa
    if-ne v4, v2, :cond_18c

    .line 1116
    iget v4, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_e6

    .line 1117
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v4, v3

    if-ltz v3, :cond_e5

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsOnScale:Z

    if-eqz v3, :cond_c3

    goto :goto_e5

    :cond_c3
    cmpg-float v3, v1, v10

    if-gez v3, :cond_d2

    .line 1120
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v3

    if-nez v3, :cond_d2

    .line 1121
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {v3, v0, v2, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->showPopSettingView(ZZZ)V

    :cond_d2
    cmpl-float v1, v1, v9

    if-lez v1, :cond_e1

    .line 1123
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_e1

    .line 1124
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 1126
    :cond_e1
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    goto/16 :goto_22e

    :cond_e5
    :goto_e5
    return v0

    :cond_e6
    const/16 v5, 0x10e

    if-ne v4, v5, :cond_11e

    .line 1128
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v4, v3

    if-ltz v3, :cond_11d

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsOnScale:Z

    if-eqz v3, :cond_fb

    goto :goto_11d

    :cond_fb
    cmpl-float v3, v1, v9

    if-lez v3, :cond_10a

    .line 1131
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v3

    if-nez v3, :cond_10a

    .line 1132
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {v3, v0, v2, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->showPopSettingView(ZZZ)V

    :cond_10a
    cmpg-float v1, v1, v10

    if-gez v1, :cond_119

    .line 1134
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_119

    .line 1135
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 1137
    :cond_119
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    goto/16 :goto_22e

    :cond_11d
    :goto_11d
    return v0

    :cond_11e
    if-nez v4, :cond_154

    .line 1139
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_153

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsOnScale:Z

    if-eqz v1, :cond_131

    goto :goto_153

    .line 1142
    :cond_131
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    cmpl-float v1, v3, v9

    if-lez v1, :cond_142

    .line 1143
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_142

    .line 1144
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {v1, v0, v2, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->showPopSettingView(ZZZ)V

    :cond_142
    cmpg-float v1, v3, v10

    if-gez v1, :cond_22e

    .line 1146
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_22e

    .line 1147
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    goto/16 :goto_22e

    :cond_153
    :goto_153
    return v0

    :cond_154
    const/16 v5, 0xb4

    if-ne v4, v5, :cond_22e

    .line 1150
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_18b

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsOnScale:Z

    if-eqz v1, :cond_169

    goto :goto_18b

    .line 1153
    :cond_169
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    cmpg-float v1, v3, v10

    if-gez v1, :cond_17a

    .line 1154
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_17a

    .line 1155
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {v1, v0, v2, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->showPopSettingView(ZZZ)V

    :cond_17a
    cmpl-float v1, v3, v9

    if-lez v1, :cond_22e

    .line 1157
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_22e

    .line 1158
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    goto/16 :goto_22e

    :cond_18b
    :goto_18b
    return v0

    :cond_18c
    if-ne v4, v7, :cond_1c2

    .line 1162
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_1c1

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsOnScale:Z

    if-eqz v1, :cond_19f

    goto :goto_1c1

    .line 1165
    :cond_19f
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    cmpg-float v1, v3, v10

    if-gez v1, :cond_1b0

    .line 1166
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_1b0

    .line 1167
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {v1, v0, v2, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->showPopSettingView(ZZZ)V

    :cond_1b0
    cmpl-float v1, v3, v9

    if-lez v1, :cond_22e

    .line 1169
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_22e

    .line 1170
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    goto/16 :goto_22e

    :cond_1c1
    :goto_1c1
    return v0

    :cond_1c2
    if-ne v4, v8, :cond_22e

    .line 1173
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_1f6

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsOnScale:Z

    if-eqz v1, :cond_1d5

    goto :goto_1f6

    .line 1176
    :cond_1d5
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    cmpl-float v1, v3, v9

    if-lez v1, :cond_1e6

    .line 1177
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_1e6

    .line 1178
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {v1, v0, v2, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->showPopSettingView(ZZZ)V

    :cond_1e6
    cmpg-float v1, v3, v10

    if-gez v1, :cond_22e

    .line 1180
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_22e

    .line 1181
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    goto :goto_22e

    :cond_1f6
    :goto_1f6
    return v0

    .line 1098
    :cond_1f7
    :goto_1f7
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v4, v3

    if-gez v3, :cond_204

    return v0

    .line 1101
    :cond_204
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    cmpg-float v3, v1, v10

    if-gez v3, :cond_21a

    .line 1102
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsOnScale:Z

    if-nez v3, :cond_21a

    .line 1103
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v3

    if-eqz v3, :cond_215

    return v0

    .line 1106
    :cond_215
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {v3, v0, v2, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->showPopSettingView(ZZZ)V

    :cond_21a
    cmpl-float v1, v1, v9

    if-lez v1, :cond_22e

    .line 1108
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsOnScale:Z

    if-nez v1, :cond_22e

    .line 1109
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v1

    if-eqz v1, :cond_229

    return v0

    .line 1112
    :cond_229
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 1184
    :cond_22e
    :goto_22e
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0

    :cond_233
    :goto_233
    return v0
.end method

.method protected onSetupViews()V
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setupViews()V

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    if-eqz p0, :cond_c

    .line 136
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->setupViews()V

    :cond_c
    return-void
.end method

.method public onSingleTapConfirmed(FF)Z
    .registers 3

    .line 1043
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onSingleTapConfirmed(FF)Z

    move-result p0

    return p0
.end method

.method public onSingleTapUp(FF)Z
    .registers 3

    .line 1208
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onSingleTapUp(FF)Z

    move-result p0

    return p0
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1201
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->isZoomStart(Z)V

    .line 1202
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    .line 1203
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public resetTBScrollerView()V
    .registers 1

    .line 1279
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p0, :cond_7

    .line 1280
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->resetTBScrollerView()V

    :cond_7
    return-void
.end method

.method public setEnable(Z)V
    .registers 7

    .line 189
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSettingUIList:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 192
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsVideoRecording:Z

    if-nez v4, :cond_29

    if-eqz p1, :cond_29

    move v4, v2

    goto :goto_2a

    :cond_29
    move v4, v1

    :goto_2a
    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_15

    .line 195
    :cond_2e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipTopSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_57

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_57

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipTopSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 197
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsVideoRecording:Z

    if-nez v4, :cond_52

    if-eqz p1, :cond_52

    move v4, v2

    goto :goto_53

    :cond_52
    move v4, v1

    :goto_53
    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_3e

    .line 200
    :cond_57
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipDownSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_80

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_80

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipDownSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_67
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;

    .line 202
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsVideoRecording:Z

    if-nez v4, :cond_7b

    if-eqz p1, :cond_7b

    move v4, v2

    goto :goto_7c

    :cond_7b
    move v4, v1

    :goto_7c
    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_67

    :cond_80
    return-void
.end method

.method public setFlipSettingUIList(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;",
            ">;)V"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    if-nez v0, :cond_5

    return-void

    .line 248
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipTopSettingUIList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->updatePopSettingUIs(Ljava/util/List;Ljava/util/List;)V

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipTopSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_11

    .line 250
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 252
    :cond_11
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipTopSettingUIList:Ljava/util/List;

    .line 254
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipDownSettingUIList:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->updatePopSettingUIs(Ljava/util/List;Ljava/util/List;)V

    .line 255
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipDownSettingUIList:Ljava/util/List;

    if-eqz p1, :cond_1f

    .line 256
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 258
    :cond_1f
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipDownSettingUIList:Ljava/util/List;

    .line 260
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipTopSettingUIList:Ljava/util/List;

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/app/ui/IPopSettingUI;->setFlipSettingUIList(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public setItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;)V
    .registers 2

    .line 376
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;

    return-void
.end method

.method public setPopSettingContainerVisible(I)V
    .registers 2

    .line 1285
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p0, :cond_7

    .line 1286
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopSettingContainerVisible(I)V

    :cond_7
    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 4

    .line 396
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    if-eqz p1, :cond_3d

    .line 398
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_3d

    .line 401
    :cond_c
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 402
    const-string v0, "key_camera_click_zoom"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 403
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_wide_camera_touch_event"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 404
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_zoom_ui_state"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 405
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_quick_video_action"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 406
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_restore_settings_notify_ui"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public setSettingFragmentListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;)V
    .registers 2

    .line 410
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFragmentListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;

    return-void
.end method

.method public setSettingUIList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;",
            ">;)V"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSettingUIList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->updatePopSettingUIs(Ljava/util/List;Ljava/util/List;)V

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 231
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 233
    :cond_c
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSettingUIList:Ljava/util/List;

    .line 234
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setSettingUIList(Ljava/util/List;)V

    const/4 p1, 0x1

    .line 235
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setEnable(Z)V

    return-void
.end method

.method public setTreasureBoxBackViewVisible(I)V
    .registers 2

    .line 1273
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p0, :cond_7

    .line 1274
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    :cond_7
    return-void
.end method

.method public showPopItem()V
    .registers 1

    .line 1291
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p0, :cond_7

    .line 1292
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->showPopItem()V

    :cond_7
    return-void
.end method

.method public showPopSettingUI()V
    .registers 4

    .line 1020
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 1021
    invoke-virtual {v0, v2, v2, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->showPopSettingView(ZZZ)V

    .line 1023
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    if-eqz p0, :cond_10

    .line 1024
    invoke-interface {p0, v2, v2, v1}, Lcom/transsion/camera/app/ui/IPopSettingUI;->showPopSettingView(ZZZ)V

    :cond_10
    return-void
.end method

.method public showPopSettings(ZZ)V
    .registers 4

    .line 1256
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsDialogShow:Z

    if-nez v0, :cond_34

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsModeSwitching:Z

    if-eqz v0, :cond_9

    goto :goto_34

    .line 1260
    :cond_9
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsVideoRecording:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsSuperNightCapturing:Z

    if-nez v0, :cond_1b

    .line 1261
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->updatePopSettingUIList()V

    .line 1262
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/camera/app/ui/PopSettingUI;->showPopSettingView(ZZZ)V

    return-void

    .line 1264
    :cond_1b
    sget-object p1, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showPopSettings return. mIsVideoRecording:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsVideoRecording:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1257
    :cond_34
    :goto_34
    sget-object p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "showPopSettings return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public startShowPopAnimation(ZZ)V
    .registers 3

    .line 1297
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p0, :cond_7

    .line 1298
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/PopSettingUI;->startShowPopSettingAnimation(ZZ)V

    :cond_7
    return-void
.end method

.method public unInit()V
    .registers 4

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->unInit()V

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    if-eqz v0, :cond_c

    .line 144
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->unInit()V

    .line 146
    :cond_c
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->unInitPopSettingUIs()V

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_camera_click_zoom"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_touch_event"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_zoom_ui_state"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_quick_video_action"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_restore_settings_notify_ui"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 2

    .line 425
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 426
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->currentModeSupportRecording()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mInModeSupportRecording:Z

    return-void
.end method

.method public updatePopSettingUIList()V
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz p0, :cond_b

    .line 240
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->updatePopSettingUIList(Ljava/util/List;)V

    :cond_b
    return-void
.end method
