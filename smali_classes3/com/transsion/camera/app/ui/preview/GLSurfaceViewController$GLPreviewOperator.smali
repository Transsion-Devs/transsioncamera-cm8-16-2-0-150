.class Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;
.super Lcom/transsion/camera/app/common/preview/PreviewOperator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLPreviewOperator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewOperator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;-><init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)V

    return-void
.end method


# virtual methods
.method public executeInGLThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->executeInGLThread(Ljava/lang/Runnable;)V

    :cond_11
    return-void
.end method

.method public forceRender()V
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :cond_11
    return-void
.end method

.method public getBitmap(III)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->getBitmap(IIILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getBitmap(IIILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .registers 10

    .line 69
    div-int/lit8 v0, p1, 0x10

    .line 70
    div-int/lit8 v1, p2, 0x10

    if-lez p3, :cond_a

    .line 72
    div-int v0, p1, p3

    .line 73
    div-int v1, p2, p3

    .line 75
    :cond_a
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->translateToMultiple2(I)I

    move-result p2

    .line 76
    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->translateToMultiple2(I)I

    move-result p3

    const/4 v0, 0x0

    if-eqz p4, :cond_45

    int-to-float v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float p1, p1

    div-float/2addr v1, p1

    .line 80
    new-instance p1, Landroid/graphics/Rect;

    iget v2, p4, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-static {v2}, Lcom/transsion/camera/utils/CameraUtil;->translateToMultiple2(I)I

    move-result v2

    iget v3, p4, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 81
    invoke-static {v3}, Lcom/transsion/camera/utils/CameraUtil;->translateToMultiple2(I)I

    move-result v3

    iget v4, p4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    .line 82
    invoke-static {v4}, Lcom/transsion/camera/utils/CameraUtil;->translateToMultiple2(I)I

    move-result v4

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    int-to-float p4, p4

    mul-float/2addr p4, v1

    float-to-int p4, p4

    .line 83
    invoke-static {p4}, Lcom/transsion/camera/utils/CameraUtil;->translateToMultiple2(I)I

    move-result p4

    invoke-direct {p1, v2, v3, v4, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_46

    :cond_45
    move-object p1, v0

    .line 85
    :goto_46
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBitmap, mGLPreviewView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 86
    iget-object p4, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p4}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p4

    if-eqz p4, :cond_77

    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->getBitmap(IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_77
    return-object v0
.end method

.method public loadGLResource(ZI)V
    .registers 4

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->loadGLResource(ZI)V

    :cond_11
    return-void
.end method

.method public loadGLResources(Z[II)V
    .registers 5

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->loadGLResources(Z[II)V

    :cond_11
    return-void
.end method

.method public modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    :cond_11
    return-void
.end method

.method public modePause()V
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->modePause()V

    :cond_11
    return-void
.end method

.method public modeReload()V
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->modeReload()V

    :cond_11
    return-void
.end method

.method public modeResume()V
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->modeResume()V

    :cond_11
    return-void
.end method

.method public modeUninit()V
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->modeUninit()V

    :cond_11
    return-void
.end method

.method public onOfflineSwitchFinish()V
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 238
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->onOfflineSwitchFinish()V

    :cond_11
    return-void
.end method

.method public onPause(Z)V
    .registers 4

    .line 107
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPause+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->onSurfaceDestroyCallback()V

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->onPause(Z)V

    .line 112
    :cond_23
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onPause-"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 99
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->onResume()V

    :cond_1a
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 91
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->onStart()V

    :cond_1a
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->onStop()V

    :cond_11
    return-void
.end method

.method public onTopChanged(Z)V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->onTopChanged(Z)V

    :cond_11
    return-void
.end method

.method public requestRender()V
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 231
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :cond_11
    return-void
.end method

.method public shotScreen(Z)Landroid/graphics/Bitmap;
    .registers 3

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->onPreviewShot(Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V
    .registers 4

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V

    :cond_11
    return-void
.end method

.method public stopRenderRequest()V
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->stopRenderRequest()V

    :cond_11
    return-void
.end method

.method public updateGLProgramType(Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V
    .registers 3

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 217
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$GLPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmGLPreviewView(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->updateGLProgramType(Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V

    :cond_11
    return-void
.end method
