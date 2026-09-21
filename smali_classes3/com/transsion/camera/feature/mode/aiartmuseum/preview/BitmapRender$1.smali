.class Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender$1;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;->updateBitmap(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;

.field final synthetic val$effectValue:Ljava/lang/String;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method public static synthetic $r8$lambda$rhFAnOQ5zKS3Oy8i6vlH3FfWkqg(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender$1;Landroid/graphics/Bitmap;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender$1;->lambda$doProcess$0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;Ljava/lang/String;IILjava/lang/String;)V
    .registers 6

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;

    iput p3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender$1;->val$width:I

    iput p4, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender$1;->val$height:I

    iput-object p5, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender$1;->val$effectValue:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$doProcess$0(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;->updateBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 4

    .line 52
    iget v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender$1;->val$width:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender$1;->val$height:I

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender$1;->val$effectValue:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BitmapRenderSpec;->getBackground(IILjava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_26

    .line 54
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBitmap error, backgroundId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 58
    :cond_26
    invoke-static {v0}, Lcom/transsion/camera/utils/BitmapUtils;->decodeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_37

    .line 60
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string/jumbo v0, "updateBitmap decodeBitmap failed!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 64
    :cond_37
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender;

    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BitmapRender$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/BaseRender;->executeInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method
