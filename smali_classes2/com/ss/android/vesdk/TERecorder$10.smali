.class Lcom/ss/android/vesdk/TERecorder$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder;->getPreviewFrameWithOrigin(Lcom/ss/android/vesdk/VEGetFrameSettings;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;

.field final synthetic val$renderFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

.field final synthetic val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VEGetFrameSettings;Lcom/ss/android/vesdk/VEGetFrameSettings;)V
    .registers 4

    .line 2582
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$10;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder$10;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    iput-object p3, p0, Lcom/ss/android/vesdk/TERecorder$10;->val$renderFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([IIIJ)V
    .registers 15

    .line 2585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOriginFrameCallback: width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TERecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2587
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$10;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetOriginFrameCallback()Lcom/ss/android/vesdk/VEGetFrameSettings$IGetOriginFrameCallback;

    move-result-object v0

    if-eqz v0, :cond_58

    if-nez p1, :cond_39

    .line 2589
    const-string p1, "getOriginFrameCallback: data is null"

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2590
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$10;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetOriginFrameCallback()Lcom/ss/android/vesdk/VEGetFrameSettings$IGetOriginFrameCallback;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, -0x1

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VEGetFrameSettings$IGetOriginFrameCallback;->onResult(Lcom/ss/android/ttve/model/VEFrame;I)V

    return-void

    :cond_39
    const-wide/16 v0, 0x3e8

    .line 2592
    div-long v6, p4, v0

    sget-object v8, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_RGBA8:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v2 .. v8}, Lcom/ss/android/ttve/model/VEFrame;->createIntArrayFrame([IIIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object p1

    .line 2593
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder$10;->val$settings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetOriginFrameCallback()Lcom/ss/android/vesdk/VEGetFrameSettings$IGetOriginFrameCallback;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3}, Lcom/ss/android/vesdk/VEGetFrameSettings$IGetOriginFrameCallback;->onResult(Lcom/ss/android/ttve/model/VEFrame;I)V

    .line 2594
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder$10;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$10;->val$renderFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {p2, p1, p0}, Lcom/ss/android/vesdk/TERecorder;->renderFrame(Lcom/ss/android/ttve/model/VEFrame;Lcom/ss/android/vesdk/VEGetFrameSettings;)V

    :cond_58
    return-void
.end method
