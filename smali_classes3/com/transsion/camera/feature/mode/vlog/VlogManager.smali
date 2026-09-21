.class public Lcom/transsion/camera/feature/mode/vlog/VlogManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/IVlog;
.implements Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;
.implements Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/ICutSame$INotifyListener;
.implements Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/IFreeShot$INotifyListener;
.implements Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$OnTopItemClick;
.implements Lcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage$ITemplateListener;
.implements Lcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage$IDraftEntryListener;


# static fields
.field private static final ACCESS_KEY:Ljava/lang/String; = "vlog_manager_key"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field mActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPage:I
    .annotation build Lcom/transsion/camera/feature/mode/vlog/IVlog$Page;
    .end annotation
.end field

.field private mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

.field private mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

.field private final mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

.field private mFreeShot:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

.field private mHomePage:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;

.field private mInitialed:Z

.field private final mOperator:Lcom/transsion/camera/feature/mode/vlog/IVlogOperator;

.field private mOrientation:I

.field private final mPostProcessFrameSelect:Z

.field private mRecorderWrapper:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

.field private mScreenFormType:I

.field private mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

.field private mSettingStore:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field

.field private final mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mTemplateCategoryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplateLoaded:Z

.field private mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

.field private mTopBarUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;

.field private mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;

.field private mVlogVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

.field private final mWideCameraTranslation:I


# direct methods
.method public static synthetic $r8$lambda$9uZV3bH38X9nDiY6J_95dnjaKwY(Ljava/util/List;Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)Z
    .registers 3

    .line 597
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getOrientation()I

    move-result p1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOrientation()I

    move-result p0

    if-eq p1, p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    return v0
.end method

