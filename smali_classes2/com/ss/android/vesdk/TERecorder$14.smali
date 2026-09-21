.class Lcom/ss/android/vesdk/TERecorder$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder;->shotScreen(IIZLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;ZLcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;

.field final synthetic val$finalNeedOriginPic:Z

.field final synthetic val$getFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

.field final synthetic val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

.field final synthetic val$veframeCallback:Lcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;ZLcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;Lcom/ss/android/vesdk/VEGetFrameSettings;)V
    .registers 6

    .line 2816
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$14;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder$14;->val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    iput-boolean p3, p0, Lcom/ss/android/vesdk/TERecorder$14;->val$finalNeedOriginPic:Z

    iput-object p4, p0, Lcom/ss/android/vesdk/TERecorder$14;->val$veframeCallback:Lcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;

    iput-object p5, p0, Lcom/ss/android/vesdk/TERecorder$14;->val$getFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([III)V
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_14

    .line 2820
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$14;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->mIsDuringScreenshot:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {p1}, Lcom/ss/android/vesdk/TERecorder;->access$2000(Lcom/ss/android/vesdk/TERecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2821
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$14;->val$screenCallback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    const/4 p1, 0x0

    const/4 p2, -0x1

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;->onShotScreen(Landroid/graphics/Bitmap;I)V

    return-void

    :cond_14
    const-wide/16 v5, 0x0

    .line 2824
    sget-object v7, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_RGBA8:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v1 .. v7}, Lcom/ss/android/ttve/model/VEFrame;->createIntArrayFrame([IIIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object p1

    .line 2825
    iget-boolean p2, p0, Lcom/ss/android/vesdk/TERecorder$14;->val$finalNeedOriginPic:Z

    if-eqz p2, :cond_29

    .line 2826
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder$14;->val$veframeCallback:Lcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;

    invoke-interface {p2, p1, v0}, Lcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;->onShotScreen(Lcom/ss/android/ttve/model/VEFrame;I)V

    .line 2828
    :cond_29
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder$14;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$14;->val$getFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {p2, p1, p0}, Lcom/ss/android/vesdk/TERecorder;->renderFrame(Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/vesdk/VEGetFrameSettings;)V

    return-void
.end method
