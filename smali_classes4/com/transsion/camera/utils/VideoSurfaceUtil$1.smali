.class Lcom/transsion/camera/utils/VideoSurfaceUtil$1;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/utils/VideoSurfaceUtil;->createVideoSurface(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZLandroid/util/Size;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/utils/VideoSurfaceUtil;

.field final synthetic val$cameraId:Ljava/lang/String;

.field final synthetic val$isSatCamera:Z

.field final synthetic val$overrideSize:Landroid/util/Size;

.field final synthetic val$quality:I

.field final synthetic val$tempFile:Ljava/io/File;

.field final synthetic val$videoEnhanceConfigChange:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/utils/VideoSurfaceUtil;Ljava/lang/String;ILjava/io/File;Ljava/lang/String;ZZLandroid/util/Size;)V
    .registers 9

    .line 64
    iput-object p1, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;->this$0:Lcom/transsion/camera/utils/VideoSurfaceUtil;

    iput p3, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;->val$quality:I

    iput-object p4, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;->val$tempFile:Ljava/io/File;

    iput-object p5, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;->val$cameraId:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;->val$videoEnhanceConfigChange:Z

    iput-boolean p7, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;->val$isSatCamera:Z

    iput-object p8, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;->val$overrideSize:Landroid/util/Size;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 10

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;->this$0:Lcom/transsion/camera/utils/VideoSurfaceUtil;

    iget v1, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;->val$quality:I

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->-$$Nest$fputmVideoQuality(Lcom/transsion/camera/utils/VideoSurfaceUtil;I)V

    .line 68
    iget-object v2, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;->this$0:Lcom/transsion/camera/utils/VideoSurfaceUtil;

    iget v3, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;->val$quality:I

    iget-object v4, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;->val$tempFile:Ljava/io/File;

    iget-object v5, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;->val$cameraId:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;->val$videoEnhanceConfigChange:Z

    iget-boolean v7, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;->val$isSatCamera:Z

    iget-object v8, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;->val$overrideSize:Landroid/util/Size;

    invoke-static/range {v2 .. v8}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->-$$Nest$mprepareSurface(Lcom/transsion/camera/utils/VideoSurfaceUtil;ILjava/io/File;Ljava/lang/String;ZZLandroid/util/Size;)V

    return-void
.end method
