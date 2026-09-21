.class public Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/ICutSame;
.implements Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore;
.implements Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$ISegmentListener;
.implements Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$ItemClickListener;
.implements Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$ShutterClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$MySettingChangeListener;
    }
.end annotation


# static fields
.field private static final ACCESS_KEY:Ljava/lang/String; = "cut_same_key"

.field private static final DELAY_STOP_TIME:I = 0x64

.field private static final INVALID_POSITION:I = -0x1

.field private static final MIN_COMPOSE_SEGMENT_NUM:I = 0x2

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mActive:Z

.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mAttribution:I

.field private mAutoHintNeedShow:Z

.field private final mCallbackListener:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;

.field private final mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

.field private final mContext:Landroid/content/Context;

.field private mCorrectOrientation:I

.field private mCurrentPage:I
    .annotation build Lcom/transsion/camera/feature/mode/vlog/IVlog$Page;
    .end annotation
.end field

.field private mCurrentSegmentIndex:I

.field private mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

.field private final mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

.field private final mHelpGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;

.field private final mHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

.field private mInitialed:Z

.field private mIsAlwaysHintShow:Z

.field private mIsLoadingShow:Z

.field private mIsRecording:Z

.field private mIsShutterClick:Z

.field private mIsZoomScaling:Z

.field private mIsZoomSlideWide:Z

.field private mIsZoomWheelUIShowing:Z

.field private mLastSegmentIndex:I

.field private mLoadingUI:Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;

.field private final mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

.field private mNotifyListener:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/ICutSame$INotifyListener;

.field private final mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

.field private mOrientation:I

.field private final mPostProcessFrameSelect:Z

.field private mPreviewState:I

.field private final mRecorderWrapper:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

.field private mScreenFormType:I

.field private final mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

.field private final mSegmentFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;

.field private final mSegmentVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

.field private final mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private final mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field private mTemplateOrientation:I

.field private mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

.field private final mVideoGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

.field private final mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

