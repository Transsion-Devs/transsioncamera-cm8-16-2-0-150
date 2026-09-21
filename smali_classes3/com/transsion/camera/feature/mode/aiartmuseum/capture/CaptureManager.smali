.class public Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$PreviewingState;,
        Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;,
        Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CapturingState;,
        Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper;,
        Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;,
        Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$ShotCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/IAIArtMuseumUI;

.field private final mAgreementHelper:Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;

.field private mCaptureListener:Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;

.field private final mCaptureShot:Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;

.field private final mCapturingState:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;

.field private mEffect:Ljava/lang/String;

.field private mOrientation:I

.field private mPartial:Ljava/lang/String;

.field private final mPreviewShot:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot;

.field private final mPreviewingState:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private final mStateSwitchLock:Ljava/lang/Object;

.field private mStyle:Ljava/lang/String;

.field private mTravel:Ljava/lang/String;

.field private mWatermark:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAIArtMuseumUI(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aiartmuseum/IAIArtMuseumUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/IAIArtMuseumUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAgreementHelper(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mAgreementHelper:Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureShot(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mCaptureShot:Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCapturingState(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mCapturingState:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentState(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mCurrentState:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEffect(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mEffect:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewShot(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mPreviewShot:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewingState(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mPreviewingState:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingController(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateSwitchLock(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mStateSwitchLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWatermark(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mWatermark:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentState(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mCurrentState:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetEffectValue(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->getEffectValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyCaptureFail(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->notifyCaptureFail()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCaptureShot(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;[B)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->notifyCaptureShot([B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCaptureStart(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->notifyCaptureStart()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyPreviewShot(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;[B)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->notifyPreviewShot([B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monShot(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;[B[B[B)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->onShot(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;[B[B[B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smcheckMainThread()Z
    .registers 1

    .line 0
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->checkMainThread()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CaptureManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/aiartmuseum/IAIArtMuseumUI;Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot;)V
    .registers 9

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$PreviewingState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$PreviewingState;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mPreviewingState:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;

    .line 194
    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CapturingState;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CapturingState;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager-IA;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mCapturingState:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;

    .line 198
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mStateSwitchLock:Ljava/lang/Object;

    .line 78
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mAIArtMuseumUI:Lcom/transsion/camera/feature/mode/aiartmuseum/IAIArtMuseumUI;

    .line 80
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mAgreementHelper:Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;

    .line 81
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mCaptureShot:Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;

    .line 82
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mPreviewShot:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot;

    .line 84
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;->entry()V

    return-void
.end method

.method private static checkMainThread()Z
    .registers 1

    .line 457
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    return v0
.end method

.method private getEffectValue()Ljava/lang/String;
    .registers 4

    .line 130
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEffectValue mEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mEffect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mEffect:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0xa1e8ef7

    if-eq v1, v2, :cond_44

    const v2, 0x3b413694

    if-eq v1, v2, :cond_39

    const v2, 0x3d390147

    if-eq v1, v2, :cond_2e

    goto :goto_49

    :cond_2e
    const-string v1, "key_ai_art_museum_partial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mPartial:Ljava/lang/String;

    return-object p0

    .line 134
    :cond_39
    const-string v1, "key_ai_art_museum_travel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mTravel:Ljava/lang/String;

    return-object p0

    .line 134
    :cond_44
    const-string v1, "key_ai_art_museum_style"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    :cond_49
    :goto_49
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mStyle:Ljava/lang/String;

    return-object p0
.end method

.method private notifyCaptureFail()V
    .registers 1

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mCaptureListener:Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;

    if-eqz p0, :cond_7

    .line 177
    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;->onCaptureFail()V

    :cond_7
    return-void
.end method

.method private notifyCaptureShot([B)V
    .registers 2

    .line 188
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mCaptureListener:Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;

    if-eqz p0, :cond_7

    .line 189
    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;->onCaptureShot([B)V

    :cond_7
    return-void
.end method

.method private notifyCaptureStart()V
    .registers 1

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mCaptureListener:Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;

    if-eqz p0, :cond_7

    .line 171
    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;->onCaptureStart()V

    :cond_7
    return-void
.end method

.method private notifyPreviewShot([B)V
    .registers 2

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mCaptureListener:Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;

    if-eqz p0, :cond_7

    .line 183
    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;->onPreviewShot([B)V

    :cond_7
    return-void
.end method

.method private onShot(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;[B[B[B)V
    .registers 5

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mCurrentState:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;->onShot(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureInfo;[B[B[B)V

    return-void
.end method


# virtual methods
.method public capturing()Z
    .registers 1

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mCurrentState:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;->capturing()Z

    move-result p0

    return p0
.end method

.method public init(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 4

    .line 88
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 89
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-void
.end method

.method public setCaptureListener(Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 98
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mCaptureListener:Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;

    return-void

    .line 100
    :cond_6
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$CaptureListenerWrapper;-><init>(Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mCaptureListener:Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;

    return-void
.end method

.method public shutterClick()Z
    .registers 1

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mCurrentState:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;->shutterClick()Z

    move-result p0

    return p0
.end method

.method public unInit()V
    .registers 2

    .line 93
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "unInit"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateEffect(Ljava/lang/String;)V
    .registers 5

    .line 110
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEffect effect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 111
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mEffect:Ljava/lang/String;

    return-void
.end method

.method public updateOrientation(I)V
    .registers 5

    .line 105
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOrientation orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 106
    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mOrientation:I

    return-void
.end method

.method public updatePartial(Ljava/lang/String;)V
    .registers 5

    .line 125
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePartial partial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mPartial:Ljava/lang/String;

    return-void
.end method

.method public updateStyle(Ljava/lang/String;)V
    .registers 5

    .line 115
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStyle style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mStyle:Ljava/lang/String;

    return-void
.end method

.method public updateTravel(Ljava/lang/String;)V
    .registers 5

    .line 120
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTravel travel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 121
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mTravel:Ljava/lang/String;

    return-void
.end method

.method public updateWatermark(Ljava/lang/String;)V
    .registers 5

    .line 153
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWatermark watermark: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->mWatermark:Ljava/lang/String;

    return-void
.end method
