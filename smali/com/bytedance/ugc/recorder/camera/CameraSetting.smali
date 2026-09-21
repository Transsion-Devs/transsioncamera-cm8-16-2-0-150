.class public final Lcom/bytedance/ugc/recorder/camera/CameraSetting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ugc/recorder/camera/ICameraSettting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ugc/recorder/camera/CameraSetting$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bytedance/ugc/recorder/camera/CameraSetting$Companion;

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_PLAY:I = 0x3

.field public static final STATUS_READY:I = 0x1

.field public static final STATUS_STOP:I = 0x2


# instance fields
.field private final cameLifeManager$delegate:Lkotlin/Lazy;

.field private mPlayStatus:I

.field private nleEditor:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

.field private nleListener:Lcom/bytedance/ugc/recorder/camera/CameraSetting$nleListener$1;

.field private nleRecorder:Lcom/bytedance/ugc/nlerecorder/NLERecorder;

.field private recordDisplaySettings:Lcom/bytedance/ugc/recorder/beans/RecordDisplaySettings;

.field private final recorder:Lcom/ss/android/vesdk/VERecorder;

.field private surfaceView:Landroid/view/SurfaceView;


# direct methods
.method public static synthetic $r8$lambda$KrWNxLwQkd4_t_-Ff6tij9P4mRA(Lkotlin/jvm/functions/Function0;Lcom/bytedance/ugc/recorder/camera/CameraSetting;I)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->stopPrePlay$lambda-1(Lkotlin/jvm/functions/Function0;Lcom/bytedance/ugc/recorder/camera/CameraSetting;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/ugc/recorder/camera/CameraSetting$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ugc/recorder/camera/CameraSetting$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->Companion:Lcom/bytedance/ugc/recorder/camera/CameraSetting$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/vesdk/VERecorder;)V
    .registers 3

    const-string v0, "recorder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->recorder:Lcom/ss/android/vesdk/VERecorder;

    .line 26
    sget-object v0, Lcom/bytedance/ugc/recorder/camera/CameraSetting$cameLifeManager$2;->INSTANCE:Lcom/bytedance/ugc/recorder/camera/CameraSetting$cameLifeManager$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->cameLifeManager$delegate:Lkotlin/Lazy;

    .line 31
    new-instance v0, Lcom/bytedance/ugc/recorder/beans/RecordDisplaySettings;

    invoke-direct {v0}, Lcom/bytedance/ugc/recorder/beans/RecordDisplaySettings;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->recordDisplaySettings:Lcom/bytedance/ugc/recorder/beans/RecordDisplaySettings;

    .line 33
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;-><init>()V

    iput-object v0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->nleEditor:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    .line 36
    new-instance v0, Lcom/bytedance/ugc/recorder/camera/CameraSetting$nleListener$1;

    invoke-direct {v0, p0}, Lcom/bytedance/ugc/recorder/camera/CameraSetting$nleListener$1;-><init>(Lcom/bytedance/ugc/recorder/camera/CameraSetting;)V

    iput-object v0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->nleListener:Lcom/bytedance/ugc/recorder/camera/CameraSetting$nleListener$1;

    .line 49
    new-instance v0, Lcom/bytedance/ugc/nlerecorder/NLERecorder;

    invoke-direct {v0, p1}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;-><init>(Lcom/ss/android/vesdk/VERecorder;)V

    iput-object v0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->nleRecorder:Lcom/bytedance/ugc/nlerecorder/NLERecorder;

    .line 50
    iget-object p1, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->nleEditor:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    iget-object p0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->nleListener:Lcom/bytedance/ugc/recorder/camera/CameraSetting$nleListener$1;

    invoke-virtual {p1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->addConsumer(Lcom/bytedance/ies/nle/editor_jni/NLEEditorListener;)V

    return-void
.end method

.method public static final synthetic access$getNleEditor$p(Lcom/bytedance/ugc/recorder/camera/CameraSetting;)Lcom/bytedance/ies/nle/editor_jni/NLEEditor;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->nleEditor:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    return-object p0
.end method

.method public static final synthetic access$getNleRecorder$p(Lcom/bytedance/ugc/recorder/camera/CameraSetting;)Lcom/bytedance/ugc/nlerecorder/NLERecorder;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->nleRecorder:Lcom/bytedance/ugc/nlerecorder/NLERecorder;

    return-object p0
.end method

.method public static final synthetic access$getRecordDisplaySettings$p(Lcom/bytedance/ugc/recorder/camera/CameraSetting;)Lcom/bytedance/ugc/recorder/beans/RecordDisplaySettings;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->recordDisplaySettings:Lcom/bytedance/ugc/recorder/beans/RecordDisplaySettings;

    return-object p0
.end method

.method public static final synthetic access$getSurfaceView$p(Lcom/bytedance/ugc/recorder/camera/CameraSetting;)Landroid/view/SurfaceView;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->surfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method private final getCameLifeManager()Lcom/bytedance/ugc/recorder/camera/CameraLifeManager;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->cameLifeManager$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ugc/recorder/camera/CameraLifeManager;

    return-object p0
.end method

.method private static final stopPrePlay$lambda-1(Lkotlin/jvm/functions/Function0;Lcom/bytedance/ugc/recorder/camera/CameraSetting;I)V
    .registers 3

    const-string p2, "$action"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 p0, 0x2

    .line 157
    iput p0, p1, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->mPlayStatus:I

    return-void
.end method


# virtual methods
.method public attachSurface(Landroid/view/SurfaceView;)V
    .registers 3

    const-string v0, "surfaceV"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->surfaceView:Landroid/view/SurfaceView;

    .line 78
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance v0, Lcom/bytedance/ugc/recorder/camera/CameraSetting$attachSurface$1;

    invoke-direct {v0, p0}, Lcom/bytedance/ugc/recorder/camera/CameraSetting$attachSurface$1;-><init>(Lcom/bytedance/ugc/recorder/camera/CameraSetting;)V

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public changeModel(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V
    .registers 3

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->nleEditor:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    invoke-virtual {v0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->setModel(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V

    .line 127
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->nleEditor:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->commit()Z

    return-void
.end method

.method public final getRecorder()Lcom/ss/android/vesdk/VERecorder;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->recorder:Lcom/ss/android/vesdk/VERecorder;

    return-object p0
.end method

.method public returnPreView()V
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->nleEditor:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditor;->getModel()Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getStage()Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 134
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->nleRecorder:Lcom/bytedance/ugc/nlerecorder/NLERecorder;

    if-nez p0, :cond_11

    goto :goto_14

    :cond_11
    invoke-virtual {p0, v0}, Lcom/bytedance/ugc/nlerecorder/NLERecorder;->setDataSource(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V

    :cond_14
    :goto_14
    return-void
.end method

.method public startPrePlay()V
    .registers 5

    .line 141
    new-instance v0, Lcom/ss/android/vesdk/VEVolumeParam;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEVolumeParam;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 142
    iput v1, v0, Lcom/ss/android/vesdk/VEVolumeParam;->bgmPlayVolume:F

    .line 143
    iget-object v1, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->recorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v1, v0}, Lcom/ss/android/vesdk/VERecorder;->setVolume(Lcom/ss/android/vesdk/VEVolumeParam;)V

    .line 144
    iget-object v0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->recorder:Lcom/ss/android/vesdk/VERecorder;

    .line 145
    new-instance v1, Lcom/ss/android/vesdk/model/VEPrePlayParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/ss/android/vesdk/model/VEPrePlayParams;-><init>(IZI)V

    .line 144
    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VERecorder;->startPrePlay(Lcom/ss/android/vesdk/model/VEPrePlayParams;)I

    const/4 v0, 0x3

    .line 150
    iput v0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->mPlayStatus:I

    return-void
.end method

.method public stopPrePlay(Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->recorder:Lcom/ss/android/vesdk/VERecorder;

    new-instance v1, Lcom/bytedance/ugc/recorder/camera/CameraSetting$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/bytedance/ugc/recorder/camera/CameraSetting$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;Lcom/bytedance/ugc/recorder/camera/CameraSetting;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VERecorder;->stopPrePlay(Lcom/ss/android/vesdk/VEListener$VECallListener;)I

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    .line 159
    iput v0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->mPlayStatus:I

    .line 160
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_18
    return-void
.end method

.method public switch(II)V
    .registers 6

    .line 54
    iget-object v0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->recordDisplaySettings:Lcom/bytedance/ugc/recorder/beans/RecordDisplaySettings;

    invoke-virtual {v0}, Lcom/bytedance/ugc/recorder/beans/RecordDisplaySettings;->getVeDisplaySettings()Lcom/ss/android/vesdk/VEDisplaySettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDisplaySettings;->getRenderSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_23

    :cond_d
    iget v0, v0, Lcom/ss/android/vesdk/VESize;->width:I

    if-ne v0, p1, :cond_23

    .line 55
    iget-object v0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->recordDisplaySettings:Lcom/bytedance/ugc/recorder/beans/RecordDisplaySettings;

    invoke-virtual {v0}, Lcom/bytedance/ugc/recorder/beans/RecordDisplaySettings;->getVeDisplaySettings()Lcom/ss/android/vesdk/VEDisplaySettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDisplaySettings;->getRenderSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    if-nez v0, :cond_1e

    goto :goto_23

    :cond_1e
    iget v0, v0, Lcom/ss/android/vesdk/VESize;->height:I

    if-ne v0, p2, :cond_23

    return-void

    .line 59
    :cond_23
    :goto_23
    new-instance v0, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    iget-object v1, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->recordDisplaySettings:Lcom/bytedance/ugc/recorder/beans/RecordDisplaySettings;

    invoke-virtual {v1}, Lcom/bytedance/ugc/recorder/beans/RecordDisplaySettings;->getVeDisplaySettings()Lcom/ss/android/vesdk/VEDisplaySettings;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;-><init>(Lcom/ss/android/vesdk/VEDisplaySettings;)V

    .line 60
    sget-object v1, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;->SCALE_MODE_CENTER_INSIDE:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setFitMode(Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v1, p1, p2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setRenderSize(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->build()Lcom/ss/android/vesdk/VEDisplaySettings;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->recordDisplaySettings:Lcom/bytedance/ugc/recorder/beans/RecordDisplaySettings;

    const-string v2, "mDisplaySettings"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/bytedance/ugc/recorder/beans/RecordDisplaySettings;->setVeDisplaySettings(Lcom/ss/android/vesdk/VEDisplaySettings;)V

    .line 64
    iget-object v1, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->recorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v1, v0}, Lcom/ss/android/vesdk/VERecorder;->setDisplaySettings(Lcom/ss/android/vesdk/VEDisplaySettings;)I

    .line 66
    iget-object v0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->recorder:Lcom/ss/android/vesdk/VERecorder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VERecorder;->getVideoEncodeSettings()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object v0

    const-string v1, "recorder.videoEncodeSettings"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->recorder:Lcom/ss/android/vesdk/VERecorder;

    .line 68
    new-instance v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;-><init>(ILcom/ss/android/vesdk/VEVideoEncodeSettings;)V

    .line 69
    invoke-virtual {v1, p1, p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setVideoRes(II)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->build()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VERecorder;->changeVideoEncodeSettings(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)V

    return-void
.end method

.method public switchSlot(Landroid/content/Context;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLEModel;ZZ)Lcom/bytedance/ies/nle/editor_jni/NLEModel;
    .registers 12

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "slot"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "model"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    new-instance p1, Lcom/bytedance/ugc/recorder/template/ModelConvertor$Builder;

    invoke-direct {p1, p3}, Lcom/bytedance/ugc/recorder/template/ModelConvertor$Builder;-><init>(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V

    .line 108
    new-instance p3, Lcom/bytedance/ugc/recorder/template/TrackCollectChain;

    invoke-direct {p3, p2}, Lcom/bytedance/ugc/recorder/template/TrackCollectChain;-><init>(Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;)V

    invoke-virtual {p1, p3}, Lcom/bytedance/ugc/recorder/template/ModelConvertor$Builder;->addPrepareChain(Lcom/bytedance/ugc/recorder/template/IConvertorChain;)Lcom/bytedance/ugc/recorder/template/ModelConvertor$Builder;

    move-result-object p1

    .line 109
    new-instance p3, Lcom/bytedance/ugc/recorder/template/CameraDataValidChain;

    invoke-direct {p3}, Lcom/bytedance/ugc/recorder/template/CameraDataValidChain;-><init>()V

    invoke-virtual {p1, p3}, Lcom/bytedance/ugc/recorder/template/ModelConvertor$Builder;->addPrepareChain(Lcom/bytedance/ugc/recorder/template/IConvertorChain;)Lcom/bytedance/ugc/recorder/template/ModelConvertor$Builder;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lcom/bytedance/ugc/recorder/template/ModelConvertor$Builder;->execute()Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object p1

    if-eqz p4, :cond_4c

    .line 112
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;->getMainSegment()Lcom/bytedance/ies/nle/editor_jni/NLESegment;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;->dynamicCast(Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLESegmentVideo;

    move-result-object p2

    if-nez p2, :cond_37

    goto :goto_4c

    .line 113
    :cond_37
    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getAVFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getWidth()J

    move-result-wide p3

    long-to-int p3, p3

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLESegmentAudio;->getAVFile()Lcom/bytedance/ies/nle/editor_jni/NLEResourceAV;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ies/nle/editor_jni/NLEResourceNode;->getHeight()J

    move-result-wide v0

    long-to-int p2, v0

    invoke-virtual {p0, p3, p2}, Lcom/bytedance/ugc/recorder/camera/CameraSetting;->switch(II)V

    :cond_4c
    :goto_4c
    if-eqz p5, :cond_60

    .line 117
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/bytedance/ugc/recorder/camera/CameraSetting$switchSlot$2;

    const/4 p2, 0x0

    invoke-direct {v3, p0, p1, p2}, Lcom/bytedance/ugc/recorder/camera/CameraSetting$switchSlot$2;-><init>(Lcom/bytedance/ugc/recorder/camera/CameraSetting;Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 121
    :cond_60
    const-string p0, "newModel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
