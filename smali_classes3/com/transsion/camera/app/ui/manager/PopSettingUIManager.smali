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

    .line 571
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->onOrientationChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dXnkblAPmBSBIZBrypbnhRXOWWg(ILcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;)V
    .registers 2

    .line 592
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$h4_UmVR9nE9MM6zHNrZBnUQQ_h8(ILcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;)V
    .registers 2

    .line 601
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

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    .line 185
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    .line 186
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.video.SlowMotionModeEntry"

    .line 187
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    .line 188
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

    .line 291
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_a

    goto :goto_2f

    .line 295
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

    .line 296
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

    .line 425
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

    .line 310
    :cond_3
    const-string v0, "key_settings_entry"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 311
    new-instance v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$SettingFragmentListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$SettingFragmentListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    :cond_18
    const-string v0, "key_help_guide"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 314
    new-instance v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$HelpGuideListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$HelpGuideListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    :cond_2c
    const-string v0, "key_edit_watermark"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 317
    new-instance v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$EditWaterMarkListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$EditWaterMarkListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    :cond_40
    const-string v0, "key_gold_watermark"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 320
    new-instance v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$GoldWaterMarkListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$GoldWaterMarkListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    :cond_54
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_6e

    const-string v0, "key_pro_watermark"

    .line 323
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 324
    new-instance v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$ProWaterMarkListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$ProWaterMarkListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    :cond_6e
    const-string v0, "key_image_style"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 327
    new-instance v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$ImageStyleListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$ImageStyleListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    :cond_82
    const-string v0, "key_filter"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 330
    new-instance v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$ArcFilterListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$ArcFilterListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    :cond_96
    const-string v0, "key_color_style"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 333
    new-instance v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$ColorStyleListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$ColorStyleListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    :cond_aa
    const-string v0, "key_supernight_filter"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 336
    new-instance v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$SuperNightFilterListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$SuperNightFilterListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    :cond_be
    const-string v0, "key_celebrity_scene"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 339
    new-instance v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$CelebritySceneListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$CelebritySceneListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    :cond_d2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_d9

    .line 342
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 345
    :cond_d9
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_e0

    .line 346
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 349
    :cond_e0
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    if-eqz v0, :cond_e7

    .line 350
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V

    .line 353
    :cond_e7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_ee

    .line 354
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 356
    :cond_ee
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;->setItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI$ItemSelectHook;)V

    return-void
.end method

.method private isFastDoubleClick()Z
    .registers 7

    .line 1256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1257
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

    .line 1261
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

    .line 629
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 630
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 632
    :cond_a
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    return-void
.end method

.method private unInitPopSettingUIs()V
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 213
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

    .line 214
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_10

    .line 216
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 218
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipTopSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_4a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 219
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

    .line 220
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_35

    .line 222
    :cond_45
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipTopSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 224
    :cond_4a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipDownSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_6f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 225
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

    .line 226
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_5a

    .line 228
    :cond_6a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipDownSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_6f
    return-void
.end method

