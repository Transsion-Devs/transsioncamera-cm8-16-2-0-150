.class Lcom/ss/android/vesdk/VERecorder$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/render/VESurfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VERecorder;->setPreviewRatio(Lcom/ss/android/vesdk/VEPreviewRadio;Lcom/ss/android/vesdk/VESize;Lcom/ss/android/vesdk/VESize;Lcom/ss/android/vesdk/VESize;ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VERecorder;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VERecorder;J)V
    .registers 4

    .line 3451
    iput-object p1, p0, Lcom/ss/android/vesdk/VERecorder$14;->this$0:Lcom/ss/android/vesdk/VERecorder;

    iput-wide p2, p0, Lcom/ss/android/vesdk/VERecorder$14;->val$startTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterSurfaceDestroyed()V
    .registers 1

    return-void
.end method

.method public preSurfaceCreated()V
    .registers 1

    return-void
.end method

.method public surfaceChanged(Landroid/view/Surface;III)V
    .registers 5

    .line 3464
    iget-object p2, p0, Lcom/ss/android/vesdk/VERecorder$14;->this$0:Lcom/ss/android/vesdk/VERecorder;

    iget-object p2, p2, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    new-instance p3, Lcom/ss/android/vesdk/VERecorder$14$1;

    invoke-direct {p3, p0}, Lcom/ss/android/vesdk/VERecorder$14$1;-><init>(Lcom/ss/android/vesdk/VERecorder$14;)V

    invoke-virtual {p2, p1, p3}, Lcom/ss/android/vesdk/TERecorderBase;->startPreviewAsync(Landroid/view/Surface;Lcom/ss/android/vesdk/VEListener$VECallListener;)V

    .line 3470
    iget-object p1, p0, Lcom/ss/android/vesdk/VERecorder$14;->this$0:Lcom/ss/android/vesdk/VERecorder;

    iget-object p1, p1, Lcom/ss/android/vesdk/VERecorder;->mRecorder:Lcom/ss/android/vesdk/TERecorderBase;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/TERecorderBase;->getRenderView()Lcom/ss/android/vesdk/render/VERenderView;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ss/android/vesdk/render/VERenderView;->removeSurfaceCallback(Lcom/ss/android/vesdk/render/VESurfaceCallback;)Z

    return-void
.end method

.method public surfaceCreated(Landroid/view/Surface;)V
    .registers 2

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/Surface;)V
    .registers 2

    return-void
.end method
