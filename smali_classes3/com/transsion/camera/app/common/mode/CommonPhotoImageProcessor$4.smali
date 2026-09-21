.class Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->algorithmPostViewData([BIIIIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

.field final synthetic val$imageFormat:I

.field final synthetic val$orientation:I

.field final synthetic val$postView:[B

.field final synthetic val$timestamp:J

.field final synthetic val$yuvHeight:I

.field final synthetic val$yuvWidth:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;[BIIIIJ)V
    .registers 9

    .line 702
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$postView:[B

    iput p3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$imageFormat:I

    iput p4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$yuvWidth:I

    iput p5, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$yuvHeight:I

    iput p6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$orientation:I

    iput-wide p7, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 705
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "algorithmPostViewData"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$postView:[B

    if-nez v0, :cond_16

    .line 707
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "algorithmPostViewData postView is null."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 709
    :cond_16
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$postView:[B

    iget v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$imageFormat:I

    iget v5, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$yuvWidth:I

    iget v6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$yuvHeight:I

    iget v7, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$orientation:I

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->algorithmProcessPostView([BIIII)[B

    move-result-object v9

    .line 712
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->-$$Nest$fgetmThumbnailPairProducerLock(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 713
    :try_start_2d
    iget-object v8, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    iget v10, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$imageFormat:I

    iget v11, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$yuvWidth:I

    iget v12, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$yuvHeight:I

    iget v13, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$orientation:I

    .line 714
    invoke-static/range {v8 .. v13}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->-$$Nest$mgenerateThumbnail(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;[BIIII)Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;

    move-result-object v0

    .line 715
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-static {v2, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->-$$Nest$monThumbnailGenerated(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)V

    .line 716
    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;->-$$Nest$fgetmThumbnail(Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$ThumbnailInfo;)[B

    move-result-object v0

    .line 717
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_2d .. :try_end_45} :catchall_4f

    .line 719
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    iget-wide v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor$4;->val$timestamp:J

    invoke-interface {v1, v0, v2, v3}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->onPostViewData([BJ)V

    return-void

    :catchall_4f
    move-exception v0

    move-object p0, v0

    .line 717
    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_4f

    throw p0
.end method
