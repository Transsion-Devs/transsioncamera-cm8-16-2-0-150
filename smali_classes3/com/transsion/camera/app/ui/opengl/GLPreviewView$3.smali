.class Lcom/transsion/camera/app/ui/opengl/GLPreviewView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->loadGLResource(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

.field final synthetic val$isSync:Z

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;IZ)V
    .registers 4

    .line 229
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$3;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    iput p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$3;->val$resId:I

    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$3;->val$isSync:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$3;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->-$$Nest$fgetmCurrentPreviewCallback(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$3;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->-$$Nest$fgetmSurfaceTexture(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$3;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->-$$Nest$fgetmLockObj(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 234
    :try_start_17
    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$3;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->-$$Nest$fgetmCurrentPreviewCallback(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 235
    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$3;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->-$$Nest$fgetmCurrentPreviewCallback(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$3;->val$resId:I

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;->loadGLResourceCallback(I)V

    goto :goto_2d

    :catchall_2b
    move-exception p0

    goto :goto_2f

    .line 237
    :cond_2d
    :goto_2d
    monitor-exit v0

    goto :goto_31

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_17 .. :try_end_30} :catchall_2b

    throw p0

    .line 239
    :cond_31
    :goto_31
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$3;->val$isSync:Z

    if-eqz v0, :cond_3c

    .line 240
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$3;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    :cond_3c
    return-void
.end method
