.class Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/RecordInvoker$OnFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setOnFrameAvailableListener(Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnFrameAvailableListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private downgradeDelta:F

.field volatile frame:Lcom/ss/android/medialib/model/PreviewFrame;

.field private lastFramePTS:D

.field private startTime:D

.field final synthetic this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)V
    .registers 4

    .line 3315
    iput-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3317
    new-instance p1, Lcom/ss/android/medialib/model/PreviewFrame;

    invoke-direct {p1}, Lcom/ss/android/medialib/model/PreviewFrame;-><init>()V

    iput-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->frame:Lcom/ss/android/medialib/model/PreviewFrame;

    const-wide/16 v0, 0x0

    .line 3318
    iput-wide v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->startTime:D

    .line 3319
    iput-wide v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->lastFramePTS:D

    const/4 p1, 0x0

    .line 3320
    iput p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->downgradeDelta:F

    return-void
.end method


# virtual methods
.method public onFrame(ID)V
    .registers 5

    .line 3334
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->frame:Lcom/ss/android/medialib/model/PreviewFrame;

    iput p1, v0, Lcom/ss/android/medialib/model/PreviewFrame;->texID:I

    .line 3335
    iget-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->frame:Lcom/ss/android/medialib/model/PreviewFrame;

    double-to-long p2, p2

    iput-wide p2, p1, Lcom/ss/android/medialib/model/PreviewFrame;->timeStamp:J

    .line 3336
    iget-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->frame:Lcom/ss/android/medialib/model/PreviewFrame;

    iget-object p2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    # getter for: Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mUseFront:Z
    invoke-static {p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->access$400(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)Z

    move-result p2

    iput-boolean p2, p1, Lcom/ss/android/medialib/model/PreviewFrame;->fromFrontCamera:Z

    .line 3338
    iget-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    # getter for: Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mOnPreviewFrameListener:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnFrameAvailableListener;
    invoke-static {p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->access$500(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnFrameAvailableListener;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 3339
    iget-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    # getter for: Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mOnPreviewFrameListener:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnFrameAvailableListener;
    invoke-static {p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->access$500(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnFrameAvailableListener;

    move-result-object p1

    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->frame:Lcom/ss/android/medialib/model/PreviewFrame;

    invoke-interface {p1, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnFrameAvailableListener;->OnFrameAvailable(Lcom/ss/android/medialib/model/PreviewFrame;)V

    :cond_26
    return-void
.end method

.method public onFrame(Ljava/nio/ByteBuffer;IIID)V
    .registers 8

    .line 3345
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->frame:Lcom/ss/android/medialib/model/PreviewFrame;

    iput-object p1, v0, Lcom/ss/android/medialib/model/PreviewFrame;->buffer:Ljava/nio/ByteBuffer;

    .line 3346
    iget-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->frame:Lcom/ss/android/medialib/model/PreviewFrame;

    iput p2, p1, Lcom/ss/android/medialib/model/PreviewFrame;->format:I

    .line 3347
    iget-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->frame:Lcom/ss/android/medialib/model/PreviewFrame;

    iput p3, p1, Lcom/ss/android/medialib/model/PreviewFrame;->width:I

    .line 3348
    iget-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->frame:Lcom/ss/android/medialib/model/PreviewFrame;

    iput p4, p1, Lcom/ss/android/medialib/model/PreviewFrame;->height:I

    .line 3349
    iget-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->frame:Lcom/ss/android/medialib/model/PreviewFrame;

    double-to-long p2, p5

    iput-wide p2, p1, Lcom/ss/android/medialib/model/PreviewFrame;->timeStamp:J

    .line 3350
    iget-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->frame:Lcom/ss/android/medialib/model/PreviewFrame;

    iget-object p2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    # getter for: Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mUseFront:Z
    invoke-static {p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->access$400(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)Z

    move-result p2

    iput-boolean p2, p1, Lcom/ss/android/medialib/model/PreviewFrame;->fromFrontCamera:Z

    .line 3352
    iget-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    # getter for: Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mOnPreviewFrameListener:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnFrameAvailableListener;
    invoke-static {p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->access$500(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnFrameAvailableListener;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 3353
    iget-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    # getter for: Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mOnPreviewFrameListener:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnFrameAvailableListener;
    invoke-static {p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->access$500(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnFrameAvailableListener;

    move-result-object p1

    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->frame:Lcom/ss/android/medialib/model/PreviewFrame;

    invoke-interface {p1, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnFrameAvailableListener;->OnFrameAvailable(Lcom/ss/android/medialib/model/PreviewFrame;)V

    :cond_32
    return-void
.end method

.method public onInit(Landroid/opengl/EGLContext;IIIJ)V
    .registers 8

    .line 3324
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->frame:Lcom/ss/android/medialib/model/PreviewFrame;

    iput-object p1, v0, Lcom/ss/android/medialib/model/PreviewFrame;->context:Landroid/opengl/EGLContext;

    .line 3325
    iget-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->frame:Lcom/ss/android/medialib/model/PreviewFrame;

    iput p2, p1, Lcom/ss/android/medialib/model/PreviewFrame;->format:I

    .line 3326
    iget-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->frame:Lcom/ss/android/medialib/model/PreviewFrame;

    iput p3, p1, Lcom/ss/android/medialib/model/PreviewFrame;->width:I

    .line 3327
    iget-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->frame:Lcom/ss/android/medialib/model/PreviewFrame;

    iput p4, p1, Lcom/ss/android/medialib/model/PreviewFrame;->height:I

    .line 3328
    iget-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->frame:Lcom/ss/android/medialib/model/PreviewFrame;

    iput-wide p5, p1, Lcom/ss/android/medialib/model/PreviewFrame;->nativeContextPtr:J

    .line 3329
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p1

    const-string p2, "ve_recorder_fps_downgrade"

    const/high16 p3, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, p3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;->downgradeDelta:F

    return-void
.end method
