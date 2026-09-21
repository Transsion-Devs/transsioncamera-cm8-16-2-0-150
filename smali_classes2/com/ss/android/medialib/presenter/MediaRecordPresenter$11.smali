.class Lcom/ss/android/medialib/presenter/MediaRecordPresenter$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)V
    .registers 2

    .line 2706
    iput-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$11;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 6

    .line 2709
    iget-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$11;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget v0, p1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mCameraFrameCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 2710
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mCameraFrameStartTime:J

    .line 2712
    :cond_d
    iget-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$11;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget v0, p1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mCameraFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mCameraFrameCount:I

    .line 2713
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mCameraFrameCurrentTime:J

    .line 2714
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$11;->this$0:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-wide v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mCameraFrameCurrentTime:J

    iget-wide v2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mCameraFrameStartTime:J

    sub-long v2, v0, v2

    long-to-float p1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr p1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_38

    .line 2716
    iget v2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mCameraFrameCount:I

    int-to-float v2, v2

    div-float/2addr v2, p1

    iput v2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mCameraFrameRate:F

    .line 2717
    iput-wide v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mCameraFrameStartTime:J

    const/4 p1, 0x0

    .line 2718
    iput p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mCameraFrameCount:I

    :cond_38
    return-void
.end method
