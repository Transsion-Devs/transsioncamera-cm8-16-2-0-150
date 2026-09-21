.class public Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/IFreeShot;
.implements Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$ShutterClickListener;
.implements Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$ItemClickListener;
.implements Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI$IDragListener;
.implements Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$ISegmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$MySettingChangeListener;
    }
.end annotation


# static fields
.field private static final ACCESS_KEY:Ljava/lang/String; = "free_shot_key"

.field private static final DELAY_STOP_TIME:I = 0x64

.field private static final MAX_COMPOSE_SEGMENT_NUM:I = 0x5

.field private static final MIN_COMPOSE_SEGMENT_NUM:I = 0x2

.field public static final MIN_DURATION:I = 0xbb8

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mActive:Z

.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mAttribution:I

.field private mAutoHintNeedShow:Z

.field private final mCallbackListener:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;

.field private final mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPage:I
    .annotation build Lcom/transsion/camera/feature/mode/vlog/IVlog$Page;
    .end annotation
.end field

.field private mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

.field private final mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

.field private final mFreeFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;

.field private final mHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

.field private mInitialed:Z

.field private mIsAlwaysHintShow:Z

.field private mIsRecording:Z

.field private mIsShutterClick:Z

.field private mIsZoomScaling:Z

.field private mIsZoomSlideWide:Z

.field private mIsZoomWheelUIShowing:Z

.field private final mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

.field private mNotifyListener:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/IFreeShot$INotifyListener;

.field private final mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

.field private mOrientation:I

.field private mPreviewState:I

.field private final mRecorderWrapper:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

.field private mScreenFormType:I

.field private final mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

.field private final mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private final mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field private final mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

.field private mVlogRootView:Landroid/widget/FrameLayout;

.field private final mVlogVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

.field private final mWideCameraTranslation:I


