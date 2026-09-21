.class public final synthetic Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;

.field public final synthetic f$1:Landroid/opengl/EGLContext;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;Landroid/opengl/EGLContext;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;

    iput-object p2, p0, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1$$ExternalSyntheticLambda1;->f$1:Landroid/opengl/EGLContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;

    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1$$ExternalSyntheticLambda1;->f$1:Landroid/opengl/EGLContext;

    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;->$r8$lambda$4TzJNfGpGuU6G3mlZRUE-DW69Mo(Lcom/transsion/camera/app/common/recorder/AsyncCodecRecorder$1;Landroid/opengl/EGLContext;)V

    return-void
.end method