.method public static synthetic $r8$lambda$PJ_riVvU0MV6ozihXwyNy-VhHPU(Lcom/transsion/camera/feature/mode/vlog/VlogManager;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->lambda$showDraftEntryDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gfNC8X3We2W2yjFXcH_ol98qPg4(Lcom/transsion/camera/feature/mode/vlog/VlogManager;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->lambda$showDraftEntryDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ivrTAfTU7gIgjBjBZuoGIeMm-UY(Lcom/transsion/camera/feature/mode/vlog/VlogManager;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->lambda$notifyActionToUI$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oUGAsVuB0elpRXQROrB-QSzjTLU(Lcom/transsion/camera/feature/mode/vlog/VlogManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qlNLHFltZ2cQ_ksQEDS3wvY54U4(Lcom/transsion/camera/feature/mode/vlog/VlogManager;Landroid/content/DialogInterface;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->lambda$showDraftEntryDialog$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 59
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_VlogManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;ILcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/feature/mode/vlog/IVlogOperator;I)V
    .registers 10

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/VlogManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/vlog/VlogManager;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 648
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/VlogManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/feature/mode/vlog/VlogManager;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    .line 101
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 102
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mContext:Landroid/content/Context;

    .line 103
    iput-object p7, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mOperator:Lcom/transsion/camera/feature/mode/vlog/IVlogOperator;

    .line 104
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    .line 105
    iput p5, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mOrientation:I

    .line 106
    iput p8, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mScreenFormType:I

    const/4 p4, 0x0

    .line 107
    iput-boolean p4, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTemplateLoaded:Z

    .line 108
    invoke-interface {p6}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p5

    iput-object p5, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 109
    iget-object p5, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    invoke-interface {p2, p5}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p5, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_wide_camera_translation_distance:I

    .line 111
    invoke-virtual {p2, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mWideCameraTranslation:I

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/vlog/R$bool;->vlog_mode_cutsame_support_post_frame_select:I

    .line 113
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mPostProcessFrameSelect:Z

    .line 115
    invoke-direct {p0, p3, p6}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->initCommonUIControllers(Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 116
    invoke-direct {p0, p6}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->initSubManagers(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 118
    iput p4, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCurrentPage:I

    return-void
.end method

.method private enterCutSameRecorder()V
    .registers 3

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->copy()Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->setTemplateItemData(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V

    .line 389
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->setAttribution(I)V

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->refresh(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V

    const/4 v0, 0x2

    .line 391
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->updateCurrentPage(I)V

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTopBarUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->setTemplateOrientation(I)V

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getOrientation()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->setTemplateOrientation(I)V

    return-void
.end method

.method private enterFreeShotRecorder()V
    .registers 4

    .line 397
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mFreeShot:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->setAttribution(ILjava/util/List;)V

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->refresh(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V

    .line 399
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->updateCurrentPage(I)V

    .line 400
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->setTemplateOrientation(I)V

    return-void
.end method

.method private hideDialog()V
    .registers 1

    .line 371
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    if-eqz p0, :cond_7

    .line 372
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->hide()V

    :cond_7
    return-void
.end method

.method private initCommonUIControllers(Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 19

    move-object/from16 v3, p0

    .line 126
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;

    iget-object v1, v3, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget v2, v3, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mScreenFormType:I

    iget v4, v3, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mOrientation:I

    invoke-direct {v0, v1, v2, v4}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;-><init>(Lcom/transsion/camera/app/common/IAppUI;II)V

    iput-object v0, v3, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;

    .line 127
    new-instance v5, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    iget-object v6, v3, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mContext:Landroid/content/Context;

    iget-object v7, v3, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget v8, v3, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mOrientation:I

    iget v9, v3, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mScreenFormType:I

    move-object/from16 v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;IILcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    iput-object v5, v3, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    .line 128
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;

    iget-object v1, v3, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget v2, v3, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mScreenFormType:I

    move-object v5, v3

    iget v3, v5, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mOrientation:I

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;-><init>(Lcom/transsion/camera/app/common/IAppUI;IILcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$OnTopItemClick;)V

    move-object v3, v5

    iput-object v0, v3, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTopBarUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;

    .line 129
    new-instance v10, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    iget-object v11, v3, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mContext:Landroid/content/Context;

    iget-boolean v13, v3, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mPostProcessFrameSelect:Z

    iget v14, v3, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mOrientation:I

    move-object/from16 v12, p1

    move-object/from16 v15, p2

    invoke-direct/range {v10 .. v15}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;-><init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;ZILcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    iput-object v10, v3, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mRecorderWrapper:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    .line 130
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    iget-object v1, v3, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mContext:Landroid/content/Context;

    iget-object v2, v3, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget v4, v3, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mOrientation:I

    iget v5, v3, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mScreenFormType:I

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;II)V

    iput-object v0, v3, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    return-void
.end method

.method private initSubManagers(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 13

    .line 134
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mScreenFormType:I

    iget v4, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mOrientation:I

    move-object v6, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;IILcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage$IDraftEntryListener;Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mHomePage:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;

    .line 135
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mRecorderWrapper:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    iget v7, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mOrientation:I

    iget v8, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mScreenFormType:I

    move-object v10, p0

    move-object v9, p1

    invoke-direct/range {v0 .. v10}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;IILcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    .line 137
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mRecorderWrapper:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    iget v7, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mOrientation:I

    iget v8, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mScreenFormType:I

    invoke-direct/range {v0 .. v10}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;IILcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mFreeShot:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    .line 139
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mHomePage:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Z)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mSettingStore:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mHomePage:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->setTemplateListener(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage$ITemplateListener;)V

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->setNotifyListener(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/ICutSame$INotifyListener;)V

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mFreeShot:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->setNotifyListener(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/IFreeShot$INotifyListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 185
    const-string v0, "key_fold_switch_preview"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 186
    const-string p1, "on"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/16 p1, 0x271d

    goto :goto_15

    :cond_13
    const/16 p1, 0x271e

    :goto_15
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->notifyActionToUI(I)V

    :cond_18
    return-void
.end method

.method private synthetic lambda$notifyActionToUI$5(I)V
    .registers 2

    .line 655
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->onOperateAction(I)V

    return-void
.end method

.method private synthetic lambda$showDraftEntryDialog$1(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 350
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/16 p2, 0x13

    const-string v0, "1"

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 351
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->delete()V

    .line 352
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    if-eqz p1, :cond_18

    .line 353
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->enterCutSameRecorder()V

    goto :goto_1b

    .line 355
    :cond_18
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->enterFreeShotRecorder()V

    .line 357
    :goto_1b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->hide()V

    return-void
.end method

.method private synthetic lambda$showDraftEntryDialog$2(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 360
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/16 p2, 0x13

    const-string v0, "0"

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->onDraftClick()V

    .line 362
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->hide()V

    return-void
.end method

.method private synthetic lambda$showDraftEntryDialog$3(Landroid/content/DialogInterface;)V
    .registers 2

    const/4 p1, 0x0

    .line 365
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    return-void
.end method

.method private onOperateAction(I)V
    .registers 5

    .line 660
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOperateAction, action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mHomePage:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->notifyCameraOperateActionToUI(I)V

    .line 662
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->notifyCameraOperateActionToUI(I)V

    .line 663
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mFreeShot:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->notifyCameraOperateActionToUI(I)V

    .line 664
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTopBarUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->notifyCameraOperateActionToUI(I)V

    .line 665
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->notifyCameraOperateActionToUI(I)V

    .line 666
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->notifyCameraOperateActionToUI(I)V

    .line 667
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->notifyCameraOperateActionToUI(I)V

    return-void
.end method

.method private recoverCutSameFromDraft(Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;)V
    .registers 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTemplateCategoryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;

    if-eqz v3, :cond_18

    goto :goto_42

    .line 762
    :cond_18
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->getItemList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 763
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->getTemplateId()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cutsame/solution/template/model/TemplateItem;->getId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_20

    .line 764
    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->copy()Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    move-result-object v1

    const/4 v3, 0x1

    goto :goto_9

    :cond_42
    :goto_42
    if-eqz v3, :cond_fe

    if-eqz v1, :cond_fe

    .line 773
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->getSegmentItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v0, v3, :cond_5a

    goto/16 :goto_fe

    .line 778
    :cond_5a
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->getComposeState()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->setComposeState(I)V

    move v0, v2

    .line 779
    :goto_62
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->getSegmentItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_c3

    .line 780
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    .line 781
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->getSegmentItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->getPortraitPath()Ljava/lang/String;

    move-result-object v5

    .line 782
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->getSegmentItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->getLandscapePath()Ljava/lang/String;

    move-result-object v6

    .line 783
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->getSegmentItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->getSourceStartTime()J

    move-result-wide v7

    .line 784
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->getSegmentItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->getOrientation()I

    move-result v9

    .line 785
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->getSegmentItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->getOriginDuration()J

    move-result-wide v10

    .line 780
    invoke-virtual/range {v4 .. v11}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->fill(Ljava/lang/String;Ljava/lang/String;JIJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 789
    :cond_c3
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recoverFromDraft, draft state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->getComposeState()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 790
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->setAttribution(I)V

    .line 791
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->setTemplateItemData(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V

    const/4 p1, 0x2

    .line 792
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->updateCurrentPage(I)V

    .line 793
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTopBarUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getOrientation()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->setTemplateOrientation(I)V

    .line 794
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getOrientation()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->setTemplateOrientation(I)V

    return-void

    .line 774
    :cond_fe
    :goto_fe
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "recoverFromDraft, draft recover error >> draft item invalid"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private recoverFreeShotFromDraft(Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;)V
    .registers 13

    .line 798
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->getSegmentItems()Ljava/util/List;

    move-result-object p1

    .line 799
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 800
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;

    .line 801
    new-instance v3, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->getOriginPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->getWidth()I

    move-result v5

    .line 802
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->getHlResults()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->getOrientation()I

    move-result v8

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/SegmentItem;->getOriginDuration()J

    move-result-wide v9

    invoke-direct/range {v3 .. v10}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;-><init>(Ljava/lang/String;IILjava/util/List;IJ)V

    .line 803
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 806
    :cond_3a
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recoverFreeShotFromDraft, draft size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 807
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mFreeShot:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->setAttribution(ILjava/util/List;)V

    const/4 p1, 0x1

    .line 808
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->updateCurrentPage(I)V

    .line 809
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->setTemplateOrientation(I)V

    return-void
.end method

.method private recoverFromDraft()V
    .registers 4

    .line 738
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->loadDraft()Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 739
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->isValid()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_24

    .line 744
    :cond_f
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->getStyle()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_19

    .line 745
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->recoverCutSameFromDraft(Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;)V

    .line 748
    :cond_19
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;->getStyle()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    .line 749
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->recoverFreeShotFromDraft(Lcom/transsion/camera/feature/mode/vlog/bean/DraftItem;)V

    :cond_23
    return-void

    .line 740
    :cond_24
    :goto_24
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "recoverFromDraft, draft recover error >> no draft store"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private resetTempLocation()V
    .registers 2

    .line 813
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mSettingStore:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->restoreTempDisplay()V

    .line 814
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mHomePage:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->resetTempDisplayDefault()V

    return-void
.end method

.method private showDraftEntryDialog()V
    .registers 4

    .line 344
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->hideDialog()V

    .line 346
    new-instance v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mScreenFormType:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 347
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mScreenFormType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mOrientation:I

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setOrientation(I)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 348
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/vlog/R$string;->vlog_abandon_saved_draft:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 349
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/vlog/R$string;->vlog_abandon:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/vlog/VlogManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/vlog/VlogManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 359
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/vlog/R$string;->vlog_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/vlog/VlogManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/vlog/VlogManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 364
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->create()Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    .line 365
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/VlogManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/vlog/VlogManager;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string/jumbo v1, "vlog_dialog"

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    return-void
.end method

.method private updateDialog()V
    .registers 4

    .line 377
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mOrientation:I

    .line 378
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mScreenFormType:I

    if-eqz v1, :cond_9

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    :cond_9
    const/4 v0, 0x0

    .line 382
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    if-eqz p0, :cond_11

    .line 383
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->setOrientation(I)V

    :cond_11
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mSettingStore:Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/SettingStore;->restoreToDefault()V

    return-void
.end method

.method public enterCutSameRecorderAgain(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V
    .registers 4

    .line 405
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "enterCutSameRecorderAgain from editor"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->setTemplateItemData(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V

    .line 408
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->setAttribution(I)V

    .line 409
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->updateCurrentPage(I)V

    .line 410
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTopBarUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->setTemplateOrientation(I)V

    .line 411
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getOrientation()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->setTemplateOrientation(I)V

    return-void
.end method

.method public enterFreeShotRecorderAgain(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;)V"
        }
    .end annotation

    .line 416
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "enterCutSameRecorderAgain from editor"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mFreeShot:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->setAttribution(ILjava/util/List;)V

    const/4 p1, 0x1

    .line 419
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->updateCurrentPage(I)V

    .line 420
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->setTemplateOrientation(I)V

    return-void
.end method

.method public enterHomePage()V
    .registers 3

    .line 425
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->resetTempLocation()V

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mHomePage:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->setSource(I)V

    const/4 v0, 0x0

    .line 427
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->updateCurrentPage(I)V

    return-void
.end method

.method public init()V
    .registers 4

    .line 147
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init vlog"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mHomePage:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->init()V

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTopBarUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->init()V

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->init()V

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mFreeShot:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->init()V

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->init()V

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->init()V

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->init(Landroid/view/ViewGroup;)V

    .line 157
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->updateCurrentPage(I)V

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_fold_switch_preview"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mInitialed:Z

    return-void
.end method

.method public isZoomUISupported()Z
    .registers 1

    .line 827
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCurrentPage:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public notifyActionToUI(I)V
    .registers 4

    .line 652
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 653
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->onOperateAction(I)V

    return-void

    .line 655
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/VlogManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/vlog/VlogManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/VlogManager;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBackPressed()Z
    .registers 6

    .line 250
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackPressed, mCurrentPage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 254
    const-string/jumbo v0, "vlog_manager_key"

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->canAccess(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_23

    return v2

    .line 258
    :cond_23
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCurrentPage:I

    const/4 v3, 0x0

    if-nez v1, :cond_2c

    .line 259
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->reAccess(Ljava/lang/String;)V

    return v3

    :cond_2c
    if-eq v1, v2, :cond_3b

    const/4 v4, 0x2

    if-eq v1, v4, :cond_34

    move v1, v3

    move v2, v1

    goto :goto_41

    .line 267
    :cond_34
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->onBackClick()Z

    move-result v1

    goto :goto_41

    .line 271
    :cond_3b
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mFreeShot:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->onBackClick()Z

    move-result v1

    :goto_41
    if-nez v1, :cond_4b

    .line 279
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mHomePage:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;

    invoke-virtual {v1, v3}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->setSource(I)V

    .line 280
    invoke-virtual {p0, v3}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->updateCurrentPage(I)V

    .line 283
    :cond_4b
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->reAccess(Ljava/lang/String;)V

    return v2
.end method

.method public onBackPressedForUI()Z
    .registers 3

    .line 235
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCurrentPage:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 p0, 0x0

    return p0

    .line 237
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->onBackPressedForUI()Z

    move-result p0

    return p0

    .line 240
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mFreeShot:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->onBackPressedForUI()Z

    move-result p0

    return p0
.end method

.method public onBatteryStatusChanged(ZII)V
    .registers 4

    .line 671
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTopBarUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->onBatteryStatusChanged(ZII)V

    return-void
.end method

.method public onCameraStateChanged(I)V
    .registers 5

    .line 632
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraStateChanged state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->onCameraStateChanged(I)V

    .line 634
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mFreeShot:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->onCameraStateChanged(I)V

    .line 635
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->onCameraStateChanged(I)V

    .line 636
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mRecorderWrapper:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->onCameraStateChanged(I)V

    return-void
.end method

.method public onComposeClick()V
    .registers 3

    .line 700
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onComposeClick"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 701
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCurrentPage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 702
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->composeVlogIfNeed()V

    return-void

    .line 704
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mFreeShot:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->composeVlogIfNeed()V

    return-void
.end method

.method public onDraftBoxEntryClick()V
    .registers 1

    return-void
.end method

.method public onDraftClick()V
    .registers 5

    .line 715
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraftClick, mTemplateLoaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTemplateLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 717
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTemplateLoaded:Z

    if-nez v1, :cond_1d

    goto :goto_32

    .line 721
    :cond_1d
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->isReady()Z

    move-result v1

    if-nez v1, :cond_29

    .line 722
    const-string p0, "onDraftClick, but cut same init failed"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 728
    :cond_29
    const-string/jumbo v0, "vlog_manager_key"

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->canAccess(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    :goto_32
    return-void

    .line 732
    :cond_33
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 733
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->recoverFromDraft()V

    .line 734
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->reAccess(Ljava/lang/String;)V

    return-void
.end method

.method public onFirstSteadyFrame()V
    .registers 2

    .line 642
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->onFirstSteadyFrameArrive()V

    .line 643
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTopBarUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->onFirstSteadyFrameArrive()V

    .line 644
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mFreeShot:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->onFirstSteadyFrameArrive()V

    .line 645
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->onFirstSteadyFrame()V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 6

    .line 322
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenFormChanged, screenFormType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", animation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentPage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 324
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mScreenFormType:I

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    if-eqz v0, :cond_31

    .line 326
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->updateScreenFormType(I)V

    .line 328
    :cond_31
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->updateDialog()V

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->onScreenFormChanged(IZ)V

    .line 331
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mFreeShot:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->onScreenFormChanged(IZ)V

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mHomePage:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->onScreenFormChanged(IZ)V

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->onScreenFormChanged(IZ)V

    .line 334
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->onScreenFormChanged(IZ)V

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->onScreenFormChanged(IZ)V

    .line 336
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTopBarUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method public onSettingReady()V
    .registers 4

    .line 432
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTopBarUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->onSettingReady()V

    .line 434
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCurrentPage:I

    if-eqz v0, :cond_12

    .line 435
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-interface {p0, v2, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    :cond_12
    return-void
.end method

.method public onShutterClick()Z
    .registers 4

    .line 289
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterClick, mCurrentPage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 291
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCurrentPage:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    return v2

    .line 295
    :cond_1e
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTemplateLoaded:Z

    if-nez v1, :cond_28

    .line 296
    const-string p0, "onShutterClick, but template is loading"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 301
    :cond_28
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->isReady()Z

    move-result v1

    if-nez v1, :cond_34

    .line 302
    const-string p0, "onShutterClick, but cut same init failed"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 306
    :cond_34
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->isValid()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_41

    .line 307
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->showDraftEntryDialog()V

    return v1

    .line 311
    :cond_41
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    if-eqz v0, :cond_49

    .line 312
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->enterCutSameRecorder()V

    return v1

    .line 316
    :cond_49
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->enterFreeShotRecorder()V

    return v2
.end method

.method public onTemplateLoadFinished(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;",
            ">;)V"
        }
    .end annotation

    .line 520
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTemplateCategoryItems:Ljava/util/List;

    const/4 p1, 0x1

    .line 521
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTemplateLoaded:Z

    return-void
.end method

.method public onTemplateSelect(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V
    .registers 5

    .line 526
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTemplateSelect templateItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mInitialed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mInitialed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 528
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mInitialed:Z

    if-nez v0, :cond_25

    return-void

    .line 531
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mHomePage:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->copy()Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    move-result-object v1

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->updateSelectedTemplate(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V

    .line 532
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    return-void
.end method

.method public onTopBackClick()V
    .registers 4

    .line 676
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCurrentPage:I

    if-nez v0, :cond_5

    goto :goto_25

    :cond_5
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_15

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    move v0, v2

    goto :goto_1b

    .line 683
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->onBackClick()Z

    move-result v0

    goto :goto_1b

    .line 686
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mFreeShot:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->onBackClick()Z

    move-result v0

    :goto_1b
    if-nez v0, :cond_25

    .line 693
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mHomePage:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->setSource(I)V

    .line 694
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->updateCurrentPage(I)V

    :cond_25
    :goto_25
    return-void
.end method

.method public pause()V
    .registers 3

    .line 213
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pause vlog"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTopBarUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->pause()V

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mHomePage:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->pause()V

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->pause()V

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mFreeShot:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->pause()V

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->pause()V

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->pause()V

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->pause()V

    .line 223
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->hideDialog()V

    .line 224
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->clearAll()V

    return-void
.end method

.method public resume()V
    .registers 3

    .line 193
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resume vlog"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 196
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCurrentPage:I

    if-nez v0, :cond_13

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x119

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_1d

    :cond_13
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x11a

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 202
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mHomePage:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->resume()V

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->resume()V

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mFreeShot:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->resume()V

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTopBarUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->resume()V

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->resume()V

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->resume()V

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->resume()V

    return-void
.end method

.method public showInfo(I)V
    .registers 2

    .line 818
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->showInfo(I)V

    return-void
.end method

.method public startToCompose(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 549
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 550
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 551
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTemplateCategoryItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;

    .line 554
    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->getItemList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_17

    .line 557
    :cond_2b
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object v4

    .line 560
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :cond_35
    :goto_35
    if-ge v7, v5, :cond_a1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 561
    invoke-virtual {v8}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object v9

    .line 563
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v10

    invoke-virtual {v10}, Lcom/cutsame/solution/template/model/TemplateItem;->getId()J

    move-result-wide v10

    invoke-virtual {v8}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v12

    invoke-virtual {v12}, Lcom/cutsame/solution/template/model/TemplateItem;->getId()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_35

    .line 564
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ne v10, v11, :cond_35

    .line 565
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getOrientation()I

    move-result v10

    invoke-virtual {v8}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getOrientation()I

    move-result v11

    if-eq v10, v11, :cond_6c

    goto :goto_35

    :cond_6c
    move v10, v6

    .line 570
    :goto_6d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_9d

    .line 571
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v11}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getDuration()J

    move-result-wide v11

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v13}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getDuration()J

    move-result-wide v13

    sub-long/2addr v11, v13

    .line 572
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v11, v11, v15

    if-gez v11, :cond_9a

    const/16 v11, 0xc8

    int-to-long v11, v11

    cmp-long v11, v13, v11

    if-lez v11, :cond_9a

    goto :goto_35

    :cond_9a
    add-int/lit8 v10, v10, 0x1

    goto :goto_6d

    .line 580
    :cond_9d
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 584
    :cond_a1
    iget-object v0, v0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mOperator:Lcom/transsion/camera/feature/mode/vlog/IVlogOperator;

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/IVlogOperator;->startToCompose(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;Ljava/util/ArrayList;)V

    return-void
.end method

.method public startToCompose(Ljava/util/List;)V
    .registers 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;)V"
        }
    .end annotation

    .line 592
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 593
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTemplateCategoryItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;

    .line 594
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->getItemList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_b

    .line 597
    :cond_1f
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/VlogManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/transsion/camera/feature/mode/vlog/VlogManager$$ExternalSyntheticLambda6;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 599
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 600
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_32
    if-ge v4, v2, :cond_7b

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 601
    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object v6

    .line 603
    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getOrientation()I

    move-result v7

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v8}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOrientation()I

    move-result v8

    if-eq v7, v8, :cond_51

    goto :goto_32

    :cond_51
    move v7, v3

    .line 608
    :goto_52
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_77

    .line 609
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v8}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginDuration()J

    move-result-wide v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v10}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getDuration()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_74

    goto :goto_32

    :cond_74
    add-int/lit8 v7, v7, 0x1

    goto :goto_52

    .line 617
    :cond_77
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 621
    :cond_7b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mOperator:Lcom/transsion/camera/feature/mode/vlog/IVlogOperator;

    invoke-interface {p0, p1, v1}, Lcom/transsion/camera/feature/mode/vlog/IVlogOperator;->startToCompose(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public unInit()V
    .registers 6

    .line 164
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit vlog"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 165
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mInitialed:Z

    .line 166
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 167
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v3, "key_fold_switch_preview"

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v3, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 168
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mHomePage:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->unInit()V

    .line 169
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->unInit()V

    .line 170
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mFreeShot:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->unInit()V

    .line 171
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTopBarUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->unInit()V

    .line 172
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->unInit()V

    .line 173
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->unInit()V

    .line 174
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->unInit()V

    .line 176
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCurrentPage:I

    if-eqz v1, :cond_4e

    .line 177
    const-string/jumbo v1, "unInit not in homepage"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 181
    :cond_4e
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->clearAll()V

    return-void
.end method

.method public updateBatteryStatus(II)V
    .registers 3

    return-void
.end method

.method public updateCurrentPage(I)V
    .registers 9
    .param p1    # I
        .annotation build Lcom/transsion/camera/feature/mode/vlog/IVlog$Page;
        .end annotation
    .end param

    .line 457
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCurrentPage, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 459
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCurrentPage:I

    .line 460
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mRecorderWrapper:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->updateCurrentPage(I)V

    .line 461
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mHomePage:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCurrentPage:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->updateCurrentPage(I)V

    .line 462
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCurrentPage:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->updateCurrentPage(I)V

    .line 463
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mFreeShot:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCurrentPage:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->updateCurrentPage(I)V

    .line 464
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTopBarUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCurrentPage:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateCurrentPage(I)V

    .line 465
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCurrentPage:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->updateCurrentPage(I)V

    .line 466
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCurrentPage:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->updateCurrentPage(I)V

    .line 467
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCurrentPage:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->updateCurrentPage(I)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_c0

    const/16 v4, 0x11a

    const/16 v5, 0xa

    if-eq p1, v3, :cond_88

    const/4 v6, 0x2

    if-eq p1, v6, :cond_5f

    return-void

    .line 487
    :cond_5f
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->couldShowWideCamera(Z)V

    .line 488
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->showWideCamera()V

    .line 489
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v2, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->translateWideCamera(IZ)V

    .line 490
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v5, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 491
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v4}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 493
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mHomePage:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->exit()V

    .line 494
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mFreeShot:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->exit()V

    .line 495
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->enter()V

    return-void

    .line 499
    :cond_88
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->couldShowWideCamera(Z)V

    .line 500
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->showWideCamera()V

    .line 501
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    invoke-virtual {v6}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->isValid()Z

    move-result v6

    if-nez v6, :cond_a3

    iget v6, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mScreenFormType:I

    if-ne v6, v3, :cond_a1

    goto :goto_a3

    .line 503
    :cond_a1
    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mWideCameraTranslation:I

    .line 501
    :cond_a3
    :goto_a3
    invoke-interface {p1, v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->translateWideCamera(IZ)V

    .line 504
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v5, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 505
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v4}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 507
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mHomePage:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->exit()V

    .line 508
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->exit()V

    .line 509
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mFreeShot:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->enter()V

    return-void

    .line 471
    :cond_c0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideSwitcher(Z)V

    .line 472
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->couldShowWideCamera(Z)V

    .line 473
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->hideWideCamera()V

    .line 474
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideHintLayout(Z)V

    .line 475
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v3, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 476
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x119

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 477
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->translateWideCamera(IZ)V

    .line 478
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->setClickListener(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$ShutterClickListener;)V

    .line 479
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->setSegmentListener(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$ISegmentListener;)V

    .line 481
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mHomePage:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->enter()V

    .line 482
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->exit()V

    .line 483
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mFreeShot:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->exit()V

    return-void
.end method

.method public updateOrientation(I)V
    .registers 4

    .line 441
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mOrientation:I

    .line 442
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->updateDialog()V

    .line 447
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mRecorderWrapper:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->setOrientation(I)V

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mHomePage:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->updateOrientation(I)V

    .line 449
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mFreeShot:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->updateOrientation(IZ)V

    .line 450
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->updateOrientation(IZ)V

    .line 451
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mTopBarUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateOrientation(IZ)V

    .line 452
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->updateOrientation(I)V

    return-void
.end method

.method public updateState(I)V
    .registers 5

    .line 537
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateState state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_1f

    .line 540
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mHomePage:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->setSource(I)V

    .line 542
    :cond_1f
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->resetTempLocation()V

    .line 543
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->updateCurrentPage(I)V

    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
    .registers 3

    .line 822
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mCutSame:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    .line 823
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mFreeShot:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    return-void
.end method

.method public updateSwitchPreviewValue(Ljava/lang/String;Z)V
    .registers 3

    .line 340
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->mVlogVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->updateSwitchPreviewValue(Ljava/lang/String;Z)V

    return-void
.end method
