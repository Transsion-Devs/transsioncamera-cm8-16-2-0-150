.class Lcom/transsion/camera/app/ui/opengl/GLPreviewView$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->updateGLProgramType(Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

.field final synthetic val$programType:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V
    .registers 3

    .line 629
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$11;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$11;->val$programType:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 632
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$11;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->-$$Nest$fgetmProgramType(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$11;->val$programType:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    if-eq v0, v1, :cond_1c

    .line 633
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$11;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->-$$Nest$fputmProgramType(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V

    .line 634
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$11;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->-$$Nest$fgetmSurfaceTexture(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 635
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$11;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->-$$Nest$mcreateGLProgram(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V

    :cond_1c
    return-void
.end method
