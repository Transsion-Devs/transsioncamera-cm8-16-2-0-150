.class Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;
.super Lcom/transsion/camera/app/common/preview/PreviewOperator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/preview/SurfaceViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceViewPreviewOperator"
.end annotation


# instance fields
.field private mCreateBitmapSuccess:Z

.field private mPreviewBitmap:Landroid/graphics/Bitmap;

.field public final mStateLock:Lcom/transsion/camera/utils/StateWait;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;


# direct methods
.method static bridge synthetic -$$Nest$fputmCreateBitmapSuccess(Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;->mCreateBitmapSuccess:Z

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)V
    .registers 2

    .line 215
    iput-object p1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewOperator;-><init>()V

    .line 217
    new-instance p1, Lcom/transsion/camera/utils/StateWait;

    invoke-direct {p1}, Lcom/transsion/camera/utils/StateWait;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;Lcom/transsion/camera/app/ui/preview/SurfaceViewController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;-><init>(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)V

    return-void
.end method


# virtual methods
.method public getBitmap(III)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    .line 262
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;->getBitmap(IIILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getBitmap(IIILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .registers 7

    .line 222
    div-int/lit8 p4, p1, 0x10

    .line 223
    div-int/lit8 v0, p2, 0x10

    if-lez p3, :cond_a

    .line 226
    div-int p4, p1, p3

    .line 227
    div-int v0, p2, p3

    .line 230
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$fgetmSurfaceCreated(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 231
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;->mPreviewBitmap:Landroid/graphics/Bitmap;

    return-object p0

    .line 234
    :cond_15
    sget-object p1, Lcom/transsion/camera/utils/BitmapPoolUtil;->INSTANCE:Lcom/transsion/camera/utils/BitmapPoolUtil;

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, p4, v0, p2}, Lcom/transsion/camera/utils/BitmapPoolUtil;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 235
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p2}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    const/4 p2, 0x0

    .line 236
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;->mCreateBitmapSuccess:Z

    .line 237
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSurfaceCreated = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$fgetmSurfaceCreated(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)Z

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " blur width = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " ,height = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 239
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$fgetmSurfaceView(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)Landroid/view/SurfaceView;

    move-result-object p2

    new-instance p3, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator$1;

    invoke-direct {p3, p0}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator$1;-><init>(Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;)V

    iget-object p4, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {p4}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$fgetmHandler(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)Landroid/os/Handler;

    move-result-object p4

    invoke-static {p2, p1, p3, p4}, Landroid/view/PixelCopy;->request(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 249
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;->mCreateBitmapSuccess:Z

    if-nez p2, :cond_77

    .line 251
    :try_start_6b
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    const-wide/16 p3, 0x1f4

    invoke-virtual {p2, p3, p4}, Lcom/transsion/camera/utils/StateWait;->waitState(J)V
    :try_end_72
    .catch Ljava/lang/InterruptedException; {:try_start_6b .. :try_end_72} :catch_73

    goto :goto_77

    :catch_73
    move-exception p2

    .line 253
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 256
    :cond_77
    :goto_77
    iput-object p1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;->mPreviewBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 290
    invoke-static {}, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->getInstance()Lcom/transsion/camera/utils/threads/HandlerThreadPool;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$fgetmHandler(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->offer(Ljava/lang/Thread;)V

    return-void
.end method

.method public onPause(Z)V
    .registers 2

    .line 282
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/preview/PreviewOperator;->onPause(Z)V

    .line 283
    iget-object p1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$fgetmSurfaceView(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)Landroid/view/SurfaceView;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 284
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$fgetmSurfaceView(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)Landroid/view/SurfaceView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_16
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 274
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/PreviewOperator;->onResume()V

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$fgetmSurfaceView(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)Landroid/view/SurfaceView;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 276
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$fgetmSurfaceView(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)Landroid/view/SurfaceView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_15
    return-void
.end method

.method public startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V
    .registers 3

    if-eqz p1, :cond_6

    const/4 p0, 0x0

    .line 268
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;->previewRendered(Landroid/graphics/SurfaceTexture;)V

    :cond_6
    return-void
.end method
