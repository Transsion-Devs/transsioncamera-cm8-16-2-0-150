.class Lcom/ss/android/vesdk/TERecorder$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/NativeCallbacks$ICameraFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder;->setOnFrameAvailableListenerExt(Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;

.field final synthetic val$listener:Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;)V
    .registers 3

    .line 4723
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$20;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder$20;->val$listener:Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/nio/ByteBuffer;IIJ)V
    .registers 15

    const-wide/16 v0, 0x3e8

    mul-long v6, p4, v0

    .line 4726
    sget-object v8, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_YUV420P:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v2 .. v8}, Lcom/ss/android/ttve/model/VEFrame;->createByteBufferFrame(Ljava/nio/ByteBuffer;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object p1

    .line 4728
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$20;->val$listener:Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;->OnFrameAvailable(Lcom/ss/android/ttve/model/VEFrame;)V

    return-void
.end method
