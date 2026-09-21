.class Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private processSelectResult(ILcom/transsion/camera/featurelibs/panorama/ProcessResult;)V
    .registers 4

    if-eqz p1, :cond_2f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_29

    const/high16 v0, 0x10000

    if-eq p1, v0, :cond_13

    .line 107
    invoke-static {}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "process failed!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 96
    :cond_13
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->processSelectResult(Lcom/transsion/camera/featurelibs/panorama/ProcessResult;)V

    .line 97
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-static {p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->-$$Nest$fgetmSpeedListener(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->-$$Nest$fgetmSpeedListener(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;->onSpeedUpdate(I)V

    return-void

    .line 103
    :cond_29
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->stopCapture()Z

    return-void

    .line 89
    :cond_2f
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->processSelectResult(Lcom/transsion/camera/featurelibs/panorama/ProcessResult;)V

    .line 90
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-static {p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->-$$Nest$fgetmSpeedListener(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->-$$Nest$fgetmSpeedListener(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;->onSpeedUpdate(I)V

    :cond_44
    return-void
.end method

.method private processSelectResult(Lcom/transsion/camera/featurelibs/panorama/ProcessResult;)V
    .registers 7

    .line 113
    iget v0, p1, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mProgress:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_26

    .line 114
    invoke-static {}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processSelectResult stopCapture, progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mProgress:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->stopCapture()Z

    return-void

    .line 118
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->-$$Nest$fgetmModeStatusListener(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->-$$Nest$fgetmModeStatusListener(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_CAPTURING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 121
    :cond_39
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->-$$Nest$fgetmThumbnailListener(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IThumbnailListener;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->-$$Nest$fgetmThumbnailListener(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IThumbnailListener;

    move-result-object v0

    iget-object v1, p1, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mData:[B

    iget v2, p1, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mImageWidth:I

    iget v3, p1, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mImageHeight:I

    iget v4, p1, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mImageFormat:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IThumbnailListener;->onThumbnailUpdate([BIII)V

    .line 125
    :cond_52
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object p1, p1, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mOffset:Landroid/graphics/Point;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->-$$Nest$monMoveProgressUpdate(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;Landroid/graphics/Point;)V

    return-void
.end method

.method private processStopResult(ILcom/transsion/camera/featurelibs/panorama/ProcessResult;)V
    .registers 4

    if-eqz p1, :cond_20

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    # invokes: Lcom/transsion/camera/feature/common/BaseCapture;->triggerCaptureFailed()V
    invoke-static {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->access$000(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)V

    .line 131
    invoke-static {}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "capture failed, code: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 134
    :cond_20
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->processStopResult(Lcom/transsion/camera/featurelibs/panorama/ProcessResult;)V

    return-void
.end method

.method private processStopResult(Lcom/transsion/camera/featurelibs/panorama/ProcessResult;)V
    .registers 5

    .line 138
    iget v0, p1, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mProgress:I

    if-lez v0, :cond_14

    iget-object v0, p1, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mData:[B

    if-eqz v0, :cond_14

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget v1, p1, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mImageWidth:I

    iget v2, p1, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mImageHeight:I

    iget p1, p1, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mImageFormat:I

    # invokes: Lcom/transsion/camera/feature/common/BaseCapture;->savePicture([BIII)V
    invoke-static {p0, v0, v1, v2, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->access$100(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;[BIII)V

    return-void

    .line 142
    :cond_14
    invoke-static {}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capture failed, progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mProgress:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    # invokes: Lcom/transsion/camera/feature/common/BaseCapture;->triggerCaptureFailed()V
    invoke-static {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->access$200(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)V

    return-void
.end method


# virtual methods
.method public onProcessResult(ILcom/transsion/camera/featurelibs/panorama/ProcessResult;)V
    .registers 6

    .line 67
    invoke-static {}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProcessResult code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 70
    iget v0, p2, Lcom/transsion/camera/featurelibs/panorama/ProcessResult;->mCommand:I

    if-eqz v0, :cond_37

    const/4 v1, 0x1

    if-eq v0, v1, :cond_33

    .line 80
    invoke-static {}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "invalid command!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 76
    :cond_33
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->processStopResult(ILcom/transsion/camera/featurelibs/panorama/ProcessResult;)V

    return-void

    .line 72
    :cond_37
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;->processSelectResult(ILcom/transsion/camera/featurelibs/panorama/ProcessResult;)V

    return-void
.end method
