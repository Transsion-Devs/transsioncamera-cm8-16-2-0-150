.class public final synthetic Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;

.field public final synthetic f$1:Landroid/opengl/EGLContext;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;Landroid/opengl/EGLContext;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$$ExternalSyntheticLambda2;->f$1:Landroid/opengl/EGLContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$$ExternalSyntheticLambda2;->f$1:Landroid/opengl/EGLContext;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->$r8$lambda$dE51eATOes8MwAjL1WDpOez-K70(Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;Landroid/opengl/EGLContext;)V

    return-void
.end method
