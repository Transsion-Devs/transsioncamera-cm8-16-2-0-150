.class Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1$1;->this$1:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1$1;->this$1:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->-$$Nest$fgetmPreviewRenderedCallbacker(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 108
    invoke-static {}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "notifyTextureRenderedAfterStartRenderRequest post to main"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1$1;->this$1:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->-$$Nest$fgetmPreviewRenderedCallbacker(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1$1;->this$1:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;

    iget-object v1, v1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;->previewRendered(Landroid/graphics/SurfaceTexture;)V

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1$1;->this$1:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->-$$Nest$fputmPreviewRenderedCallbacker(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;)V

    :cond_2e
    return-void
.end method
