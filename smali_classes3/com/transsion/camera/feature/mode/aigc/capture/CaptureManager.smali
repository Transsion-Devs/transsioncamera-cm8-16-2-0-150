.class public Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$PreviewingState;,
        Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;,
        Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;,
        Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;,
        Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureInfo;,
        Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$ShotCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAIGCUI:Lcom/transsion/camera/feature/mode/aigc/IAIGCUI;

.field private final mAgreementHelper:Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;

.field private mCaptureListener:Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;

.field private final mCaptureShot:Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;

.field private final mCapturingState:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;

.field private final mFaceMonitor:Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;

.field private mOrientation:I

.field private final mPreviewShot:Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot;

.field private final mPreviewingState:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private final mStateSwitchLock:Ljava/lang/Object;

.field private mTemplate:Ljava/lang/String;

.field private mWatermark:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAIGCUI(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aigc/IAIGCUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mAIGCUI:Lcom/transsion/camera/feature/mode/aigc/IAIGCUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAgreementHelper(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mAgreementHelper:Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureShot(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mCaptureShot:Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCapturingState(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mCapturingState:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentState(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mCurrentState:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceMonitor(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mFaceMonitor:Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewShot(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mPreviewShot:Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewingState(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mPreviewingState:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingController(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateSwitchLock(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mStateSwitchLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTemplate(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mTemplate:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWatermark(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mWatermark:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentState(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mCurrentState:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCaptureEnd(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;[B)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->notifyCaptureEnd([B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCaptureFail(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->notifyCaptureFail()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCaptureShot(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;[B)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->notifyCaptureShot([B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCaptureStart(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->notifyCaptureStart()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyPreviewShot(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;[B)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->notifyPreviewShot([B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monShot(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureInfo;[B[B[B)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->onShot(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureInfo;[B[B[B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monShot(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;[B)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->onShot([B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smcheckMainThread()Z
    .registers 1

    .line 0
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->checkMainThread()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CaptureManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/aigc/IAIGCUI;Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot;Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;)V
    .registers 10

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$PreviewingState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$PreviewingState;-><init>(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mPreviewingState:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;

    .line 160
    new-instance v2, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CapturingState;-><init>(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager-IA;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mCapturingState:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;

    .line 164
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mStateSwitchLock:Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mAIGCUI:Lcom/transsion/camera/feature/mode/aigc/IAIGCUI;

    .line 73
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mPreviewShot:Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot;

    .line 74
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mCaptureShot:Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;

    .line 75
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mAgreementHelper:Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;

    .line 76
    iput-object p6, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mFaceMonitor:Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;

    .line 78
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;->entry()V

    return-void
.end method

.method private static checkMainThread()Z
    .registers 1

    .line 443
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    return v0
.end method

.method private notifyCaptureEnd([B)V
    .registers 2

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mCaptureListener:Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;

    if-eqz p0, :cond_7

    .line 155
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;->onCaptureEnd([B)V

    :cond_7
    return-void
.end method

.method private notifyCaptureFail()V
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mCaptureListener:Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;

    if-eqz p0, :cond_7

    .line 137
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;->onCaptureFail()V

    :cond_7
    return-void
.end method

.method private notifyCaptureShot([B)V
    .registers 2

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mCaptureListener:Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;

    if-eqz p0, :cond_7

    .line 149
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;->onCaptureShot([B)V

    :cond_7
    return-void
.end method

.method private notifyCaptureStart()V
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mCaptureListener:Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;

    if-eqz p0, :cond_7

    .line 131
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;->onCaptureStart()V

    :cond_7
    return-void
.end method

.method private notifyPreviewShot([B)V
    .registers 2

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mCaptureListener:Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;

    if-eqz p0, :cond_7

    .line 143
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;->onPreviewShot([B)V

    :cond_7
    return-void
.end method

.method private onShot(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureInfo;[B[B[B)V
    .registers 5

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mCurrentState:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;->onShot(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureInfo;[B[B[B)V

    return-void
.end method

.method private onShot([B)V
    .registers 2

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mCurrentState:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;->onShot([B)V

    return-void
.end method


# virtual methods
.method public capturing()Z
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mCurrentState:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;->capturing()Z

    move-result p0

    return p0
.end method

.method public init(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 4

    .line 82
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 83
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-void
.end method

.method public setCaptureListener(Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 92
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mCaptureListener:Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;

    return-void

    .line 94
    :cond_6
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$CaptureListenerWrapper;-><init>(Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mCaptureListener:Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;

    return-void
.end method

.method public shutterClick()Z
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mCurrentState:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;->shutterClick()Z

    move-result p0

    return p0
.end method

.method public unInit()V
    .registers 2

    .line 87
    sget-object p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "unInit"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateOrientation(I)V
    .registers 5

    .line 99
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOrientation orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 100
    iput p1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mOrientation:I

    return-void
.end method

.method public updateTemplate(Ljava/lang/String;)V
    .registers 5

    .line 104
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTemplate template: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mTemplate:Ljava/lang/String;

    return-void
.end method

.method public updateWatermark(Ljava/lang/String;)V
    .registers 5

    .line 109
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWatermark watermark: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->mWatermark:Ljava/lang/String;

    return-void
.end method
