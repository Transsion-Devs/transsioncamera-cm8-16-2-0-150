.class public Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;
.super Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mHandMarkerView:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;

.field private mMarkerRoot:Landroid/view/View;

.field private final mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

.field private mRootView:Landroid/view/ViewGroup;


# direct methods
.method public static synthetic $r8$lambda$0PMiK4lWVYM-hiQKZoUOhnNKcm4(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;II)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->lambda$updateHandMarker$1(Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$n2zb2l_VDiwxuI-L-fO9gxeZlc0(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->lambda$updateHandLandmarkerStatus$0(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandMarkerView(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;)Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->mHandMarkerView:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "HandMarkerUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 3

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V

    .line 39
    new-instance p1, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI$1;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    return-void
.end method

.method private initView()V
    .registers 5

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->mRootView:Landroid/view/ViewGroup;

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/aiartmuseum/R$layout;->ai_art_museum_marker_layout:I

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->mRootView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 73
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->mMarkerRoot:Landroid/view/View;

    .line 75
    sget v1, Lcom/transsion/camera/feature/aiartmuseum/R$id;->ai_art_museum_marker_overlay:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->mHandMarkerView:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->mMarkerRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method private synthetic lambda$updateHandLandmarkerStatus$0(Z)V
    .registers 5

    .line 107
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateHandLandmarkerStatusExecuted status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->mHandMarkerView:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;

    if-eqz v0, :cond_2d

    const/4 v1, 0x0

    if-eqz p1, :cond_20

    move v2, v1

    goto :goto_22

    :cond_20
    const/16 v2, 0x8

    .line 109
    :goto_22
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_2d

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->mHandMarkerView:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->update(Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;II)V

    :cond_2d
    return-void
.end method

.method private synthetic lambda$updateHandMarker$1(Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;II)V
    .registers 4

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->mHandMarkerView:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;

    if-eqz p0, :cond_7

    .line 122
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->update(Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;II)V

    :cond_7
    return-void
.end method


# virtual methods
.method protected getMarkerRoot()Landroid/view/View;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->mMarkerRoot:Landroid/view/View;

    return-object p0
.end method

.method public init()V
    .registers 1

    .line 64
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->init()V

    .line 66
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->initView()V

    return-void
.end method

.method public pause()V
    .registers 3

    .line 95
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->pause()V

    .line 96
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->mHandMarkerView:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;

    if-eqz v0, :cond_1a

    const/16 v1, 0x8

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->mHandMarkerView:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;->update(Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;II)V

    :cond_1a
    return-void
.end method

.method public unInit()V
    .registers 3

    .line 88
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->unInit()V

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->mMarkerRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method public updateHandLandmarkerStatus(Z)V
    .registers 5

    .line 104
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateHandLandmarkerStatus status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->mHandMarkerView:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;

    if-eqz v0, :cond_23

    .line 106
    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_23
    return-void
.end method

.method public updateHandMarker(Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;II)V
    .registers 6

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->mHandMarkerView:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;

    if-eqz v0, :cond_c

    .line 120
    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method
