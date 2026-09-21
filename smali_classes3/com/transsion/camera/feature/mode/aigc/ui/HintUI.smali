.class public Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;
.super Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/aigc/ui/IHintUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCameraId:Ljava/lang/String;

.field private final mCaptureSuggestion:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mCaptureSuggestionPolicy:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;

.field private final mContext:Landroid/content/Context;

.field private final mMaximumDailyUsageHint:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mNoFaceCaptureHint:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mPreviewCoverShow:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmCameraId(Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureSuggestion(Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->mCaptureSuggestion:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIGC_HintUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 6

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V

    .line 43
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->mCaptureSuggestion:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 45
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->mNoFaceCaptureHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 47
    new-instance v2, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v2, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->mMaximumDailyUsageHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 51
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->mContext:Landroid/content/Context;

    .line 52
    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;-><init>(Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->mCaptureSuggestionPolicy:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;

    .line 54
    sget p0, Lcom/transsion/camera/feature/aigc/R$string;->aigc_capture_suggestion:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 55
    sget p0, Lcom/transsion/camera/feature/aigc/R$string;->aigc_no_face_capture_hint:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 56
    sget p0, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_capture_tip_maximum_daily_usage:I

    .line 57
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method private hideMaximumDailyUsageHint()V
    .registers 3

    .line 122
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideMaximumDailyUsageHint"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->mMaximumDailyUsageHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private hideNoFaceCaptureTip()V
    .registers 3

    .line 109
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideNoFaceCaptureTip"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->mNoFaceCaptureHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method


# virtual methods
.method public hideCaptureSuggestion()V
    .registers 3

    .line 92
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideCaptureSuggestion"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->mCaptureSuggestion:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public init()V
    .registers 1

    .line 66
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->init()V

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->mCaptureSuggestionPolicy:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->clear()V

    return-void
.end method

.method public setCameraId(Ljava/lang/String;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method public setPreviewCoverVisibility(Z)V
    .registers 2

    .line 105
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->mPreviewCoverShow:Z

    return-void
.end method

.method public showCaptureSuggestion()V
    .registers 4

    .line 85
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showCaptureSuggestion, CurrentUIState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_31

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->mPreviewCoverShow:Z

    if-nez v0, :cond_31

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->mCaptureSuggestion:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_31
    return-void
.end method

.method public showMaximumDailyUsageHint()V
    .registers 4

    .line 115
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showMaximumDailyUsageHint CurrentUIState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2d

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->mMaximumDailyUsageHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_2d
    return-void
.end method

.method public showNoFaceCaptureTip()V
    .registers 4

    .line 98
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showNoFaceCaptureTip CurrentUIState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2d

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->mNoFaceCaptureHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_2d
    return-void
.end method

.method public unInit()V
    .registers 2

    .line 72
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->unInit()V

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->mCaptureSuggestionPolicy:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->clear()V

    .line 74
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->hideNoFaceCaptureTip()V

    .line 75
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->hideCaptureSuggestion()V

    .line 76
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->hideMaximumDailyUsageHint()V

    return-void
.end method

.method public updateCaptureSuggestion(Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;)V
    .registers 2

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->mCaptureSuggestionPolicy:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI$CaptureSuggestionPolicy;->updateFace(Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;)V

    return-void
.end method
