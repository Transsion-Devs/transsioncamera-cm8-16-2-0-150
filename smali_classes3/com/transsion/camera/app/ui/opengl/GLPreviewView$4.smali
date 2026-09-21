.class Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->loadGLResources(Z[II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

.field final synthetic val$cameraId:I

.field final synthetic val$isSync:Z

.field final synthetic val$resIds:[I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;[IIZ)V
    .registers 5

    .line 260
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;->val$resIds:[I

    iput p3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;->val$cameraId:I

    iput-boolean p4, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;->val$isSync:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->-$$Nest$fgetmCurrentPreviewCallback(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->-$$Nest$fgetmSurfaceTexture(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->-$$Nest$fgetmLockObj(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 265
    :try_start_17
    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->-$$Nest$fgetmCurrentPreviewCallback(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 266
    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->-$$Nest$fgetmCurrentPreviewCallback(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;->val$resIds:[I

    iget v3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;->val$cameraId:I

    invoke-interface {v1, v2, v3}, Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;->loadGLResourcesCallback([II)V

    goto :goto_2f

    :catchall_2d
    move-exception p0

    goto :goto_31

    .line 268
    :cond_2f
    :goto_2f
    monitor-exit v0

    goto :goto_33

    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_17 .. :try_end_32} :catchall_2d

    throw p0

    .line 270
    :cond_33
    :goto_33
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;->val$isSync:Z

    if-eqz v0, :cond_3e

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    :cond_3e
    return-void
.end method