.method private updatePopSettingUIs(Ljava/util/List;Ljava/util/List;)V
    .registers 7

    if-eqz p1, :cond_28

    .line 268
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 269
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

    .line 270
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2, v1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->findPopSettingKey(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 271
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_c

    :cond_28
    if-eqz p2, :cond_6d

    .line 276
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 277
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

    .line 278
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->findPopSettingKey(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 279
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->initPopSettingItemUI(Lcom/transsion/camera/app/common/ui/setting/IPopSettingItemUI;)V

    .line 281
    :cond_4f
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v1, :cond_34

    if-eqz v0, :cond_34

    .line 282
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v1

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 283
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 284
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

    .line 1314
    new-instance v0, Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/transsion/camera/app/ui/PopSettingUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;)V

    return-object v0
.end method

.method public dismissPopup()Z
    .registers 2

    .line 582
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->flipScreen()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    if-eqz v0, :cond_f

    .line 583
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->dismissPopup()Z

    move-result p0

    return p0

    .line 585
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->dismissPopup()Z

    move-result p0

    return p0
.end method

.method public dismissPopupWithoutAnimation()Z
    .registers 2

    .line 418
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->flipScreen()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    if-eqz v0, :cond_f

    .line 419
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->dismissPopupWithoutAnimation()Z

    move-result p0

    return p0

    .line 421
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->dismissPopupWithoutAnimation()Z

    move-result p0

    return p0
.end method

.method public hidePopSettingUI()V
    .registers 2

    const/4 v0, 0x1

    .line 1042
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->hidePopSettingUI(Z)V

    return-void
.end method

.method public hidePopSettingUI(Z)V
    .registers 4

    .line 1046
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1047
    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(ZZ)V

    .line 1049
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    if-eqz p0, :cond_f

    .line 1050
    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(ZZ)V

    :cond_f
    return-void
.end method

.method public hidePopSettings()V
    .registers 2

    .line 1279
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 8

    .line 590
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    .line 591
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_f

    .line 592
    new-instance v1, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 594
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz v0, :cond_16

    .line 595
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->onCameraOperateAction(I)V

    .line 597
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    if-eqz v0, :cond_1d

    .line 598
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/IPopSettingUI;->onCameraOperateAction(I)V

    .line 600
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipDownSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_2b

    .line 601
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipTopSettingUIList:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_2b
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3ed

    const/16 v2, 0x8

    if-eq p1, v0, :cond_3d4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3c0

    const/4 v3, 0x3

    if-eq p1, v3, :cond_35e

    const/4 v3, 0x4

    if-eq p1, v3, :cond_342

    const/4 v3, 0x5

    if-eq p1, v3, :cond_33c

    if-eq p1, v2, :cond_332

    const/16 v3, 0x9

    if-eq p1, v3, :cond_322

    const/16 v3, 0xf

    if-eq p1, v3, :cond_310

    const/16 v3, 0x10

    if-eq p1, v3, :cond_301

    const/16 v3, 0x24

    if-eq p1, v3, :cond_2ec

    const/16 v3, 0x25

    if-eq p1, v3, :cond_2d8

    const/16 v3, 0x5a

    if-eq p1, v3, :cond_2b6

    const/16 v3, 0x5b

    if-eq p1, v3, :cond_37a

    const/16 v3, 0x5d

    if-eq p1, v3, :cond_2ad

    const/16 v3, 0x5e

    if-eq p1, v3, :cond_301

    packed-switch p1, :pswitch_data_410

    .line 603
    const-string v3, "com.transsion.camera.feature.mode.streetphoto.StreetPhotoModeEntry"

    sparse-switch p1, :sswitch_data_41a

    packed-switch p1, :pswitch_data_50c

    packed-switch p1, :pswitch_data_516

    goto/16 :goto_40f

    .line 956
    :pswitch_75
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->isFilterUIShow(Z)V

    .line 957
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setNeedPopSettingEntryAnimation(Z)V

    .line 958
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFilterUIShow:Z

    return-void

    .line 945
    :pswitch_82
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->isFilterUIShow(Z)V

    .line 946
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setNeedPopSettingEntryAnimation(Z)V

    .line 947
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mInModeSupportRecording:Z

    if-nez p1, :cond_95

    .line 948
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    .line 950
    :cond_95
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->hidePopSettingByFilter()V

    .line 951
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 952
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->isZoomStart(Z)V

    .line 953
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFilterUIShow:Z

    return-void

    .line 833
    :pswitch_a7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p1, :cond_dc

    .line 834
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    .line 835
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowAppearing(Z)V

    .line 836
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mNeedHideBackView:Z

    if-eqz p1, :cond_c8

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mImageStyleShow:Z

    if-nez p1, :cond_c8

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFilterUIShow:Z

    if-nez p1, :cond_c8

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCelebritySceneShow:Z

    if-nez p1, :cond_c8

    .line 838
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    .line 840
    :cond_c8
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_dc

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_dc

    .line 841
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;->isPopupShowing()Z

    move-result p1

    if-nez p1, :cond_dc

    .line 842
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopupWindowShow:Z

    .line 846
    :cond_dc
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mNeedHideBackView:Z

    goto/16 :goto_33c

    .line 988
    :pswitch_e0
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_40f

    .line 989
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopupWindowShow:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mNeedHideBackView:Z

    .line 990
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    .line 991
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowAppearing(Z)V

    .line 992
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopupWindowShow:Z

    xor-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->needPopupItemAnimation(Z)V

    .line 993
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopupWindowShow:Z

    return-void

    .line 913
    :pswitch_100
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsVideoRecording:Z

    .line 914
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mExposerTimeCapture:Z

    .line 915
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSelfTimerCapture:Z

    .line 916
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsSuperNightCapturing:Z

    .line 917
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsDialogShow:Z

    .line 918
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFilterUIShow:Z

    .line 919
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->onPause()V

    .line 920
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setExposerTimeCapture(Z)V

    .line 921
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->dismissPopupWithoutAnimation()Z

    return-void

    .line 1001
    :sswitch_11a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    const-string p1, "key_celebrity_scene"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->scrollPopSettingItemToCenter(Ljava/lang/String;)V

    return-void

    .line 983
    :sswitch_122
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->isCelebritySceneShow(Z)V

    .line 984
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setNeedPopSettingEntryAnimation(Z)V

    .line 985
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCelebritySceneShow:Z

    return-void

    .line 976
    :sswitch_12f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->isCelebritySceneShow(Z)V

    .line 977
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setNeedPopSettingEntryAnimation(Z)V

    .line 978
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 979
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    .line 980
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCelebritySceneShow:Z

    return-void

    .line 658
    :sswitch_146
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsSuperDefinitionColsing:Z

    return-void

    .line 655
    :sswitch_149
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsSuperDefinitionColsing:Z

    return-void

    .line 997
    :sswitch_14c
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mRearFrontCameraSwitching:Z

    .line 998
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    return-void

    .line 969
    :sswitch_154
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->isImageStyleShow(Z)V

    .line 970
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_166

    .line 971
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    .line 973
    :cond_166
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mImageStyleShow:Z

    return-void

    .line 961
    :sswitch_169
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->isImageStyleShow(Z)V

    .line 962
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 963
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_180

    .line 964
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    .line 966
    :cond_180
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mImageStyleShow:Z

    return-void

    .line 862
    :sswitch_183
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mZoomTriggerByPhysicalKey:Z

    goto/16 :goto_252

    .line 871
    :sswitch_187
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsAdJustExposure:Z

    return-void

    .line 868
    :sswitch_18a
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsAdJustExposure:Z

    return-void

    .line 673
    :sswitch_18d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p1, :cond_40f

    .line 674
    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    .line 675
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->getPopSettingVisible()I

    move-result p1

    if-nez p1, :cond_40f

    .line 676
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    return-void

    .line 636
    :sswitch_1a2
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    if-nez p1, :cond_1b6

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_1b6

    .line 637
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 638
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setExposerTimeCapture(Z)V

    .line 640
    :cond_1b6
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_1c3

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p1, :cond_1c3

    .line 641
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->dismissPopup()Z

    .line 643
    :cond_1c3
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mExposerTimeCapture:Z

    .line 644
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    return-void

    .line 890
    :sswitch_1c8
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsPreviewDown:Z

    .line 891
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    .line 892
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSelfTimerCapture:Z

    if-nez p1, :cond_40f

    .line 893
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mEnable:Z

    return-void

    .line 887
    :sswitch_1d3
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsPreviewDown:Z

    return-void

    .line 884
    :sswitch_1d6
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mEnable:Z

    return-void

    .line 751
    :sswitch_1d9
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setEnable(Z)V

    return-void

    .line 647
    :sswitch_1dd
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    if-nez p1, :cond_1eb

    .line 648
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 649
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setExposerTimeCapture(Z)V

    .line 651
    :cond_1eb
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mExposerTimeCapture:Z

    .line 652
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    return-void

    .line 942
    :sswitch_1f0
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsDialogShow:Z

    return-void

    .line 939
    :sswitch_1f3
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsDialogShow:Z

    return-void

    .line 609
    :sswitch_1f6
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    return-void

    .line 931
    :sswitch_1fc
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsUILoading:Z

    .line 932
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setEnable(Z)V

    .line 933
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsVideoRecording:Z

    return-void

    .line 623
    :sswitch_204
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->dismissPopupWithoutAnimation()Z

    .line 628
    :sswitch_207
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;)V

    const-wide/16 v1, 0x1c2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 685
    :sswitch_21b
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    const/16 v4, 0xe9

    if-nez v3, :cond_22e

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz v3, :cond_22e

    if-eq p1, v4, :cond_22b

    const/16 v5, 0xd7

    if-ne p1, v5, :cond_22e

    .line 688
    :cond_22b
    invoke-interface {v3, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    :cond_22e
    if-ne p1, v4, :cond_237

    .line 692
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz v0, :cond_237

    .line 693
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    :cond_237
    const/16 v0, 0xdb

    if-ne p1, v0, :cond_23e

    .line 697
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->resetState()V

    .line 699
    :cond_23e
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    return-void

    .line 924
    :sswitch_241
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->onResume()V

    .line 925
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    .line 926
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsPreviewDown:Z

    .line 927
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsModeSwitching:Z

    .line 928
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mRearFrontCameraSwitching:Z

    return-void

    .line 865
    :goto_252
    :sswitch_252
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->isZoomStart(Z)V

    return-void

    .line 855
    :sswitch_258
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mZoomTriggerByPhysicalKey:Z

    if-nez p1, :cond_261

    .line 856
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->isZoomStart(Z)V

    .line 858
    :cond_261
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mZoomTriggerByPhysicalKey:Z

    .line 859
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->hidePopSettingUI()V

    return-void

    .line 784
    :sswitch_267
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mEnable:Z

    .line 785
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 786
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    return-void

    .line 851
    :sswitch_274
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    .line 852
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mEnable:Z

    return-void

    .line 754
    :sswitch_27c
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    if-nez p1, :cond_285

    .line 755
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 757
    :cond_285
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    if-eqz p1, :cond_28c

    .line 758
    invoke-interface {p1, v1}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 760
    :cond_28c
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    return-void

    .line 909
    :sswitch_28f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->getPictureRatio()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->restoreSetting(Ljava/lang/String;)V

    .line 910
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    return-void

    .line 905
    :sswitch_29e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    .line 906
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->resetTBScrollerView()V

    return-void

    .line 936
    :pswitch_2a9
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->dismissPopup()Z

    return-void

    .line 732
    :cond_2ad
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->dismissPopupWithoutAnimation()Z

    .line 733
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsVideoRecording:Z

    .line 734
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    return-void

    .line 763
    :cond_2b6
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mExposerTimeCapture:Z

    .line 764
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz v3, :cond_2bf

    .line 765
    invoke-virtual {v3, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setExposerTimeCapture(Z)V

    .line 768
    :cond_2bf
    :pswitch_2bf
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSelfTimerCapture:Z

    .line 769
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz v3, :cond_2c8

    .line 770
    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    :cond_2c8
    :sswitch_2c8
    const/16 v2, 0xed

    if-ne p1, v2, :cond_2ce

    .line 774
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsSuperNightCapturing:Z

    .line 778
    :cond_2ce
    :sswitch_2ce
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p1, :cond_2d5

    .line 779
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 781
    :cond_2d5
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mEnable:Z

    return-void

    .line 713
    :cond_2d8
    :sswitch_2d8
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFilterUIShow:Z

    if-nez p1, :cond_2e4

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mImageStyleShow:Z

    if-nez p1, :cond_2e4

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCelebritySceneShow:Z

    if-eqz p1, :cond_40f

    :cond_2e4
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p0, :cond_40f

    .line 717
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    return-void

    .line 702
    :cond_2ec
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    if-nez p1, :cond_2f7

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p1, :cond_2f7

    .line 703
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 705
    :cond_2f7
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p1, :cond_2fe

    .line 706
    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    .line 708
    :cond_2fe
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    return-void

    .line 742
    :cond_301
    :pswitch_301
    :sswitch_301
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsPreviewDown:Z

    if-eqz p1, :cond_307

    .line 743
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mEnable:Z

    .line 745
    :cond_307
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsVideoRecording:Z

    .line 746
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setEnable(Z)V

    .line 747
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    return-void

    .line 724
    :cond_310
    :pswitch_310
    :sswitch_310
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->dismissPopupWithoutAnimation()Z

    .line 725
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 726
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    if-eqz p1, :cond_31f

    .line 727
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 729
    :cond_31f
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsVideoRecording:Z

    return-void

    .line 874
    :cond_322
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    .line 875
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsPreviewDown:Z

    if-nez p1, :cond_32d

    .line 876
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mEnable:Z

    .line 878
    :cond_32d
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setEnable(Z)V

    .line 879
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsVideoRecording:Z

    .line 881
    :cond_332
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->getPictureRatio()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPictureRatio(Ljava/lang/String;)V

    return-void

    .line 848
    :cond_33c
    :goto_33c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    return-void

    .line 789
    :cond_342
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    .line 790
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->getPictureRatio()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/PictureSizeHelper;->getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->updateTreasureBoxBG(Ljava/lang/String;Z)V

    .line 791
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->getPictureRatio()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->onPreViewSizeChanged(Ljava/lang/String;)V

    return-void

    .line 794
    :cond_35e
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsModeSwitching:Z

    .line 795
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->currentModeSupportRecording()Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mInModeSupportRecording:Z

    .line 796
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz v3, :cond_37a

    .line 797
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v3

    if-eqz v3, :cond_375

    .line 798
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopSettingContainerVisible(I)V

    .line 800
    :cond_375
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->updatePopBackViewBackground()V

    .line 803
    :cond_37a
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mExposerTimeCapture:Z

    .line 804
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz v2, :cond_383

    .line 805
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setExposerTimeCapture(Z)V

    .line 808
    :cond_383
    :pswitch_383
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSelfTimerCapture:Z

    .line 809
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFilterUIShow:Z

    if-nez v2, :cond_38d

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCelebritySceneShow:Z

    if-eqz v2, :cond_398

    :cond_38d
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mInModeSupportRecording:Z

    if-nez v2, :cond_398

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz v2, :cond_398

    .line 810
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    :cond_398
    :sswitch_398
    const/16 v2, 0xee

    if-ne p1, v2, :cond_39e

    .line 815
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsSuperNightCapturing:Z

    :cond_39e
    :sswitch_39e
    const/16 v2, 0x18

    if-ne p1, v2, :cond_3a9

    .line 819
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p1, :cond_3a9

    .line 820
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->isZoomStart(Z)V

    .line 822
    :cond_3a9
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p1, :cond_3b0

    .line 823
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    .line 825
    :cond_3b0
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsPreviewDown:Z

    if-nez p1, :cond_3b6

    .line 826
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mEnable:Z

    .line 828
    :cond_3b6
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mExposerTimeCapture:Z

    if-nez p1, :cond_40f

    .line 829
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setEnable(Z)V

    return-void

    .line 897
    :cond_3c0
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsModeSwitching:Z

    .line 898
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsUILoading:Z

    .line 899
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsSuperNightCapturing:Z

    .line 900
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->dismissPopupWithoutAnimation()Z

    .line 901
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v0, v0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->hidePopSettingView(ZZZ)V

    .line 902
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->resetTBScrollerView()V

    return-void

    .line 661
    :cond_3d4
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsVideoRecording:Z

    .line 662
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mExposerTimeCapture:Z

    .line 663
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSelfTimerCapture:Z

    .line 664
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mRearFrontCameraSwitching:Z

    .line 665
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p1, :cond_40f

    .line 666
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setExposerTimeCapture(Z)V

    .line 667
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsSuperDefinitionColsing:Z

    if-eqz p1, :cond_40f

    .line 668
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    return-void

    .line 612
    :cond_3ed
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsSuperNightCapturing:Z

    .line 613
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_40f

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopupWindowShow:Z

    if-eqz p1, :cond_40f

    .line 614
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->dismissPopupWithoutAnimation()Z

    .line 615
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopupWindowShow:Z

    .line 616
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->getPopSettingVisible()I

    move-result p1

    if-nez p1, :cond_40f

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mRearFrontCameraSwitching:Z

    if-nez p1, :cond_40f

    .line 618
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->startShowPopSettingAnimation(ZZ)V

    :cond_40f
    :goto_40f
    return-void

    :pswitch_data_410
    .packed-switch 0xb
        :pswitch_2bf
        :pswitch_383
        :pswitch_2a9
    .end packed-switch

    :sswitch_data_41a
    .sparse-switch
        0x13 -> :sswitch_29e
        0x14 -> :sswitch_28f
        0x15 -> :sswitch_27c
        0x16 -> :sswitch_274
        0x17 -> :sswitch_267
        0x18 -> :sswitch_398
        0x19 -> :sswitch_258
        0x1a -> :sswitch_252
        0x20 -> :sswitch_241
        0x3b -> :sswitch_301
        0x58 -> :sswitch_21b
        0x68 -> :sswitch_207
        0x6a -> :sswitch_207
        0x6b -> :sswitch_204
        0x6d -> :sswitch_1fc
        0x6e -> :sswitch_21b
        0x7c -> :sswitch_1f6
        0x7d -> :sswitch_1f6
        0x87 -> :sswitch_1f3
        0x88 -> :sswitch_1f0
        0x90 -> :sswitch_310
        0x91 -> :sswitch_301
        0x92 -> :sswitch_1dd
        0x9c -> :sswitch_1d9
        0x9d -> :sswitch_1d9
        0xa3 -> :sswitch_1f6
        0xa5 -> :sswitch_1f6
        0xb2 -> :sswitch_207
        0xb8 -> :sswitch_1d6
        0xc2 -> :sswitch_1d3
        0xc3 -> :sswitch_1c8
        0xd1 -> :sswitch_1a2
        0xd2 -> :sswitch_18d
        0xd3 -> :sswitch_2d8
        0xd7 -> :sswitch_21b
        0xd9 -> :sswitch_18a
        0xda -> :sswitch_187
        0xdb -> :sswitch_21b
        0xe0 -> :sswitch_183
        0xe3 -> :sswitch_252
        0xe9 -> :sswitch_21b
        0xea -> :sswitch_2d8
        0xed -> :sswitch_2c8
        0xee -> :sswitch_398
        0xf2 -> :sswitch_169
        0xf3 -> :sswitch_154
        0xf6 -> :sswitch_207
        0x101 -> :sswitch_2ce
        0x102 -> :sswitch_39e
        0x105 -> :sswitch_1f6
        0x111 -> :sswitch_310
        0x112 -> :sswitch_301
        0x149 -> :sswitch_14c
        0x150 -> :sswitch_149
        0x151 -> :sswitch_146
        0x183 -> :sswitch_12f
        0x184 -> :sswitch_122
        0x185 -> :sswitch_11a
        0x18b -> :sswitch_2ce
        0x18c -> :sswitch_39e
    .end sparse-switch

    :pswitch_data_50c
    .packed-switch 0x1c
        :pswitch_100
        :pswitch_e0
        :pswitch_a7
    .end packed-switch

    :pswitch_data_516
    .packed-switch 0x2e
        :pswitch_310
        :pswitch_301
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

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsUILoading:Z

    if-eqz v0, :cond_37

    .line 173
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->currentModeSupportRecording()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mInModeSupportRecording:Z

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->getPictureRatio()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPictureRatio(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mInModeSupportRecording:Z

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->onModeSwitch(Z)V

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    if-eqz v0, :cond_37

    .line 177
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mInModeSupportRecording:Z

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IPopSettingUI;->onModeSwitch(Z)V

    .line 180
    :cond_37
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPreviewRect:Landroid/graphics/Rect;

    return-void
.end method

.method public onBackPressed(Z)Z
    .registers 4

    .line 1232
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

    .line 1233
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->dismissPopup()Z

    return v0

    .line 1236
    :cond_19
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->getPopSettingVisible()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_37

    .line 1237
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFilterUIShow:Z

    if-nez p1, :cond_2b

    .line 1238
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 1240
    :cond_2b
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopupWindowShow:Z

    if-eqz p1, :cond_36

    .line 1241
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopSettingContainerVisible(I)V

    :cond_36
    return v0

    .line 1245
    :cond_37
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsPreviewDown:Z

    if-eqz p1, :cond_41

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsVideoRecording:Z

    if-eqz p1, :cond_41

    .line 1246
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mEnable:Z

    .line 1248
    :cond_41
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->flipScreen()Z

    move-result p1

    if-eqz p1, :cond_52

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    if-eqz p1, :cond_52

    .line 1249
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/IPopSettingUI;->onBackPressed()Z

    move-result p1

    if-eqz p1, :cond_52

    return v0

    .line 1252
    :cond_52
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onBatteryStatusChanged(ZII)V
    .registers 6

    .line 361
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onBatteryStatusChanged(ZII)V

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_23

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 363
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

    .line 364
    invoke-interface {v1, p1, p2, p3}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    goto :goto_13

    .line 367
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipTopSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_43

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 368
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

    .line 369
    invoke-interface {v1, p1, p2, p3}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    goto :goto_33

    .line 372
    :cond_43
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipDownSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_63

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_63

    .line 373
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

    .line 374
    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    goto :goto_53

    :cond_63
    return-void
.end method

.method public onConfigurationChanged()Z
    .registers 3

    .line 1223
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 1224
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 1225
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopSettingContainerVisible(I)V

    .line 1227
    :cond_f
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onConfigurationChanged()Z

    move-result p0

    return p0
.end method

.method public onCustomItemSelected()V
    .registers 2

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFragmentListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;

    if-eqz v0, :cond_7

    .line 393
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;->onProWaterMarkClicked()V

    .line 395
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

    .line 385
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;

    if-eqz p0, :cond_7

    .line 386
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;->onItemSelected()V

    :cond_7
    return-void
.end method

.method public onLottieAnimationEnd()V
    .registers 1

    .line 447
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p0, :cond_7

    .line 448
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->onLottieAnimationEnd()V

    :cond_7
    return-void
.end method

.method public onLottieAnimationStart()V
    .registers 1

    .line 435
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p0, :cond_7

    .line 436
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->onLottieAnimationStart()V

    :cond_7
    return-void
.end method

.method public onLottieAnimationUpdate(F)V
    .registers 2

    .line 441
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p0, :cond_7

    .line 442
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->onLottieAnimationUpdate(F)V

    :cond_7
    return-void
.end method

.method public onOrientationChanged(IZ)V
    .registers 4

    .line 569
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 570
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz p2, :cond_f

    .line 571
    new-instance v0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 573
    :cond_f
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p2, :cond_16

    .line 574
    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->onOrientationChanged(I)V

    .line 576
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    if-eqz p0, :cond_1d

    .line 577
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    :cond_1d
    return-void
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 3

    const/4 v0, 0x1

    .line 1199
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsOnScale:Z

    .line 1200
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .registers 3

    const/4 v0, 0x0

    .line 1205
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsOnScale:Z

    .line 1206
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScreenFormChanged(IZ)V
    .registers 4

    .line 554
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScreenFormChanged(IZ)V

    .line 555
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz v0, :cond_a

    .line 556
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/PopSettingUI;->onScreenFormChanged(IZ)V

    .line 558
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    if-eqz v0, :cond_11

    .line 559
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/IScreenFormControl;->onScreenFormChanged(IZ)V

    .line 561
    :cond_11
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsPreviewDown:Z

    if-eqz p1, :cond_1a

    const/4 p1, 0x0

    .line 562
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mEnable:Z

    .line 563
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    :cond_1a
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 16

    const/4 v0, 0x0

    if-eqz p1, :cond_225

    if-nez p2, :cond_7

    goto/16 :goto_225

    .line 1064
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 1065
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    .line 1067
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingSupport:Z

    if-nez v3, :cond_1e

    return v0

    .line 1071
    :cond_1e
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->flipScreen()Z

    move-result v3

    if-eqz v3, :cond_25

    return v0

    .line 1075
    :cond_25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isReachPreviewBoundary(FF)Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x5

    if-eqz v3, :cond_42

    iget v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-eq v3, v7, :cond_42

    if-eq v3, v6, :cond_42

    if-eq v3, v5, :cond_42

    if-eq v3, v4, :cond_42

    return v0

    .line 1083
    :cond_42
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsVideoRecording:Z

    if-nez v3, :cond_225

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsAdJustExposure:Z

    if-nez v3, :cond_225

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mEnable:Z

    if-eqz v3, :cond_225

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsUILoading:Z

    if-nez v3, :cond_225

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mExposerTimeCapture:Z

    if-nez v3, :cond_225

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsSuperNightCapturing:Z

    if-nez v3, :cond_225

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsModeSwitching:Z

    if-eqz v3, :cond_60

    goto/16 :goto_225

    .line 1093
    :cond_60
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v3

    if-eqz v3, :cond_81

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFilterUIShow:Z

    if-eqz v3, :cond_6e

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mInModeSupportRecording:Z

    if-eqz v3, :cond_80

    :cond_6e
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mImageStyleShow:Z

    if-eqz v3, :cond_7c

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v8, "com.transsion.camera.feature.mode.streetphoto.StreetPhotoModeEntry"

    .line 1095
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    :cond_7c
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCelebritySceneShow:Z

    if-eqz v3, :cond_81

    :cond_80
    return v0

    .line 1100
    :cond_81
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsDialogShow:Z

    if-eqz v3, :cond_8d

    .line 1101
    sget-object p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onScroll mIsDialogShow,return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 1105
    :cond_8d
    iget v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/high16 v8, 0x43340000    # 180.0f

    const/high16 v9, -0x3ccc0000    # -180.0f

    const/4 v10, 0x1

    if-eqz v3, :cond_1e9

    if-eq v3, v5, :cond_1e9

    if-ne v3, v4, :cond_9c

    goto/16 :goto_1e9

    :cond_9c
    if-ne v3, v10, :cond_17e

    .line 1126
    iget v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_d8

    .line 1127
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v3, v2

    if-ltz v2, :cond_d7

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsOnScale:Z

    if-eqz v2, :cond_b5

    goto :goto_d7

    :cond_b5
    cmpg-float v2, v1, v9

    if-gez v2, :cond_c4

    .line 1130
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v2

    if-nez v2, :cond_c4

    .line 1131
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {v2, v0, v10, v10}, Lcom/transsion/camera/app/ui/PopSettingUI;->showPopSettingView(ZZZ)V

    :cond_c4
    cmpl-float v1, v1, v8

    if-lez v1, :cond_d3

    .line 1133
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_d3

    .line 1134
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 1136
    :cond_d3
    iput-boolean v10, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    goto/16 :goto_220

    :cond_d7
    :goto_d7
    return v0

    :cond_d8
    const/16 v4, 0x10e

    if-ne v3, v4, :cond_110

    .line 1138
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v3, v2

    if-ltz v2, :cond_10f

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsOnScale:Z

    if-eqz v2, :cond_ed

    goto :goto_10f

    :cond_ed
    cmpl-float v2, v1, v8

    if-lez v2, :cond_fc

    .line 1141
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v2

    if-nez v2, :cond_fc

    .line 1142
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {v2, v0, v10, v10}, Lcom/transsion/camera/app/ui/PopSettingUI;->showPopSettingView(ZZZ)V

    :cond_fc
    cmpg-float v1, v1, v9

    if-gez v1, :cond_10b

    .line 1144
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_10b

    .line 1145
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 1147
    :cond_10b
    iput-boolean v10, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    goto/16 :goto_220

    :cond_10f
    :goto_10f
    return v0

    :cond_110
    if-nez v3, :cond_146

    .line 1149
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_145

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsOnScale:Z

    if-eqz v1, :cond_123

    goto :goto_145

    .line 1152
    :cond_123
    iput-boolean v10, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    cmpl-float v1, v2, v8

    if-lez v1, :cond_134

    .line 1153
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_134

    .line 1154
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {v1, v0, v10, v10}, Lcom/transsion/camera/app/ui/PopSettingUI;->showPopSettingView(ZZZ)V

    :cond_134
    cmpg-float v1, v2, v9

    if-gez v1, :cond_220

    .line 1156
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_220

    .line 1157
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    goto/16 :goto_220

    :cond_145
    :goto_145
    return v0

    :cond_146
    const/16 v4, 0xb4

    if-ne v3, v4, :cond_220

    .line 1160
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_17d

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsOnScale:Z

    if-eqz v1, :cond_15b

    goto :goto_17d

    .line 1163
    :cond_15b
    iput-boolean v10, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    cmpg-float v1, v2, v9

    if-gez v1, :cond_16c

    .line 1164
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_16c

    .line 1165
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {v1, v0, v10, v10}, Lcom/transsion/camera/app/ui/PopSettingUI;->showPopSettingView(ZZZ)V

    :cond_16c
    cmpl-float v1, v2, v8

    if-lez v1, :cond_220

    .line 1167
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_220

    .line 1168
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    goto/16 :goto_220

    :cond_17d
    :goto_17d
    return v0

    :cond_17e
    if-ne v3, v6, :cond_1b4

    .line 1172
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_1b3

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsOnScale:Z

    if-eqz v1, :cond_191

    goto :goto_1b3

    .line 1175
    :cond_191
    iput-boolean v10, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    cmpg-float v1, v2, v9

    if-gez v1, :cond_1a2

    .line 1176
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_1a2

    .line 1177
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {v1, v0, v10, v10}, Lcom/transsion/camera/app/ui/PopSettingUI;->showPopSettingView(ZZZ)V

    :cond_1a2
    cmpl-float v1, v2, v8

    if-lez v1, :cond_220

    .line 1179
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_220

    .line 1180
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    goto/16 :goto_220

    :cond_1b3
    :goto_1b3
    return v0

    :cond_1b4
    if-ne v3, v7, :cond_220

    .line 1183
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_1e8

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsOnScale:Z

    if-eqz v1, :cond_1c7

    goto :goto_1e8

    .line 1186
    :cond_1c7
    iput-boolean v10, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    cmpl-float v1, v2, v8

    if-lez v1, :cond_1d8

    .line 1187
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_1d8

    .line 1188
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {v1, v0, v10, v10}, Lcom/transsion/camera/app/ui/PopSettingUI;->showPopSettingView(ZZZ)V

    :cond_1d8
    cmpg-float v1, v2, v9

    if-gez v1, :cond_220

    .line 1190
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_220

    .line 1191
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    goto :goto_220

    :cond_1e8
    :goto_1e8
    return v0

    .line 1108
    :cond_1e9
    :goto_1e9
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_1f6

    return v0

    .line 1111
    :cond_1f6
    iput-boolean v10, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    cmpg-float v2, v1, v9

    if-gez v2, :cond_20c

    .line 1112
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsOnScale:Z

    if-nez v2, :cond_20c

    .line 1113
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v2

    if-eqz v2, :cond_207

    return v0

    .line 1116
    :cond_207
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {v2, v0, v10, v10}, Lcom/transsion/camera/app/ui/PopSettingUI;->showPopSettingView(ZZZ)V

    :cond_20c
    cmpl-float v1, v1, v8

    if-lez v1, :cond_220

    .line 1118
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsOnScale:Z

    if-nez v1, :cond_220

    .line 1119
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->isFastDoubleClick()Z

    move-result v1

    if-eqz v1, :cond_21b

    return v0

    .line 1122
    :cond_21b
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    .line 1194
    :cond_220
    :goto_220
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0

    :cond_225
    :goto_225
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

    .line 1056
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onSingleTapConfirmed(FF)Z

    move-result p0

    return p0
.end method

.method public onSingleTapUp(FF)Z
    .registers 3

    .line 1218
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onSingleTapUp(FF)Z

    move-result p0

    return p0
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1211
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->isZoomStart(Z)V

    .line 1212
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsScrolling:Z

    .line 1213
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public resetTBScrollerView()V
    .registers 1

    .line 1289
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p0, :cond_7

    .line 1290
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->resetTBScrollerView()V

    :cond_7
    return-void
.end method

.method public setEnable(Z)V
    .registers 7

    .line 193
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSettingUIList:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 195
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

    .line 196
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

    .line 199
    :cond_2e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipTopSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_57

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_57

    .line 200
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

    .line 201
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

    .line 204
    :cond_57
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipDownSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_80

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_80

    .line 205
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

    .line 206
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

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    if-nez v0, :cond_5

    return-void

    .line 252
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipTopSettingUIList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->updatePopSettingUIs(Ljava/util/List;Ljava/util/List;)V

    .line 253
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipTopSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_11

    .line 254
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 256
    :cond_11
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipTopSettingUIList:Ljava/util/List;

    .line 258
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipDownSettingUIList:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->updatePopSettingUIs(Ljava/util/List;Ljava/util/List;)V

    .line 259
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipDownSettingUIList:Ljava/util/List;

    if-eqz p1, :cond_1f

    .line 260
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 262
    :cond_1f
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipDownSettingUIList:Ljava/util/List;

    .line 264
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipTopSettingUIList:Ljava/util/List;

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/app/ui/IPopSettingUI;->setFlipSettingUIList(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public setItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;)V
    .registers 2

    .line 380
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;

    return-void
.end method

.method public setPopSettingContainerVisible(I)V
    .registers 2

    .line 1295
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p0, :cond_7

    .line 1296
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopSettingContainerVisible(I)V

    :cond_7
    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 4

    .line 400
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    if-eqz p1, :cond_3d

    .line 402
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_3d

    .line 405
    :cond_c
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 406
    const-string v0, "key_camera_click_zoom"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 407
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_wide_camera_touch_event"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 408
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_zoom_ui_state"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 409
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_quick_video_action"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 410
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

    .line 414
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

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSettingUIList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->updatePopSettingUIs(Ljava/util/List;Ljava/util/List;)V

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 235
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 237
    :cond_c
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSettingUIList:Ljava/util/List;

    .line 238
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->setSettingUIList(Ljava/util/List;)V

    const/4 p1, 0x1

    .line 239
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->setEnable(Z)V

    return-void
.end method

.method public setTreasureBoxBackViewVisible(I)V
    .registers 2

    .line 1283
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p0, :cond_7

    .line 1284
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setPopWindowBackViewVisible(I)V

    :cond_7
    return-void
.end method

.method public showPopItem()V
    .registers 1

    .line 1301
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p0, :cond_7

    .line 1302
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->showPopItem()V

    :cond_7
    return-void
.end method

.method public showPopSettingUI()V
    .registers 4

    .line 1033
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 1034
    invoke-virtual {v0, v2, v2, v1}, Lcom/transsion/camera/app/ui/PopSettingUI;->showPopSettingView(ZZZ)V

    .line 1036
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mFlipPopSettingUI:Lcom/transsion/camera/app/ui/IPopSettingUI;

    if-eqz p0, :cond_10

    .line 1037
    invoke-interface {p0, v2, v2, v1}, Lcom/transsion/camera/app/ui/IPopSettingUI;->showPopSettingView(ZZZ)V

    :cond_10
    return-void
.end method

.method public showPopSettings(ZZ)V
    .registers 4

    .line 1266
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsDialogShow:Z

    if-nez v0, :cond_34

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsModeSwitching:Z

    if-eqz v0, :cond_9

    goto :goto_34

    .line 1270
    :cond_9
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsVideoRecording:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mIsSuperNightCapturing:Z

    if-nez v0, :cond_1b

    .line 1271
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->updatePopSettingUIList()V

    .line 1272
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/camera/app/ui/PopSettingUI;->showPopSettingView(ZZZ)V

    return-void

    .line 1274
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

    .line 1267
    :cond_34
    :goto_34
    sget-object p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "showPopSettings return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public startShowPopAnimation(ZZ)V
    .registers 3

    .line 1307
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz p0, :cond_7

    .line 1308
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

    .line 429
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 430
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->currentModeSupportRecording()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mInModeSupportRecording:Z

    return-void
.end method

.method public updatePopSettingUIList()V
    .registers 2

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mPopSettingUI:Lcom/transsion/camera/app/ui/PopSettingUI;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz p0, :cond_b

    .line 244
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->updatePopSettingUIList(Ljava/util/List;)V

    :cond_b
    return-void
.end method
