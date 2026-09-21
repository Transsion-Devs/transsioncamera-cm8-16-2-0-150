.class public final synthetic Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;

.field public final synthetic f$1:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$$ExternalSyntheticLambda1;->f$1:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$$ExternalSyntheticLambda1;->f$1:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->$r8$lambda$jIkE7rmIate-2stWWe7JqkoAYAE(Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveVideoEncoder;)V

    return-void
.end method
