.class Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceTextureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)V
    .registers 2

    .line 301
    iput-object p1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;-><init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 7

    .line 304
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureAvailable mPreviewSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mPreviewWidth: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmPreviewWidth(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mPreviewHeight: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmPreviewHeight(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 307
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmPreviewWidth(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_d6

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmPreviewHeight(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_d6

    .line 308
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSlaveScreen(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Z

    move-result p2

    if-eqz p2, :cond_a8

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceDisplayWidth(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_a8

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceDisplayHeight(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_a8

    .line 309
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceTextureAvailable setDefaultBufferSize, width:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceDisplayWidth(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", height:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceDisplayHeight(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 310
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceDisplayWidth(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceDisplayHeight(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    goto :goto_b7

    .line 312
    :cond_a8
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmPreviewWidth(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmPreviewHeight(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 315
    :goto_b7
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p2

    if-eqz p2, :cond_d6

    .line 316
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p2

    sget-object p3, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->DEFAULT:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmPreviewWidth(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmPreviewHeight(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p0

    invoke-interface {p2, p3, p1, v0, p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceAvailable(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    :cond_d6
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 4

    .line 343
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSurfaceTextureDestroyed mPreviewSurface: + surface"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 345
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->DEFAULT:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceDestroyed(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;)V

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureDrawn()V
    .registers 2

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 360
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceDrawn()V

    :cond_11
    return-void
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 7

    .line 323
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureSizeChanged mPreviewSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mPreviewWidth: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmPreviewWidth(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mPreviewHeight: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmPreviewHeight(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 328
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmPreviewWidth(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_d6

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmPreviewHeight(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_d6

    .line 329
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSlaveScreen(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Z

    move-result p2

    if-eqz p2, :cond_a8

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceDisplayWidth(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_a8

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceDisplayHeight(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_a8

    .line 330
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceTextureSizeChanged setDefaultBufferSize, width:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceDisplayWidth(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", height:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceDisplayHeight(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 331
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceDisplayWidth(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceDisplayHeight(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    goto :goto_b7

    .line 333
    :cond_a8
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmPreviewWidth(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmPreviewHeight(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 335
    :goto_b7
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p2

    if-eqz p2, :cond_d6

    .line 336
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p2

    sget-object p3, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->DEFAULT:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmPreviewWidth(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmPreviewHeight(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p0

    invoke-interface {p2, p3, p1, v0, p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceChanged(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    :cond_d6
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 353
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$SurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->DEFAULT:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceUpdated(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;)V

    :cond_13
    return-void
.end method
