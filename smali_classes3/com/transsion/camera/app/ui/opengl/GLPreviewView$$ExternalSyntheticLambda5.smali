.class public final synthetic Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/graphics/Rect;

.field public final synthetic f$5:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Ljava/util/concurrent/atomic/AtomicReference;IILandroid/graphics/Rect;Ljava/util/concurrent/CountDownLatch;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda5;->f$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda5;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    iput p3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda5;->f$2:I

    iput p4, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda5;->f$3:I

    iput-object p5, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda5;->f$4:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda5;->f$5:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda5;->f$0:Lcom/transsion/camera/app/ui/opengl/GLPreviewView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda5;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    iget v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda5;->f$2:I

    iget v3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda5;->f$3:I

    iget-object v4, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda5;->f$4:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda5;->f$5:Ljava/util/concurrent/CountDownLatch;

    invoke-static/range {v0 .. v5}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->$r8$lambda$vPb0jF556BVkydGrTpoNo1EoPTY(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Ljava/util/concurrent/atomic/AtomicReference;IILandroid/graphics/Rect;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