.field private mVlogRootView:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$Jc6ZuCTNmOWKAqaieE8fRaRrQC4(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;Landroid/content/DialogInterface;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->lambda$showDeleteDialog$10(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NBYtBoXDNouAUxqEsAPgo8Ubw7Q(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->lambda$showNotComposeDialog$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Oz4w6o3G0Ekk1emfDufomvU-jkc(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->lambda$onFirstSteadyFrameArrive$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$VJ7EQ2I2UUTp68_umcNcozZzY4U(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->lambda$showSaveDraftDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xw8X3YC6E0gfIe5lwIW-PUxa_wg(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;Landroid/content/DialogInterface;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->lambda$showSaveDraftDialog$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZYJNCnmIw3g23DjIV2voIDnmHwU(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->lambda$showDeleteDialog$9(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cEJrym1XIhe9G4y3HN4qxkIYNfE(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;ILandroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->lambda$showDeleteDialog$8(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hlOeV9LheszsNwzW1m8trlCTv_Y(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->lambda$showNotComposeDialog$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nVv0nEYmCdQUcYaAffXaUqL7j-s(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 1019
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 1020
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$s7Z55Qe-3KR3c6LFsnjJ14Z6nJM(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->lambda$showSaveDraftDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vEEcDNfDsnpNxYf9e1F1HXKtYh0(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;Landroid/content/DialogInterface;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->lambda$showNotComposeDialog$6(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActive(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mActive:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHelpGuideUI(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mHelpGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLoadingUI(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mLoadingUI:Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOperationControl(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSegmentEditUI(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSegmentFillUI(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSegmentVideoUI(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsLoadingShow(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsLoadingShow:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsRecording(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsRecording:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsZoomSlideWide(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsZoomSlideWide:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearAlwaysHintInfo(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->clearAlwaysHintInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearAutoHintInfo(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->clearAutoHintInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCurrentMediaItem(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->getCurrentMediaItem()Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monRecordFinished(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;ZLjava/lang/String;Ljava/lang/String;JJI)V
    .registers 9

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->onRecordFinished(ZLjava/lang/String;Ljava/lang/String;JJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSegmentRecordingGuide(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->showSegmentRecordingGuide()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAutoHintInfo(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->updateAutoHintInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 81
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_CutSame"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;IILcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;)V
    .registers 20

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$MySettingChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$MySettingChangeListener;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 110
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mLoadingUI:Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCurrentPage:I

    const/4 v1, 0x1

    .line 117
    iput v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mTemplateOrientation:I

    .line 119
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCurrentSegmentIndex:I

    .line 120
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mLastSegmentIndex:I

    .line 136
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsZoomScaling:Z

    .line 662
    new-instance v2, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCallbackListener:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;

    .line 143
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    .line 144
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 145
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

    .line 146
    new-instance p2, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-direct {p2, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;-><init>(I)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    .line 147
    new-instance p2, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-direct {p2, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;-><init>(I)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    .line 148
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    .line 149
    iput-object p6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    move-object/from16 v8, p10

    .line 150
    iput-object v8, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    move/from16 p2, p7

    .line 151
    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mOrientation:I

    move/from16 v7, p8

    .line 152
    iput v7, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mScreenFormType:I

    .line 153
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/feature/vlog/R$bool;->vlog_mode_cutsame_support_post_frame_select:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mPostProcessFrameSelect:Z

    .line 154
    invoke-interface/range {p9 .. p9}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 155
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->registerKeysToMonitor()V

    .line 157
    new-instance v3, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    iget v6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mOrientation:I

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;IILcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVideoGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    .line 158
    new-instance v3, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;

    iget v6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mOrientation:I

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;IILcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$ItemClickListener;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;

    .line 159
    new-instance p2, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mOrientation:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mScreenFormType:I

    invoke-direct {p2, v4, p1, v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;II)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mHelpGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;

    .line 161
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    .line 162
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    .line 163
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mRecorderWrapper:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    return-void
.end method

.method private clearAlwaysHintInfo()V
    .registers 3

    .line 1168
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "clearAlwaysHintInfo"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1169
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsAlwaysHintShow:Z

    .line 1170
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;->hideHint(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V

    return-void
.end method

.method private clearAutoHintInfo()V
    .registers 3

    .line 1160
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "clearAutoHintInfo"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1161
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;->hideHint(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V

    .line 1162
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->setMessage(Ljava/lang/String;)V

    .line 1163
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->setHighlight(Z)V

    .line 1164
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mAutoHintNeedShow:Z

    return-void
.end method

.method private enterGuideUiIfNeed(I)V
    .registers 6

    .line 1119
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCurrentPage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    if-nez v0, :cond_a

    goto :goto_34

    .line 1123
    :cond_a
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mScreenFormType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_12

    if-eqz p1, :cond_16

    :cond_12
    if-nez v1, :cond_18

    if-ne p1, v3, :cond_18

    :cond_16
    move p1, v3

    goto :goto_19

    :cond_18
    move p1, v2

    .line 1129
    :goto_19
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getFirstBlankIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_21

    move v2, v3

    :cond_21
    if-eqz p1, :cond_34

    .line 1132
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVideoGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->needStart()Z

    move-result p1

    if-eqz p1, :cond_34

    if-nez v2, :cond_34

    .line 1133
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVideoGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCurrentSegmentIndex:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->enter(I)V

    :cond_34
    :goto_34
    return-void
.end method

.method private getCurrentMediaItem()Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;
    .registers 2

    .line 658
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCurrentSegmentIndex:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->getMediaItem(I)Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object p0

    return-object p0
.end method

.method private getMediaItem(I)Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;
    .registers 4

    .line 649
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    if-eqz p0, :cond_9

    .line 650
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getMediaItem(I)Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object p0

    return-object p0

    .line 653
    :cond_9
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMediaItem, not item set, index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getValidSegmentCount()I
    .registers 1

    .line 788
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    if-eqz p0, :cond_9

    .line 789
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getValidNumber()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method private hideDialog()V
    .registers 1

    .line 1057
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    if-eqz p0, :cond_7

    .line 1058
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->hide()V

    :cond_7
    return-void
.end method

.method private initLoadingUIIfNeed()V
    .registers 5

    .line 180
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mPostProcessFrameSelect:Z

    if-eqz v0, :cond_33

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/vlog/R$layout;->cut_same_editor_loading:I

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVlogRootView:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 182
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCurrentPage:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mScreenFormType:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mOrientation:I

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;-><init>(III)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mLoadingUI:Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;

    .line 183
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVlogRootView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->inflate(Landroid/view/ViewGroup;Z)V

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mLoadingUI:Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;

    sget v1, Lcom/transsion/camera/feature/vlog/R$string;->vlog_cutsame_highlight_fragment_extract:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->updateText(I)V

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mLoadingUI:Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->updateVisibility(I)V

    :cond_33
    return-void
.end method

.method private synthetic lambda$onFirstSteadyFrameArrive$0()V
    .registers 2

    .line 638
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->translateWideCamera(IZ)V

    return-void
.end method

.method private synthetic lambda$showDeleteDialog$10(Landroid/content/DialogInterface;)V
    .registers 2

    .line 1049
    const-string p1, "cut_same_key"

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->reAccess(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1050
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    return-void
.end method

.method private synthetic lambda$showDeleteDialog$8(ILandroid/content/DialogInterface;I)V
    .registers 6

    .line 1011
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p2

    const/16 p3, 0x14

    const-string v0, "1"

    invoke-virtual {p2, p3, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 1012
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->hide()V

    .line 1013
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->getMediaItem(I)Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object p2

    if-eqz p2, :cond_5d

    .line 1016
    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getPortraitSource()Ljava/lang/String;

    move-result-object p3

    .line 1017
    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getLandscapeSource()Ljava/lang/String;

    move-result-object v0

    .line 1018
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 1022
    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->reset()V

    .line 1023
    iget p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mLastSegmentIndex:I

    if-eq p3, p1, :cond_32

    .line 1024
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;

    invoke-virtual {v0, p3}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->notifyItemChanged(I)V

    .line 1027
    :cond_32
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->setCurrentPosition(IZ)V

    .line 1028
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-virtual {p3, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->exit(Z)V

    .line 1029
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->showRecordDirectionTipIfNeed(I)V

    .line 1030
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->updateUIState()V

    .line 1033
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVideoGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    invoke-virtual {p3}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->needStart()Z

    move-result p3

    if-eqz p3, :cond_50

    .line 1034
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVideoGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    invoke-virtual {p3, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->enter(I)V

    .line 1036
    :cond_50
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->clone()Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->updateCurrentSegment(ILcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;)V

    const/4 p1, 0x0

    .line 1037
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->updateDraftStateIfNeed(Z)V

    :cond_5d
    return-void
.end method

.method private synthetic lambda$showDeleteDialog$9(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1043
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/16 p2, 0x14

    const-string v0, "0"

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 1044
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->hide()V

    return-void
.end method

.method private synthetic lambda$showNotComposeDialog$4(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 977
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->hide()V

    .line 978
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->switchToNextPosition()V

    return-void
.end method

.method private synthetic lambda$showNotComposeDialog$5(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 982
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->hide()V

    return-void
.end method

.method private synthetic lambda$showNotComposeDialog$6(Landroid/content/DialogInterface;)V
    .registers 2

    .line 987
    const-string p1, "cut_same_key"

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->reAccess(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 988
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    return-void
.end method

.method private synthetic lambda$showSaveDraftDialog$1(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 942
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/16 p2, 0x11

    const-string v0, "0"

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 943
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mHelpGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->removeHelpGuide()V

    .line 944
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->onBackPressed()Z

    .line 945
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->setComposeState(I)V

    .line 946
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->updateComposeState(I)V

    .line 947
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->hide()V

    .line 948
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mNotifyListener:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/ICutSame$INotifyListener;

    invoke-interface {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/ICutSame$INotifyListener;->updateState(I)V

    return-void
.end method

.method private synthetic lambda$showSaveDraftDialog$2(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 952
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/16 p2, 0x11

    const-string v0, "1"

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 953
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mHelpGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->removeHelpGuide()V

    .line 954
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->onBackPressed()Z

    .line 955
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->delete()V

    .line 956
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->hide()V

    .line 957
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mNotifyListener:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/ICutSame$INotifyListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/ICutSame$INotifyListener;->updateState(I)V

    return-void
.end method

.method private synthetic lambda$showSaveDraftDialog$3(Landroid/content/DialogInterface;)V
    .registers 2

    .line 962
    const-string p1, "cut_same_key"

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->reAccess(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 963
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    return-void
.end method

.method private onRecordFinished(ZLjava/lang/String;Ljava/lang/String;JJI)V
    .registers 16

    .line 740
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "segment record, onRecordFinished"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 741
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mLoadingUI:Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 742
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsLoadingShow:Z

    .line 743
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->stopAnimation()V

    .line 746
    :cond_11
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsRecording:Z

    .line 747
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsShutterClick:Z

    move v1, p1

    .line 748
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->getCurrentMediaItem()Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object p1

    if-nez v1, :cond_59

    if-eqz p1, :cond_59

    const-wide/16 v3, 0x0

    .line 752
    invoke-static {p6, p7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 754
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getDuration()J

    move-result-wide v5

    add-long/2addr p6, v5

    cmp-long p6, p6, p4

    if-lez p6, :cond_33

    .line 755
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getDuration()J

    move-result-wide p6

    sub-long v3, p4, p6

    .line 759
    :cond_33
    rem-int/lit16 p8, p8, 0xb4

    const/4 v1, 0x1

    if-nez p8, :cond_3c

    move p6, v1

    :goto_39
    move-wide p7, p4

    move-wide p4, v3

    goto :goto_3e

    :cond_3c
    move p6, v2

    goto :goto_39

    .line 758
    :goto_3e
    invoke-virtual/range {p1 .. p8}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->fill(Ljava/lang/String;Ljava/lang/String;JIJ)V

    .line 760
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    iget p5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCurrentSegmentIndex:I

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->clone()Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object p6

    invoke-virtual {p4, p5, p6}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->updateCurrentSegment(ILcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;)V

    .line 761
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->getInstance()Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;

    move-result-object p4

    iget p5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCurrentSegmentIndex:I

    add-int/2addr p5, v1

    invoke-virtual {p4, p5, v2}, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->updateRefreshState(IZ)V

    .line 762
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->updateDraftStateIfNeed(Z)V

    .line 765
    :cond_59
    iget-boolean p4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mInitialed:Z

    if-nez p4, :cond_5e

    return-void

    .line 769
    :cond_5e
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->updateUIState()V

    if-eqz p1, :cond_6c

    if-eqz p2, :cond_6c

    if-eqz p3, :cond_6c

    .line 771
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->switchToNextPosition()V

    .line 774
    :cond_6c
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_86

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsZoomWheelUIShowing:Z

    if-nez p1, :cond_86

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsZoomScaling:Z

    if-eqz p1, :cond_86

    .line 775
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVlogRootView:Landroid/widget/FrameLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 776
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;->hideAllHints()V

    goto :goto_8b

    .line 778
    :cond_86
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCurrentSegmentIndex:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->showRecordDirectionTipIfNeed(I)V

    .line 780
    :goto_8b
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->hideRecordingUI()V

    .line 781
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->setRecording(Z)V

    .line 782
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p2, -0x1

    const/4 p3, 0x0

    const/16 p4, 0xa

    invoke-interface {p1, p4, p2, p3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 783
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    const/16 p1, 0x2714

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    .line 784
    const-string p0, "onRecordFinished, END"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private performRecord(Z)V
    .registers 4

    .line 368
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsShutterClick:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsShutterClick:Z

    .line 369
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mRecorderWrapper:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    if-eqz p1, :cond_d

    const-wide/16 v0, 0x64

    goto :goto_f

    :cond_d
    const-wide/16 v0, 0x0

    :goto_f
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->startStop(J)V

    return-void
.end method

.method private resetUIState()V
    .registers 3

    .line 931
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x141

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 932
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x11e

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method private showDeleteDialog(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 8

    .line 999
    const-string v0, "cut_same_key"

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->canAccess(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 1004
    :cond_9
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->hideDialog()V

    .line 1005
    new-instance v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mScreenFormType:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1006
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mScreenFormType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCorrectOrientation:I

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setOrientation(I)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 1007
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 1008
    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 1010
    new-instance p2, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;I)V

    invoke-virtual {v0, p3, p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 1042
    new-instance p1, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)V

    invoke-virtual {v0, p4, p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 1047
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->create()Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    .line 1048
    new-instance p2, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1052
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string/jumbo p2, "vlog_dialog"

    invoke-virtual {p1, p0, p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/16 p1, 0x14

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    return-void
.end method

.method private showNotComposeDialog()V
    .registers 4

    .line 970
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->hideDialog()V

    .line 971
    new-instance v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mScreenFormType:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 972
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mScreenFormType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCorrectOrientation:I

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setOrientation(I)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 973
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/vlog/R$string;->vlog_unenable_compose_video:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 974
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/vlog/R$string;->vlog_unenable_compose_video_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 976
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/vlog/R$string;->vlog_shootting:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 981
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/vlog/R$string;->vlog_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 985
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->create()Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    .line 986
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$$ExternalSyntheticLambda10;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 990
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string/jumbo v1, "vlog_dialog"

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showRecordDirectionTipIfNeed(I)V
    .registers 4

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_5e

    .line 438
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsZoomWheelUIShowing:Z

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsZoomScaling:Z

    if-eqz v0, :cond_19

    goto :goto_5e

    .line 442
    :cond_19
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->getMediaItem(I)Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object p1

    if-nez p1, :cond_20

    goto :goto_5e

    .line 446
    :cond_20
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->isValid()Z

    move-result p1

    if-nez p1, :cond_56

    .line 447
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showRecordDirectionTipIfNeed"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 448
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    .line 449
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getOrientation()I

    move-result v0

    if-nez v0, :cond_40

    .line 450
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/feature/vlog/R$string;->vlog_vertical_shoot_tip:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_48

    .line 451
    :cond_40
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/feature/vlog/R$string;->vlog_landscape_shoot_tip:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 448
    :goto_48
    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->setMessage(Ljava/lang/String;)V

    .line 453
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-interface {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;->showHint(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V

    const/4 p1, 0x1

    .line 454
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsAlwaysHintShow:Z

    return-void

    .line 456
    :cond_56
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;->hideAllHints()V

    const/4 p1, 0x0

    .line 457
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsAlwaysHintShow:Z

    :cond_5e
    :goto_5e
    return-void
.end method

.method private showRootView()V
    .registers 3

    .line 555
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVlogRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 556
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 557
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVlogRootView:Landroid/widget/FrameLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_f
    return-void
.end method

.method private showSaveDraftDialog()V
    .registers 4

    .line 936
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->hideDialog()V

    .line 937
    new-instance v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mScreenFormType:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 938
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mScreenFormType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCorrectOrientation:I

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setOrientation(I)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 939
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/vlog/R$string;->vlog_save_draft:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 941
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/vlog/R$string;->vlog_save:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 951
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/vlog/R$string;->vlog_abandon:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 960
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->create()Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    .line 961
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 965
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string/jumbo v1, "vlog_dialog"

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 966
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    return-void
.end method

.method private showSegmentRecordingGuide()V
    .registers 6

    .line 462
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->getCurrentMediaItem()Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 463
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/camera/feature/vlog/R$string;->cutsame_isshooting:I

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->setMessage(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;->showHint(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V

    return-void
.end method

.method private unRecordable()Z
    .registers 3

    .line 373
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCurrentPage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2c

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsShutterClick:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsRecording:Z

    if-eqz v0, :cond_2c

    .line 375
    :cond_d
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->getCurrentMediaItem()Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->isValid()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    if-eqz v0, :cond_24

    .line 376
    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2c

    :cond_24
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mPreviewState:I

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 p0, 0x0

    return p0

    :cond_2c
    :goto_2c
    const/4 p0, 0x1

    return p0
.end method

.method private updateAutoHintInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1138
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mActive:Z

    if-nez v0, :cond_5

    return-void

    .line 1142
    :cond_5
    const-string v0, "key_anti_video"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    .line 1143
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/feature/vlog/R$string;->vlog_anti_video_setting_on_tips:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->setMessage(Ljava/lang/String;)V

    .line 1144
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->setHighlight(Z)V

    goto :goto_5f

    .line 1145
    :cond_21
    const-string v0, "key_super_anti_video"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 1146
    const-string p1, "super"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 1147
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/feature/vlog/R$string;->vlog_super_anti_video_super_value_on_tips:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_42

    .line 1148
    :cond_3a
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/feature/vlog/R$string;->vlog_super_anti_video_normal_value_on_tips:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1149
    :goto_42
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->setMessage(Ljava/lang/String;)V

    .line 1150
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->setHighlight(Z)V

    goto :goto_5f

    .line 1152
    :cond_4d
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/feature/vlog/R$string;->vlog_open_wide_camera_tip:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->setMessage(Ljava/lang/String;)V

    .line 1153
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->setHighlight(Z)V

    .line 1156
    :goto_5f
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsZoomScaling:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mAutoHintNeedShow:Z

    return-void
.end method

.method private updateCorrectOrientation(IZ)V
    .registers 9

    .line 511
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCorrectOrientation:I

    .line 513
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mTemplateOrientation:I

    const/16 v2, 0x10e

    const/16 v3, 0xb4

    const/16 v4, 0x5a

    const/4 v5, 0x1

    if-ne v1, v5, :cond_16

    if-eqz p1, :cond_1c

    if-eq p1, v4, :cond_1d

    if-eq p1, v3, :cond_1c

    if-eq p1, v2, :cond_1d

    goto :goto_1c

    :cond_16
    if-eqz p1, :cond_1d

    if-eq p1, v4, :cond_1c

    if-eq p1, v3, :cond_1d

    :cond_1c
    :goto_1c
    move p1, v0

    .line 537
    :cond_1d
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCorrectOrientation, correctOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 538
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCorrectOrientation:I

    if-eq v0, p1, :cond_3a

    move v0, v5

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    .line 540
    :goto_3b
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVideoGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->setOrientation(I)V

    .line 541
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->setOrientation(I)V

    .line 542
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mHelpGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->setOrientation(I)V

    .line 543
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-virtual {v1, p1, v5}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->updateOrientation(IZ)V

    .line 544
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    invoke-virtual {v1, p1, v5}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->updateOrientation(IZ)V

    .line 545
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_vlog_correct_orientation"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 546
    invoke-virtual {v1, v2, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 547
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCorrectOrientation:I

    if-eqz v0, :cond_7a

    .line 550
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->updateDialog()V

    :cond_7a
    return-void
.end method

.method private updateDialog()V
    .registers 4

    .line 1063
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCorrectOrientation:I

    .line 1064
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mScreenFormType:I

    if-eqz v1, :cond_9

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    :cond_9
    const/4 v0, 0x0

    .line 1068
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    if-eqz p0, :cond_11

    .line 1069
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->setOrientation(I)V

    :cond_11
    return-void
.end method

.method private updateDraftStateIfNeed(Z)V
    .registers 3

    .line 245
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    if-eqz v0, :cond_20

    .line 246
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->canCompose()Z

    move-result v0

    if-nez v0, :cond_20

    if-nez p1, :cond_20

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 248
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getComposeState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_20

    .line 249
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->setComposeState(I)V

    .line 250
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->updateComposeState(I)V

    :cond_20
    return-void
.end method

.method private updateUIState()V
    .registers 6

    .line 899
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mActive:Z

    if-nez v0, :cond_5

    goto :goto_70

    .line 903
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->getValidSegmentCount()I

    move-result v0

    .line 904
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 906
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v3, 0x141

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const/16 v2, 0x2717

    if-ne v0, v1, :cond_3d

    .line 909
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    const/16 v1, 0x2719

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    .line 910
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x11d

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 911
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    invoke-interface {v0, v2}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    .line 912
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->couldShowWideCamera(Z)V

    .line 913
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->hideWideCamera()V

    return-void

    .line 915
    :cond_3d
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v4, 0x11e

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 916
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    const/16 v4, 0x271a

    invoke-interface {v3, v4}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    const/4 v3, 0x2

    if-ltz v0, :cond_58

    if-ge v0, v3, :cond_58

    .line 918
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    const/16 v1, 0x2718

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    goto :goto_61

    :cond_58
    if-lt v0, v3, :cond_61

    if-gt v0, v1, :cond_61

    .line 920
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    invoke-interface {v0, v2}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    .line 923
    :cond_61
    :goto_61
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsZoomWheelUIShowing:Z

    if-nez v0, :cond_70

    .line 924
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->couldShowWideCamera(Z)V

    .line 925
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->showWideCamera()V

    :cond_70
    :goto_70
    return-void
.end method


# virtual methods
.method public canCompose()Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 854
    :goto_4
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_23

    .line 855
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->getMediaItem(I)Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->isValid()Z

    move-result v4

    if-eqz v4, :cond_20

    add-int/lit8 v3, v3, 0x1

    move v2, v1

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_23
    const/4 p0, 0x1

    add-int/2addr v2, p0

    if-ne v2, v3, :cond_2b

    const/4 v1, 0x2

    if-lt v3, v1, :cond_2b

    return p0

    :cond_2b
    return v0
.end method

.method public checkSpaceEnough()Z
    .registers 7

    .line 832
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 833
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "checkRecordable mInternalStorageOperator is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 836
    :cond_d
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2c

    const-wide/32 v4, 0xc800000

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2c

    .line 839
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[checkStorageSpace] space in not enough, can not record video."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 840
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->showInfo(I)V

    return v1

    :cond_2c
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_3e

    .line 843
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[checkStorageSpace] StorageVolume is removed."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 844
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->showInfo(I)V

    return v1

    :cond_3e
    const/4 p0, 0x1

    return p0
.end method

.method public composeVlogIfNeed()V
    .registers 6

    .line 804
    const-string v0, "cut_same_key"

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->canAccess(Ljava/lang/String;)Z

    move-result v1

    .line 805
    sget-object v2, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "composeVlogIfNeed, canAccess: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v1, :cond_1f

    return-void

    .line 810
    :cond_1f
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->canCompose()Z

    move-result v1

    if-nez v1, :cond_29

    .line 811
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->showNotComposeDialog()V

    goto :goto_49

    .line 813
    :cond_29
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->checkSpaceEnough()Z

    move-result v1

    if-nez v1, :cond_33

    .line 814
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->reAccess(Ljava/lang/String;)V

    return-void

    .line 818
    :cond_33
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->isReady()Z

    move-result v1

    if-nez v1, :cond_46

    .line 820
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->initialize(Landroid/app/Application;)V

    .line 821
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->reAccess(Ljava/lang/String;)V

    return-void

    .line 825
    :cond_46
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->startToCompose()V

    .line 828
    :goto_49
    const-string p0, "composeVlogIfNeed, END"

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public enter()V
    .registers 9

    .line 382
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter cutSame module >>> templateId title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 383
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cutsame/solution/template/model/TemplateItem;->getShortTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mAttribution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mAttribution:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 385
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mActive:Z

    .line 386
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->showRootView()V

    .line 387
    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mOrientation:I

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->updateOrientation(IZ)V

    .line 388
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    invoke-virtual {v2, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->setClickListener(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$ShutterClickListener;)V

    .line 389
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-virtual {v2, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->setSegmentListener(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$ISegmentListener;)V

    .line 390
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getFirstBlankIndex()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_4b

    move v4, v1

    goto :goto_4c

    :cond_4b
    move v4, v3

    :goto_4c
    if-eqz v4, :cond_4f

    goto :goto_50

    :cond_4f
    move v3, v2

    .line 392
    :goto_50
    iput v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCurrentSegmentIndex:I

    .line 394
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCurrentSegmentIndex:I

    invoke-virtual {v3, v5, v6}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->enter(Ljava/util/List;I)V

    .line 395
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mRecorderWrapper:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    iget v6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCurrentSegmentIndex:I

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCallbackListener:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;

    invoke-virtual {v3, v5, v6, v7}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->enter(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;ILcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;)V

    if-nez v4, :cond_73

    .line 404
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVideoGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    iget v5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCurrentSegmentIndex:I

    invoke-virtual {v3, v5}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->enter(I)V

    .line 407
    :cond_73
    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mAttribution:I

    if-ne v3, v1, :cond_7c

    .line 408
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mHelpGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->showHelpGuideIfNeed()V

    .line 410
    :cond_7c
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->showRecordDirectionTipIfNeed(I)V

    .line 411
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->updateUIState()V

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter cutSame module <<< mCurrentSegmentIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCurrentSegmentIndex:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", isSegmentFull: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .registers 4

    .line 418
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit cutSame module, mActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 419
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mActive:Z

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    const/4 v0, 0x0

    .line 423
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mActive:Z

    .line 424
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVideoGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->exit()V

    .line 425
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->exit()V

    .line 426
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->exit(Z)V

    .line 427
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->clearAutoHintInfo()V

    .line 428
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

    invoke-interface {v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;->hideAllHints()V

    .line 429
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mHelpGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->removeHelpGuide()V

    .line 430
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsAlwaysHintShow:Z

    .line 431
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    const/16 v0, 0x2718

    invoke-interface {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    .line 433
    const-string p0, "cut_same_key"

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->clear(Ljava/lang/String;)V

    return-void
.end method

.method public init()V
    .registers 5

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/vlog/R$layout;->cut_same_layout:I

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->cut_same_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVlogRootView:Landroid/widget/FrameLayout;

    .line 170
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->showRootView()V

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVideoGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVlogRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->inflate(Landroid/view/ViewGroup;)V

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVlogRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->inflate(Landroid/view/ViewGroup;)V

    .line 174
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->initLoadingUIIfNeed()V

    .line 176
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mInitialed:Z

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 5

    .line 563
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mActive:Z

    if-nez v0, :cond_6

    goto/16 :goto_77

    .line 567
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVideoGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->notifyCameraOperateActionToUI(I)V

    .line 568
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->notifyCameraOperateActionToUI(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_a8

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p1, v1, :cond_78

    const/16 v1, 0x1c

    if-eq p1, v1, :cond_5a

    const/16 v1, 0x19

    if-eq p1, v1, :cond_57

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_54

    const/16 v1, 0x192

    if-eq p1, v1, :cond_42

    const/16 v0, 0x193

    if-eq p1, v0, :cond_2d

    goto :goto_77

    .line 616
    :cond_2d
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsZoomScaling:Z

    .line 617
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsRecording:Z

    if-nez p1, :cond_39

    .line 618
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCurrentSegmentIndex:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->showRecordDirectionTipIfNeed(I)V

    goto :goto_3c

    .line 620
    :cond_39
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->showSegmentRecordingGuide()V

    .line 622
    :goto_3c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVlogRootView:Landroid/widget/FrameLayout;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/utils/AnimUtils;->show(Landroid/view/View;)V

    return-void

    .line 608
    :cond_42
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsZoomScaling:Z

    .line 609
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->clearAutoHintInfo()V

    .line 610
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->clearAlwaysHintInfo()V

    .line 611
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsRecording:Z

    if-nez p1, :cond_77

    .line 612
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVlogRootView:Landroid/widget/FrameLayout;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/utils/AnimUtils;->hide(Landroid/view/View;)V

    return-void

    .line 605
    :cond_54
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsZoomWheelUIShowing:Z

    return-void

    .line 602
    :cond_57
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsZoomWheelUIShowing:Z

    return-void

    .line 572
    :cond_5a
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_61

    goto :goto_77

    .line 577
    :cond_61
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsZoomScaling:Z

    if-eqz p1, :cond_77

    .line 578
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsZoomScaling:Z

    .line 579
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->showRootView()V

    .line 580
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsRecording:Z

    if-nez p1, :cond_74

    .line 581
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCurrentSegmentIndex:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->showRecordDirectionTipIfNeed(I)V

    return-void

    .line 583
    :cond_74
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->showSegmentRecordingGuide()V

    :cond_77
    :goto_77
    return-void

    .line 588
    :cond_78
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCameraOperateActionToUI, preview started, mAutoHintNeedShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mAutoHintNeedShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 590
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsZoomSlideWide:Z

    .line 591
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mAutoHintNeedShow:Z

    if-eqz p1, :cond_a0

    .line 592
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-interface {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;->showHint(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V

    .line 593
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mAutoHintNeedShow:Z

    return-void

    .line 595
    :cond_a0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;->hideHint(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V

    return-void

    .line 599
    :cond_a8
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->updateUIState()V

    return-void
.end method

.method public onBackClick()Z
    .registers 6

    .line 281
    const-string v0, "cut_same_key"

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->canAccess(Ljava/lang/String;)Z

    move-result v1

    .line 284
    sget-object v2, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBackClick, mIsRecording: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsRecording:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsShutterClick: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsShutterClick:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", canAccess: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-nez v1, :cond_34

    return v2

    :cond_34
    const/4 v1, 0x0

    .line 292
    :try_start_35
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mHelpGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->removeHelpGuide()V

    .line 293
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsLoadingShow:Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3c} :catch_4f
    .catchall {:try_start_35 .. :try_end_3c} :catchall_4d

    if-eqz v3, :cond_42

    .line 318
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->reAccess(Ljava/lang/String;)V

    return v2

    .line 297
    :cond_42
    :try_start_42
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsRecording:Z

    if-eqz v3, :cond_51

    .line 298
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->performRecord(Z)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_49} :catch_4f
    .catchall {:try_start_42 .. :try_end_49} :catchall_4d

    .line 318
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->reAccess(Ljava/lang/String;)V

    return v2

    :catchall_4d
    move-exception p0

    goto :goto_8d

    :catch_4f
    move-exception p0

    goto :goto_75

    .line 300
    :cond_51
    :try_start_51
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsShutterClick:Z
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_53} :catch_4f
    .catchall {:try_start_51 .. :try_end_53} :catchall_4d

    if-eqz v3, :cond_59

    .line 318
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->reAccess(Ljava/lang/String;)V

    return v2

    .line 305
    :cond_59
    :try_start_59
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->leave()Z

    move-result v3
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5f} :catch_4f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_4d

    if-eqz v3, :cond_65

    .line 318
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->reAccess(Ljava/lang/String;)V

    return v2

    .line 309
    :cond_65
    :try_start_65
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->isValid()Z

    move-result v3

    if-eqz v3, :cond_71

    .line 310
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->showSaveDraftDialog()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_70} :catch_4f
    .catchall {:try_start_65 .. :try_end_70} :catchall_4d

    return v2

    .line 318
    :cond_71
    :goto_71
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->reAccess(Ljava/lang/String;)V

    goto :goto_8c

    .line 315
    :goto_75
    :try_start_75
    sget-object v2, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBackClick, exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_75 .. :try_end_8b} :catchall_4d

    goto :goto_71

    :goto_8c
    return v1

    .line 318
    :goto_8d
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->reAccess(Ljava/lang/String;)V

    .line 320
    throw p0
.end method

.method public onBackPressedForUI()Z
    .registers 1

    .line 276
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsZoomWheelUIShowing:Z

    return p0
.end method

.method public onCameraStateChanged(I)V
    .registers 2

    .line 644
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mPreviewState:I

    .line 645
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->onCameraStateChanged(I)V

    return-void
.end method

.method public onDeleteAndReshoot(I)V
    .registers 6

    .line 1087
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/feature/vlog/R$string;->vlog_delete_and_reshoot_segment_short:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/vlog/R$string;->vlog_delete_and_reshoot:I

    .line 1088
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/camera/feature/vlog/R$string;->vlog_cancel:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1087
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->showDeleteDialog(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDoneClick()V
    .registers 1

    .line 342
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->composeVlogIfNeed()V

    return-void
.end method

.method public onFirstSteadyFrameArrive()V
    .registers 3

    .line 631
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVideoGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->onFirstSteadyFrame()V

    .line 632
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->onFirstSteadyFrame()V

    .line 634
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mActive:Z

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsRecording:Z

    if-nez v0, :cond_32

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsZoomWheelUIShowing:Z

    if-nez v0, :cond_32

    .line 637
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->getValidSegmentCount()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 638
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_32
    return-void
.end method

.method public onItemClick(IZ)V
    .registers 6

    .line 866
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick, position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentSegmentIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCurrentSegmentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", needUpdateIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_56

    .line 869
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->isActive()Z

    move-result p2

    if-nez p2, :cond_56

    .line 870
    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCurrentSegmentIndex:I

    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mLastSegmentIndex:I

    .line 871
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->getMediaItem(I)Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->enter(Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;I)V

    .line 872
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    const/16 p2, 0x2715

    invoke-interface {p1, p2}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    .line 873
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p2, 0x11b

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 874
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->clearAutoHintInfo()V

    .line 875
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->clearAlwaysHintInfo()V

    return-void

    .line 878
    :cond_56
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->exit(Z)V

    .line 881
    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCurrentSegmentIndex:I

    if-ne p2, p1, :cond_61

    return-void

    .line 885
    :cond_61
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCurrentSegmentIndex:I

    .line 886
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVideoGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->setCurrentPosition(I)V

    .line 887
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mRecorderWrapper:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCurrentSegmentIndex:I

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->setSegmentIndex(I)V

    .line 888
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCurrentSegmentIndex:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->showRecordDirectionTipIfNeed(I)V

    return-void
.end method

.method public onItemDelete(I)V
    .registers 6

    .line 893
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemDelete, position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 894
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/feature/vlog/R$string;->vlog_delete_segment_short:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/vlog/R$string;->vlog_delete:I

    .line 895
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/camera/feature/vlog/R$string;->vlog_cancel:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 894
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->showDeleteDialog(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onRefreshSourceStartTime(JI)V
    .registers 5

    .line 1080
    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->getMediaItem(I)Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->setSourceStartTime(J)V

    .line 1081
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    invoke-direct {p0, p3}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->getMediaItem(I)Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->clone()Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->updateCurrentSegment(ILcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;)V

    .line 1082
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;

    invoke-virtual {p0, p3}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->notifyItemChanged(I)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 4

    .line 1105
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mScreenFormType:I

    if-eq v0, p1, :cond_24

    .line 1106
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->enterGuideUiIfNeed(I)V

    .line 1107
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mScreenFormType:I

    .line 1108
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVideoGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->onScreenFormChanged(IZ)V

    .line 1109
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->onScreenFormChanged(IZ)V

    .line 1110
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mHelpGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->onScreenFormChanged(IZ)V

    .line 1111
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    if-eqz p1, :cond_21

    .line 1112
    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mScreenFormType:I

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->updateScreenFormType(I)V

    .line 1114
    :cond_21
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->updateDialog()V

    :cond_24
    return-void
.end method

.method public onSegmentEditComplete()V
    .registers 4

    .line 1093
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSegmentEditComplete, mCurrentSegmentIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCurrentSegmentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1094
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCurrentSegmentIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->setCurrentPosition(IZ)V

    .line 1095
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCurrentSegmentIndex:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->showRecordDirectionTipIfNeed(I)V

    return-void
.end method

.method public onVideoShutterClick()V
    .registers 4

    .line 326
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoShutterClick, mIsShutterClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsShutterClick:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsRecording: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPreviewState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mPreviewState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 329
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->unRecordable()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 330
    const-string p0, "onVideoShutterClick, unable to record"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 334
    :cond_38
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsRecording:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->performRecord(Z)V

    .line 335
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsRecording:Z

    if-nez v0, :cond_48

    .line 336
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    const/16 v0, 0x2711

    invoke-interface {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    :cond_48
    return-void
.end method

.method public pause()V
    .registers 4

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVideoGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->pause()V

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->pause()V

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mHelpGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->pause()V

    .line 210
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsZoomSlideWide:Z

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 211
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->clearAutoHintInfo()V

    goto :goto_1a

    .line 213
    :cond_18
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsZoomSlideWide:Z

    .line 215
    :goto_1a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-interface {v0, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;->hideHint(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V

    .line 216
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->hideDialog()V

    .line 217
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mActive:Z

    if-eqz v0, :cond_2d

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mRecorderWrapper:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->leave(ZZ)Z

    :cond_2d
    return-void
.end method

.method protected registerKeysToMonitor()V
    .registers 4

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_2f

    .line 256
    const-string v1, "key_anti_video"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_anti_video"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_item_seleccted"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_zoom_limit_monitor"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_tips"

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_2f
    return-void
.end method

.method public resume()V
    .registers 3

    .line 191
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsAlwaysHintShow:Z

    if-eqz v0, :cond_b

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;->showHint(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V

    .line 194
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVideoGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->resume()V

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->resume()V

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mHelpGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->resume()V

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mLoadingUI:Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;

    if-eqz v0, :cond_21

    .line 199
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->resume()V

    .line 202
    :cond_21
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->hideDialog()V

    return-void
.end method

.method public setAttribution(I)V
    .registers 2
    .param p1    # I
        .annotation build Lcom/transsion/camera/feature/mode/vlog/IVlog$Attribution;
        .end annotation
    .end param

    .line 468
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mAttribution:I

    .line 469
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mRecorderWrapper:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->initWorkHandlerIfNeed()V

    return-void
.end method

.method public setNotifyListener(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/ICutSame$INotifyListener;)V
    .registers 2

    .line 1100
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mNotifyListener:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/ICutSame$INotifyListener;

    return-void
.end method

.method public setStoreValueMonitor(Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;)V
    .registers 2

    .line 1075
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mHelpGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->setStoreValueMonitor(Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;)V

    return-void
.end method

.method public setTemplateItemData(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 475
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTemplateItemData, title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cutsame/solution/template/model/TemplateItem;->getShortTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 477
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 478
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mTemplateOrientation:I

    .line 479
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVideoGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->setTemplateItemData(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V

    .line 481
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mTemplateOrientation:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_36

    const/16 p1, 0x10e

    .line 482
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCorrectOrientation:I

    goto :goto_38

    .line 484
    :cond_36
    iput v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCorrectOrientation:I

    .line 487
    :goto_38
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mOrientation:I

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->updateCorrectOrientation(IZ)V

    return-void
.end method

.method public showInfo(I)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x6

    if-eq p1, v0, :cond_14

    const/4 v0, 0x7

    if-eq p1, v0, :cond_b

    const/4 p1, 0x0

    goto :goto_25

    .line 356
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/app/common/R$string;->can_not_use_storage:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_25

    .line 353
    :cond_14
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/app/common/R$string;->storage_full:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_25

    .line 359
    :cond_1d
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/feature/vlog/R$string;->vlog_video_reach_size_limit:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 362
    :goto_25
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->setHighlight(Z)V

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->setMessage(Ljava/lang/String;)V

    .line 364
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;->showHint(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V

    return-void
.end method

.method public startToCompose()V
    .registers 5

    .line 796
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cutsame/solution/template/model/TemplateItem;->getShortTitle()Ljava/lang/String;

    move-result-object v0

    .line 797
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startToCompose, template title: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", composeState: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 798
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getComposeState()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 797
    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mNotifyListener:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/ICutSame$INotifyListener;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/ICutSame$INotifyListener;->startToCompose(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V

    .line 800
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVideoGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->exit()V

    return-void
.end method

.method public unInit()V
    .registers 4

    const/4 v0, 0x0

    .line 224
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mInitialed:Z

    .line 225
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mActive:Z

    .line 226
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsZoomSlideWide:Z

    .line 227
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsAlwaysHintShow:Z

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVideoGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->unInit()V

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSegmentFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->unInit()V

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mHelpGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSameHelpGuideUI;->unInit()V

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mLoadingUI:Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 233
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->destroy()V

    .line 234
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mLoadingUI:Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;

    .line 237
    :cond_22
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->resetUIState()V

    .line 238
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mIsRecording:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->updateDraftStateIfNeed(Z)V

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVlogRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 240
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->unRegisterKeysToMonitor()V

    .line 241
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVlogRootView:Landroid/widget/FrameLayout;

    return-void
.end method

.method protected unRegisterKeysToMonitor()V
    .registers 4

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_2f

    .line 266
    const-string v1, "key_anti_video"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_anti_video"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_item_seleccted"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_zoom_limit_monitor"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_tips"

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_2f
    return-void
.end method

.method public updateCurrentPage(I)V
    .registers 2
    .param p1    # I
        .annotation build Lcom/transsion/camera/feature/mode/vlog/IVlog$Page;
        .end annotation
    .end param

    .line 492
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mCurrentPage:I

    .line 493
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mVideoGuideUI:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->updateCurrentPage(I)V

    return-void
.end method

.method public updateOrientation(IZ)V
    .registers 6

    .line 498
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mOrientation:I

    .line 500
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOrientation, orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", anim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 503
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mActive:Z

    if-nez p2, :cond_30

    return-void

    :cond_30
    const/4 p2, 0x1

    .line 507
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->updateCorrectOrientation(IZ)V

    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
    .registers 2

    .line 346
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-void
.end method