# direct methods
.method public static synthetic $r8$lambda$37G8iehyQn7mbE5HNqZfIRMU77A(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->updateUIState()V

    return-void
.end method

.method public static synthetic $r8$lambda$CHck5nRbv97FikWJeZHZOrziztc(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->lambda$showDeleteDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$LYY-DmV2sciNWyGwZklLy7N_tf0(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;Landroid/content/DialogInterface;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->lambda$showDeleteDialog$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NpvWfvBXscd58LURRmxEDDwActM(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->lambda$showSaveDraftDialog$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hFLbnWaaO1qCI19PIN3TaQcOneo(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;ILandroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->lambda$showDeleteDialog$1(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$lmbfNcyachPeWo7bpnsLEmSqmTw(Ljava/lang/String;)V
    .registers 1

    .line 788
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$nMKZu351W93FrTnwlvW1cPXRN74(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;Landroid/content/DialogInterface;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->lambda$showSaveDraftDialog$6(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$teqwImI83XkTYLr-dehnv8uaMYo(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->lambda$showSaveDraftDialog$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActive(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mActive:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFreeFillUI(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;)Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mFreeFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOperationControl(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;)Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVlogVideoUI(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;)Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mVlogVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsRecording(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsRecording:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsZoomSlideWide(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsZoomSlideWide:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearAlwaysHintInfo(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->clearAlwaysHintInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearAutoHintInfo(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->clearAutoHintInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monRecordFinished(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;ZLjava/lang/String;JLjava/util/List;I)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->onRecordFinished(ZLjava/lang/String;JLjava/util/List;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSegmentRecordingGuide(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->showSegmentRecordingGuide(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAutoHintInfo(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->updateAutoHintInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 78
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_FreeShot"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;IILcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;)V
    .registers 13

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mItemList:Ljava/util/List;

    .line 104
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$MySettingChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$MySettingChangeListener;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const/4 v0, 0x0

    .line 110
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mCurrentPage:I

    .line 125
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsZoomScaling:Z

    .line 574
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mCallbackListener:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;

    .line 132
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    .line 133
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 134
    iput p7, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mOrientation:I

    .line 135
    iput p8, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mScreenFormType:I

    .line 136
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

    .line 137
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    .line 138
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mVlogVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    .line 139
    iput-object p6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    .line 140
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mRecorderWrapper:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    .line 141
    iput-object p10, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    .line 142
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mContext:Landroid/content/Context;

    move-object p6, p0

    .line 144
    new-instance p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;

    iget p3, p6, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mOrientation:I

    iget p4, p6, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mScreenFormType:I

    move-object p8, p6

    move-object p5, p2

    move-object p2, p1

    move-object p1, p5

    move-object p7, p9

    move-object p5, p10

    invoke-direct/range {p0 .. p8}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;IILcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$ItemClickListener;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI$IDragListener;)V

    iput-object p0, p6, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mFreeFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;

    .line 145
    new-instance p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;-><init>(I)V

    iput-object p0, p6, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    .line 146
    new-instance p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    const/4 p2, 0x1

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;-><init>(I)V

    iput-object p0, p6, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    .line 148
    invoke-interface {p7}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    iput-object p0, p6, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_wide_camera_translation_distance:I

    .line 150
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p6, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mWideCameraTranslation:I

    .line 151
    invoke-virtual {p6}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->registerKeysToMonitor()V

    return-void
.end method

.method private clearAlwaysHintInfo()V
    .registers 3

    .line 889
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "clearAlwaysHintInfo"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 890
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsAlwaysHintShow:Z

    .line 891
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;->hideHint(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V

    return-void
.end method

.method private clearAutoHintInfo()V
    .registers 3

    .line 881
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "clearAutoHintInfo"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 882
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;->hideHint(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V

    .line 883
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->setMessage(Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->setHighlight(Z)V

    .line 885
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mAutoHintNeedShow:Z

    return-void
.end method

.method private hideDialog()V
    .registers 1

    .line 842
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    if-eqz p0, :cond_7

    .line 843
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->hide()V

    :cond_7
    return-void
.end method

.method private isMediaItemValid()Z
    .registers 3

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mItemList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_26

    .line 339
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    .line 340
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->isValid()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_26
    :goto_26
    return v1
.end method

.method private synthetic lambda$showDeleteDialog$1(ILandroid/content/DialogInterface;I)V
    .registers 7

    .line 773
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->hide()V

    .line 775
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mItemList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p3, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p2, p3, :cond_34

    .line 776
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mItemList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    .line 777
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mItemList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 779
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mItemList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_35

    .line 780
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mScreenFormType:I

    if-eq v2, v1, :cond_2f

    .line 781
    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mWideCameraTranslation:I

    goto :goto_30

    :cond_2f
    move v2, v0

    .line 780
    :goto_30
    invoke-interface {p3, v2, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->translateWideCamera(IZ)V

    goto :goto_35

    :cond_34
    const/4 p2, 0x0

    .line 784
    :cond_35
    :goto_35
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mItemList:Ljava/util/List;

    invoke-virtual {p3, v2}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->updateItemList(Ljava/util/List;)V

    if-eqz p2, :cond_4d

    .line 786
    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginSource()Ljava/lang/String;

    move-result-object p3

    .line 787
    new-instance v2, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$$ExternalSyntheticLambda4;

    invoke-direct {v2, p3}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 790
    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->reset()V

    .line 793
    :cond_4d
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mFreeFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->remove(I)V

    .line 794
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->exit(Z)V

    .line 795
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p2, 0x142

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 796
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->updateUIState()V

    .line 797
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->showSegmentRecordingGuide(Z)V

    return-void
.end method

.method private synthetic lambda$showDeleteDialog$2(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 801
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->hide()V

    return-void
.end method

.method private synthetic lambda$showDeleteDialog$3(Landroid/content/DialogInterface;)V
    .registers 2

    .line 805
    const-string p1, "free_shot_key"

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->reAccess(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 806
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    return-void
.end method

.method private synthetic lambda$showSaveDraftDialog$4(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 818
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/16 p2, 0x11

    const-string v0, "0"

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 819
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->onBackPressed()Z

    .line 820
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->hide()V

    .line 821
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mNotifyListener:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/IFreeShot$INotifyListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/IFreeShot$INotifyListener;->updateState(I)V

    return-void
.end method

.method private synthetic lambda$showSaveDraftDialog$5(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 825
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    const/16 p2, 0x11

    const-string v0, "1"

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 826
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->onBackPressed()Z

    .line 827
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->delete()V

    .line 828
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->hide()V

    .line 829
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mNotifyListener:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/IFreeShot$INotifyListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/IFreeShot$INotifyListener;->updateState(I)V

    return-void
.end method

.method private synthetic lambda$showSaveDraftDialog$6(Landroid/content/DialogInterface;)V
    .registers 2

    .line 834
    const-string p1, "free_shot_key"

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->reAccess(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 835
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    return-void
.end method

.method private onRecordFinished(ZLjava/lang/String;JLjava/util/List;I)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/highlight/data/HLResult;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 626
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsRecording:Z

    .line 627
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsShutterClick:Z

    if-nez p1, :cond_5a

    move/from16 v1, p6

    .line 630
    rem-int/lit16 v1, v1, 0xb4

    const/4 v2, 0x1

    if-nez v1, :cond_10

    move v3, v2

    goto :goto_11

    :cond_10
    move v3, v0

    .line 631
    :goto_11
    new-instance v4, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    const/16 v5, 0x438

    const/16 v6, 0x780

    move v7, v6

    if-eqz v3, :cond_1b

    goto :goto_1c

    :cond_1b
    move v6, v5

    :goto_1c
    if-eqz v3, :cond_1f

    move v7, v5

    :cond_1f
    if-nez v1, :cond_27

    move v9, v2

    :goto_22
    move-object v5, p2

    move-wide v10, p3

    move-object/from16 v8, p5

    goto :goto_29

    :cond_27
    move v9, v0

    goto :goto_22

    .line 632
    :goto_29
    invoke-direct/range {v4 .. v11}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;-><init>(Ljava/lang/String;IILjava/util/List;IJ)V

    .line 633
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mItemList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mFreeFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->add(I)V

    .line 635
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->clone()Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->updateCurrentSegment(ILcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;)V

    .line 636
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->getInstance()Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->updateRefreshState(IZ)V

    .line 639
    :cond_5a
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mInitialed:Z

    if-nez v1, :cond_5f

    return-void

    .line 643
    :cond_5f
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->updateUIState()V

    .line 644
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-eqz v1, :cond_7c

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsZoomWheelUIShowing:Z

    if-nez v1, :cond_7c

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsZoomScaling:Z

    if-eqz v1, :cond_7c

    .line 645
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mVlogRootView:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 646
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

    invoke-interface {v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;->hideAllHints()V

    goto :goto_7f

    .line 648
    :cond_7c
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->showSegmentRecordingGuide(Z)V

    .line 650
    :goto_7f
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mFreeFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;

    invoke-virtual {v1, v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->setRecording(ZZ)V

    .line 651
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mVlogVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->hideRecordingUI()V

    .line 652
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-interface {p1, v2, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 653
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    const/16 p1, 0x2714

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    .line 654
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onRecordFinished, END"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private performRecord(Z)V
    .registers 5

    .line 383
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsShutterClick:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsShutterClick:Z

    if-nez v0, :cond_f

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mFreeFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->setRecording(ZZ)V

    .line 387
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mRecorderWrapper:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    if-eqz p1, :cond_16

    const-wide/16 v0, 0x64

    goto :goto_18

    :cond_16
    const-wide/16 v0, 0x0

    :goto_18
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->startStop(J)V

    return-void
.end method

.method private resetUIState()V
    .registers 3

    .line 695
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x141

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 696
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x11e

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method private showDeleteDialog(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 8

    .line 761
    const-string v0, "free_shot_key"

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->canAccess(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 766
    :cond_9
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->hideDialog()V

    .line 767
    new-instance v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mScreenFormType:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 768
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mScreenFormType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mOrientation:I

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setOrientation(I)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    move-result-object v0

    .line 769
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 770
    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 772
    new-instance p2, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;I)V

    invoke-virtual {v0, p3, p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 801
    new-instance p1, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;)V

    invoke-virtual {v0, p4, p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 803
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->create()Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    .line 804
    new-instance p2, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 808
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string/jumbo p2, "vlog_dialog"

    invoke-virtual {p1, p0, p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showRootView()V
    .registers 3

    .line 492
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mVlogRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 493
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 494
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mVlogRootView:Landroid/widget/FrameLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_f
    return-void
.end method

.method private showSaveDraftDialog()V
    .registers 4

    .line 812
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->hideDialog()V

    .line 813
    new-instance v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mScreenFormType:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 814
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mScreenFormType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mOrientation:I

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setOrientation(I)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    move-result-object v0

    .line 815
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/vlog/R$string;->vlog_save_draft:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 817
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/vlog/R$string;->vlog_save:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 824
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/vlog/R$string;->vlog_abandon:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;

    .line 832
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$Builder;->create()Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    .line 833
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 837
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string/jumbo v1, "vlog_dialog"

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 838
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    return-void
.end method

.method private showSegmentRecordingGuide(Z)V
    .registers 6

    if-nez p1, :cond_a

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_e

    :cond_a
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsZoomScaling:Z

    if-eqz v0, :cond_1d

    .line 233
    :cond_e
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->setMessage(Ljava/lang/String;)V

    .line 234
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;->hideHint(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V

    return-void

    .line 238
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v1, v0, :cond_2f

    .line 239
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;->hideAllHints()V

    const/4 p1, 0x0

    .line 240
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsAlwaysHintShow:Z

    return-void

    :cond_2f
    if-nez p1, :cond_4c

    .line 245
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/vlog/R$string;->freeshot_not_isshooting:I

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_68

    .line 248
    :cond_4c
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/feature/vlog/R$string;->freeshot_isshooting:I

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->setMessage(Ljava/lang/String;)V

    .line 250
    :goto_68
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-interface {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;->showHint(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V

    const/4 p1, 0x1

    .line 251
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsAlwaysHintShow:Z

    return-void
.end method

.method private unRecordable()Z
    .registers 3

    .line 391
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mCurrentPage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsShutterClick:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsRecording:Z

    if-eqz v0, :cond_1f

    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    if-eqz v0, :cond_17

    .line 393
    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_17
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mPreviewState:I

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    return v1
.end method

.method private updateAutoHintInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 859
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mActive:Z

    if-nez v0, :cond_5

    return-void

    .line 863
    :cond_5
    const-string v0, "key_anti_video"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    .line 864
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/feature/vlog/R$string;->vlog_anti_video_setting_on_tips:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->setMessage(Ljava/lang/String;)V

    .line 865
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->setHighlight(Z)V

    goto :goto_5f

    .line 866
    :cond_21
    const-string v0, "key_super_anti_video"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 867
    const-string p1, "super"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 868
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/feature/vlog/R$string;->vlog_super_anti_video_super_value_on_tips:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_42

    .line 869
    :cond_3a
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/feature/vlog/R$string;->vlog_super_anti_video_normal_value_on_tips:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 870
    :goto_42
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->setMessage(Ljava/lang/String;)V

    .line 871
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->setHighlight(Z)V

    goto :goto_5f

    .line 873
    :cond_4d
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/feature/vlog/R$string;->vlog_open_wide_camera_tip:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->setMessage(Ljava/lang/String;)V

    .line 874
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->setHighlight(Z)V

    .line 877
    :goto_5f
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsZoomScaling:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mAutoHintNeedShow:Z

    return-void
.end method

.method private updateDialog()V
    .registers 4

    .line 848
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mOrientation:I

    .line 849
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mScreenFormType:I

    if-eqz v1, :cond_9

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    :cond_9
    const/4 v0, 0x0

    .line 853
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    if-eqz p0, :cond_11

    .line 854
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->setOrientation(I)V

    :cond_11
    return-void
.end method

.method private updateUIState()V
    .registers 7

    .line 658
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mActive:Z

    if-nez v0, :cond_6

    goto/16 :goto_7a

    .line 662
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x2717

    const/4 v2, 0x5

    const/16 v3, 0x141

    if-ne v0, v2, :cond_37

    .line 665
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    const/16 v2, 0x2719

    invoke-interface {v0, v2}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    .line 666
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x11d

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 667
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 668
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    .line 669
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->couldShowWideCamera(Z)V

    .line 670
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->hideWideCamera()V

    return-void

    .line 672
    :cond_37
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v5, 0x11e

    invoke-interface {v4, v5}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 673
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    const/16 v5, 0x271a

    invoke-interface {v4, v5}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    const/4 v4, 0x2

    if-ge v0, v4, :cond_5f

    if-nez v0, :cond_52

    .line 677
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x140

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_57

    .line 679
    :cond_52
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 681
    :goto_57
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    const/16 v1, 0x2718

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    goto :goto_6b

    :cond_5f
    if-gt v0, v2, :cond_6b

    .line 683
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 684
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    .line 687
    :cond_6b
    :goto_6b
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsZoomWheelUIShowing:Z

    if-nez v0, :cond_7a

    .line 688
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->couldShowWideCamera(Z)V

    .line 689
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->showWideCamera()V

    :cond_7a
    :goto_7a
    return-void
.end method


# virtual methods
.method public checkSpaceEnough()Z
    .registers 7

    .line 446
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 447
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "checkRecordable mInternalStorageOperator is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 450
    :cond_d
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2c

    const-wide/32 v4, 0xc800000

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2c

    .line 453
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[checkStorageSpace] space in not enough, can not record video."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 454
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->showInfo(I)V

    return v1

    :cond_2c
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_3e

    .line 457
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[checkStorageSpace] StorageVolume is removed."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 458
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->showInfo(I)V

    return v1

    :cond_3e
    const/4 p0, 0x1

    return p0
.end method

.method public composeVlogIfNeed()V
    .registers 6

    .line 412
    const-string v0, "free_shot_key"

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->canAccess(Ljava/lang/String;)Z

    move-result v1

    .line 413
    sget-object v2, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    :cond_1f
    const/4 v1, 0x0

    .line 418
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->setEnable(Z)V

    .line 420
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mRecorderWrapper:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->isHLInitialized()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_3d

    .line 421
    const-string v1, "composeVlogIfNeed, but HL sdk is not initialized"

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mRecorderWrapper:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->initHighLightIfNeed()V

    .line 423
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->reAccess(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0, v3}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->setEnable(Z)V

    return-void

    .line 428
    :cond_3d
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->checkSpaceEnough()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 429
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->reAccess(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0, v3}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->setEnable(Z)V

    return-void

    .line 434
    :cond_4a
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->isReady()Z

    move-result v1

    if-nez v1, :cond_60

    .line 435
    invoke-virtual {p0, v3}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->setEnable(Z)V

    .line 437
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->initialize(Landroid/app/Application;)V

    .line 438
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->reAccess(Ljava/lang/String;)V

    return-void

    .line 442
    :cond_60
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->startToCompose()V

    return-void
.end method

.method public enter()V
    .registers 4

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mActive:Z

    .line 202
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->showRootView()V

    .line 203
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mOrientation:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->updateOrientation(IZ)V

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mVlogVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->setClickListener(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI$ShutterClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->setSegmentListener(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$ISegmentListener;)V

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mFreeFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mItemList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->enter(Ljava/util/List;)V

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mRecorderWrapper:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mCallbackListener:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->enter(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;)V

    .line 208
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->updateUIState()V

    .line 209
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->showSegmentRecordingGuide(Z)V

    return-void
.end method

.method public exit()V
    .registers 4

    .line 219
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit freeShot module, mActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 220
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mActive:Z

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mActive:Z

    .line 224
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mFreeFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->exit()V

    .line 225
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

    invoke-interface {v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;->hideAllHints()V

    .line 226
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsAlwaysHintShow:Z

    .line 227
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    const/16 v0, 0x2718

    invoke-interface {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    .line 228
    const-string p0, "free_shot_key"

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->clear(Ljava/lang/String;)V

    return-void
.end method

.method public init()V
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->cut_same_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mVlogRootView:Landroid/widget/FrameLayout;

    .line 157
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mFreeFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->inflate(Landroid/view/ViewGroup;)V

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mInitialed:Z

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 5

    .line 500
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mActive:Z

    if-nez v0, :cond_5

    goto :goto_5f

    .line 504
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mFreeFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->notifyCameraOperateActionToUI(I)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eq p1, v0, :cond_60

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_4a

    const/16 v0, 0x19

    const/4 v2, 0x1

    if-eq p1, v0, :cond_47

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_44

    const/16 v0, 0x192

    if-eq p1, v0, :cond_32

    const/16 v0, 0x193

    if-eq p1, v0, :cond_25

    goto :goto_5f

    .line 544
    :cond_25
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsZoomScaling:Z

    .line 545
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsRecording:Z

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->showSegmentRecordingGuide(Z)V

    .line 546
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mVlogRootView:Landroid/widget/FrameLayout;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/utils/AnimUtils;->show(Landroid/view/View;)V

    return-void

    .line 536
    :cond_32
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsZoomScaling:Z

    .line 537
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->clearAutoHintInfo()V

    .line 538
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->clearAlwaysHintInfo()V

    .line 539
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsRecording:Z

    if-nez p1, :cond_5f

    .line 540
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mVlogRootView:Landroid/widget/FrameLayout;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/utils/AnimUtils;->hide(Landroid/view/View;)V

    return-void

    .line 520
    :cond_44
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsZoomWheelUIShowing:Z

    return-void

    .line 517
    :cond_47
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsZoomWheelUIShowing:Z

    return-void

    .line 523
    :cond_4a
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_51

    goto :goto_5f

    .line 529
    :cond_51
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsZoomScaling:Z

    if-eqz p1, :cond_5f

    .line 530
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsZoomScaling:Z

    .line 531
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->showRootView()V

    .line 532
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsRecording:Z

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->showSegmentRecordingGuide(Z)V

    :cond_5f
    :goto_5f
    return-void

    .line 507
    :cond_60
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraOperateActionToUI, preview started, mAutoHintNeedShow: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mAutoHintNeedShow:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 508
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsZoomSlideWide:Z

    .line 509
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mAutoHintNeedShow:Z

    if-eqz p1, :cond_88

    .line 510
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-interface {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;->showHint(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V

    .line 511
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mAutoHintNeedShow:Z

    return-void

    .line 513
    :cond_88
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;->hideHint(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V

    return-void
.end method

.method public onBackClick()Z
    .registers 6

    .line 296
    const-string v0, "free_shot_key"

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->canAccess(Ljava/lang/String;)Z

    move-result v1

    .line 299
    sget-object v2, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBackClick, mIsRecording: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsRecording:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsShutterClick: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsShutterClick:Z

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

    .line 307
    :try_start_35
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsRecording:Z

    if-eqz v3, :cond_44

    .line 308
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->performRecord(Z)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3c} :catch_42
    .catchall {:try_start_35 .. :try_end_3c} :catchall_40

    .line 328
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->reAccess(Ljava/lang/String;)V

    return v2

    :catchall_40
    move-exception p0

    goto :goto_87

    :catch_42
    move-exception p0

    goto :goto_6f

    .line 310
    :cond_44
    :try_start_44
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsShutterClick:Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_46} :catch_42
    .catchall {:try_start_44 .. :try_end_46} :catchall_40

    if-eqz v3, :cond_4c

    .line 328
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->reAccess(Ljava/lang/String;)V

    return v2

    .line 315
    :cond_4c
    :try_start_4c
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->leave()Z

    move-result v3

    if-nez v3, :cond_6b

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mFreeFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->onBackClick()Z

    move-result v3

    if-eqz v3, :cond_5d

    goto :goto_6b

    .line 319
    :cond_5d
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->isMediaItemValid()Z

    move-result v3

    if-eqz v3, :cond_67

    .line 320
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->showSaveDraftDialog()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_66} :catch_42
    .catchall {:try_start_4c .. :try_end_66} :catchall_40

    return v2

    .line 328
    :cond_67
    :goto_67
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->reAccess(Ljava/lang/String;)V

    goto :goto_86

    :cond_6b
    :goto_6b
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->reAccess(Ljava/lang/String;)V

    return v2

    .line 325
    :goto_6f
    :try_start_6f
    sget-object v2, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBackClick, exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_6f .. :try_end_85} :catchall_40

    goto :goto_67

    :goto_86
    return v1

    .line 328
    :goto_87
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->reAccess(Ljava/lang/String;)V

    .line 330
    throw p0
.end method

.method public onBackPressedForUI()Z
    .registers 1

    .line 291
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsZoomWheelUIShowing:Z

    return p0
.end method

.method public onCameraStateChanged(I)V
    .registers 3

    .line 560
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mPreviewState:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_24

    .line 561
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mActive:Z

    if-eqz p1, :cond_24

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsRecording:Z

    if-nez p1, :cond_24

    .line 562
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 563
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->isMediaItemValid()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 564
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mRecorderWrapper:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->initHighLightIfNeed()V

    :cond_24
    return-void
.end method

.method public onDeleteAndReshoot(I)V
    .registers 6

    .line 744
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeleteAndReshoot, index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/feature/vlog/R$string;->vlog_delete_segment_short:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/vlog/R$string;->vlog_delete:I

    .line 746
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/camera/feature/vlog/R$string;->vlog_cancel:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 745
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->showDeleteDialog(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDoneClick()V
    .registers 1

    .line 399
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->composeVlogIfNeed()V

    return-void
.end method

.method public onDragEnd()V
    .registers 2

    .line 739
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mItemList:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->updateItemList(Ljava/util/List;)V

    return-void
.end method

.method public onFirstSteadyFrameArrive()V
    .registers 1

    .line 555
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mFreeFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->onFirstSteadyFrame()V

    return-void
.end method

.method public onItemClick(I)V
    .registers 5

    .line 701
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick, position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_40

    .line 703
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->enter(Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;I)V

    .line 704
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    const/16 v0, 0x2715

    invoke-interface {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    .line 705
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x11b

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 706
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->clearAutoHintInfo()V

    .line 707
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->clearAlwaysHintInfo()V

    return-void

    .line 709
    :cond_40
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->exit(Z)V

    return-void
.end method

.method public onItemDelete(I)V
    .registers 6

    .line 715
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemDelete, position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/feature/vlog/R$string;->vlog_delete_segment_short:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/vlog/R$string;->vlog_delete:I

    .line 717
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/camera/feature/vlog/R$string;->vlog_cancel:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 716
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->showDeleteDialog(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 4

    .line 727
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mScreenFormType:I

    if-eq v0, p1, :cond_17

    .line 728
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mScreenFormType:I

    .line 729
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mFreeFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->onScreenFormChanged(IZ)V

    .line 730
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mDialog:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    if-eqz p1, :cond_14

    .line 731
    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mScreenFormType:I

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->updateScreenFormType(I)V

    .line 733
    :cond_14
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->updateDialog()V

    :cond_17
    return-void
.end method

.method public onSegmentEditComplete()V
    .registers 3

    .line 751
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onSegmentEditComplete"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 752
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->showSegmentRecordingGuide(Z)V

    return-void
.end method

.method public onVideoShutterClick()V
    .registers 4

    .line 350
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoShutterClick, mIsShutterClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsShutterClick:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsRecording: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPreviewState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mPreviewState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 353
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->unRecordable()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 354
    const-string p0, "onVideoShutterClick, unable to record"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 358
    :cond_38
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsRecording:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->performRecord(Z)V

    .line 359
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsRecording:Z

    if-nez v0, :cond_48

    .line 360
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    const/16 v0, 0x2711

    invoke-interface {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    :cond_48
    return-void
.end method

.method public pause()V
    .registers 4

    .line 185
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->hideDialog()V

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mFreeFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->pause()V

    .line 188
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsZoomSlideWide:Z

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 189
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->clearAutoHintInfo()V

    goto :goto_13

    .line 191
    :cond_11
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsZoomSlideWide:Z

    .line 193
    :goto_13
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-interface {v0, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;->hideHint(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V

    .line 194
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mActive:Z

    if-eqz v0, :cond_23

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mRecorderWrapper:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->leave(ZZ)Z

    :cond_23
    return-void
.end method

.method protected registerKeysToMonitor()V
    .registers 4

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_2f

    .line 271
    const-string v1, "key_anti_video"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_anti_video"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_item_seleccted"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_zoom_limit_monitor"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_tips"

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_2f
    return-void
.end method

.method public resume()V
    .registers 3

    .line 174
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsAlwaysHintShow:Z

    if-eqz v0, :cond_b

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;->showHint(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V

    .line 178
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mFreeFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->resume()V

    .line 180
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->hideDialog()V

    return-void
.end method

.method public setAttribution(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;)V"
        }
    .end annotation

    .line 256
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAttribution, attribution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 257
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mAttribution:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_21

    .line 259
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_2b

    .line 261
    :cond_21
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 262
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mItemList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    :goto_2b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mRecorderWrapper:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    if-eqz p0, :cond_32

    .line 265
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->initHighLightIfNeed()V

    :cond_32
    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mFreeFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->setEnable(Z)V

    return-void
.end method

.method public setNotifyListener(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/IFreeShot$INotifyListener;)V
    .registers 2

    .line 722
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mNotifyListener:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/IFreeShot$INotifyListener;

    return-void
.end method

.method public setStoreValueMonitor(Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;)V
    .registers 2

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

    .line 371
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/app/common/R$string;->can_not_use_storage:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_25

    .line 368
    :cond_14
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/app/common/R$string;->storage_full:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_25

    .line 374
    :cond_1d
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/feature/vlog/R$string;->vlog_video_reach_size_limit:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 377
    :goto_25
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->setHighlight(Z)V

    .line 378
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->setMessage(Ljava/lang/String;)V

    .line 379
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mVlogHintUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mCommonAutoHintInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;->showHint(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V

    return-void
.end method

.method public startToCompose()V
    .registers 4

    .line 407
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startToCompose, mItemList size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mNotifyListener:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/IFreeShot$INotifyListener;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mItemList:Ljava/util/List;

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/IFreeShot$INotifyListener;->startToCompose(Ljava/util/List;)V

    return-void
.end method

.method public unInit()V
    .registers 2

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mActive:Z

    .line 164
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mInitialed:Z

    .line 165
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsZoomSlideWide:Z

    .line 166
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mIsAlwaysHintShow:Z

    .line 167
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->resetUIState()V

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mFreeFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->unInit()V

    .line 169
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->unRegisterKeysToMonitor()V

    return-void
.end method

.method protected unRegisterKeysToMonitor()V
    .registers 4

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_2f

    .line 281
    const-string v1, "key_anti_video"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_anti_video"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_item_seleccted"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_zoom_limit_monitor"

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_tips"

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_2f
    return-void
.end method

.method public updateCurrentPage(I)V
    .registers 2

    .line 467
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mCurrentPage:I

    return-void
.end method

.method public updateOrientation(IZ)V
    .registers 8

    .line 472
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 473
    :goto_8
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mOrientation:I

    .line 474
    sget-object v2, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateOrientation, orientation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mActive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", anim: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 477
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mActive:Z

    if-nez v2, :cond_38

    goto :goto_6b

    .line 481
    :cond_38
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mSegmentEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-virtual {v2, p1, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->updateOrientation(IZ)V

    .line 482
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mVlogVideoUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;

    invoke-virtual {v1, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogVideoUI;->updateOrientation(IZ)V

    .line 483
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mFreeFillUI:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->setOrientation(I)V

    .line 484
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_vlog_correct_orientation"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 485
    invoke-virtual {v1, v2, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_6b

    .line 487
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->updateDialog()V

    :cond_6b
    :goto_6b
    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
    .registers 2

    .line 403
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeShot;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-void
.end method
