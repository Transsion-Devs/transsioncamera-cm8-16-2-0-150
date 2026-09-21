.class Lcom/transsion/camera/app/ui/opengl/GLPreviewView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->onPause(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V
    .registers 2

    .line 324
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$5;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$5;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->-$$Nest$fgetmIAlgoRenderer(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$5;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->-$$Nest$fgetmIAlgoRenderer(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;->onSurfaceDestroyed()V

    .line 330
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$5;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->-$$Nest$fgetmGLProgram(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 331
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$5;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->-$$Nest$fgetmGLProgram(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->release()V

    .line 332
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$5;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->-$$Nest$fputmGLProgram(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;)V

    .line 334
    :cond_28
    invoke-static {}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "onPause: finish release"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
