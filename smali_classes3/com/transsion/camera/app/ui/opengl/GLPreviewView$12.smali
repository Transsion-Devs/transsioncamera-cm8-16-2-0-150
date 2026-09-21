.class Lcom/transsion/camera/app/ui/opengl/GLPreviewView$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->onPreviewShot(Z)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

.field final synthetic val$bitmap:[Landroid/graphics/Bitmap;

.field final synthetic val$height:I

.field final synthetic val$previewShotLock:Lcom/transsion/camera/utils/StateWait;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;[Landroid/graphics/Bitmap;IILcom/transsion/camera/utils/StateWait;)V
    .registers 6

    .line 982
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$12;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$12;->val$bitmap:[Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$12;->val$width:I

    iput p4, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$12;->val$height:I

    iput-object p5, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$12;->val$previewShotLock:Lcom/transsion/camera/utils/StateWait;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 985
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$12;->val$bitmap:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$12;->this$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    iget v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$12;->val$width:I

    iget v3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$12;->val$height:I

    invoke-static {v1, v2, v3}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->-$$Nest$moffscreenRenderForShot(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;II)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 986
    invoke-static {}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreviewShot: bitmap[0] = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$12;->val$bitmap:[Landroid/graphics/Bitmap;

    aget-object v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 987
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$12;->val$previewShotLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    return-void
.end method
