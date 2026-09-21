.class Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/tzservice/TZServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TZHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;


# direct methods
.method public static synthetic $r8$lambda$VxCGn7PBs3Y0aGSrgoILQKmUAT0(Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler;Lcom/transsion/camera/app/common/tzservice/TZEvent;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler;->lambda$handleMessage$0(Lcom/transsion/camera/app/common/tzservice/TZEvent;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/tzservice/TZServiceController;Landroid/os/Looper;)V
    .registers 3

    .line 315
    iput-object p1, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler;->this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    .line 316
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private synthetic lambda$handleMessage$0(Lcom/transsion/camera/app/common/tzservice/TZEvent;)V
    .registers 5

    .line 333
    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler;->this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    iget-wide v0, p1, Lcom/transsion/camera/app/common/tzservice/TZEvent;->mTimestamp:J

    const/4 p1, 0x2

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->setTZCapConfig(JII)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 321
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v0, v1, :cond_70

    if-eq v0, v3, :cond_66

    if-eq v0, v2, :cond_5c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4a

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2c

    .line 369
    invoke-static {}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: unexpected message what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 345
    :cond_2c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/tzservice/TZEvent;

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler;->this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    invoke-static {v0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->-$$Nest$fgetmOnHighQualityJpegAvailableListener(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)Lcom/transsion/camera/app/common/taps/OnHighQualityJpegAvailableListener;

    move-result-object v0

    if-eqz v0, :cond_c7

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler;->this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    invoke-static {v0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->-$$Nest$fgetmOnHighQualityJpegAvailableListener(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)Lcom/transsion/camera/app/common/taps/OnHighQualityJpegAvailableListener;

    move-result-object v0

    iget-wide v1, p1, Lcom/transsion/camera/app/common/tzservice/TZEvent;->mTimestamp:J

    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler;->this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    invoke-static {p0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->-$$Nest$fgetmHighQualityMediaSaverListener(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    move-result-object p0

    .line 348
    invoke-interface {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/taps/OnHighQualityJpegAvailableListener;->onHighQualityJpegFailed(JLcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V

    return-void

    .line 364
    :cond_4a
    iget-object p1, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler;->this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    invoke-static {p1}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->-$$Nest$fgetmOnHighQualityJpegAvailableListener(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)Lcom/transsion/camera/app/common/taps/OnHighQualityJpegAvailableListener;

    move-result-object p1

    if-eqz p1, :cond_c7

    .line 365
    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler;->this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    invoke-static {p0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->-$$Nest$fgetmOnHighQualityJpegAvailableListener(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)Lcom/transsion/camera/app/common/taps/OnHighQualityJpegAvailableListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/taps/OnHighQualityJpegAvailableListener;->onAllHighQualityJpegCompleted()V

    return-void

    .line 358
    :cond_5c
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p0, :cond_c7

    .line 360
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->forceReleaseSurface()V

    return-void

    .line 352
    :cond_66
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CaptureSurface;

    if-eqz p0, :cond_c7

    .line 354
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->onBGServiceDied()V

    return-void

    .line 323
    :cond_70
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/tzservice/TZEvent;

    .line 324
    iget v0, p1, Lcom/transsion/camera/app/common/tzservice/TZEvent;->mState:I

    if-ne v0, v3, :cond_a5

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler;->this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    iget v1, p1, Lcom/transsion/camera/app/common/tzservice/TZEvent;->mImgReaderId:I

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->-$$Nest$mgetSurface(Lcom/transsion/camera/app/common/tzservice/TZServiceController;I)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 327
    const-class v1, Lcom/transsion/camera/app/common/tzservice/TZEvent;

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/app/common/mode/CaptureSurface;->notifyEventCallback(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 329
    :cond_87
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler;->this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    invoke-static {v0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->-$$Nest$fgetmOnCaptureProgressListener(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)Lcom/transsion/camera/app/common/taps/OnCaptureProgressListener;

    move-result-object v0

    if-eqz v0, :cond_9a

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler;->this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    invoke-static {v0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->-$$Nest$fgetmOnCaptureProgressListener(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)Lcom/transsion/camera/app/common/taps/OnCaptureProgressListener;

    move-result-object v0

    iget-wide v1, p1, Lcom/transsion/camera/app/common/tzservice/TZEvent;->mTimestamp:J

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/taps/OnCaptureProgressListener;->onCaptureFailed(J)V

    .line 332
    :cond_9a
    new-instance v0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler;Lcom/transsion/camera/app/common/tzservice/TZEvent;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 337
    :cond_a5
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler;->this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    iget-wide v4, p1, Lcom/transsion/camera/app/common/tzservice/TZEvent;->mTimestamp:J

    invoke-virtual {v0, v4, v5, v3, v2}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->setTZCapConfig(JII)V

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler;->this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    invoke-static {v0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->-$$Nest$fgetmOnHighQualityJpegAvailableListener(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)Lcom/transsion/camera/app/common/taps/OnHighQualityJpegAvailableListener;

    move-result-object v0

    if-eqz v0, :cond_c7

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler;->this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    invoke-static {v0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->-$$Nest$fgetmOnHighQualityJpegAvailableListener(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)Lcom/transsion/camera/app/common/taps/OnHighQualityJpegAvailableListener;

    move-result-object v0

    iget-object v1, p1, Lcom/transsion/camera/app/common/tzservice/TZEvent;->mJpegData:[B

    iget-wide v2, p1, Lcom/transsion/camera/app/common/tzservice/TZEvent;->mTimestamp:J

    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler;->this$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    invoke-static {p0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->-$$Nest$fgetmHighQualityMediaSaverListener(Lcom/transsion/camera/app/common/tzservice/TZServiceController;)Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    move-result-object p0

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/transsion/camera/app/common/taps/OnHighQualityJpegAvailableListener;->onHighQualityJpegAvailable([BJLcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V

    :cond_c7
    return-void
.end method
