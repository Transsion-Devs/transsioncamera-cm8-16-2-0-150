.class Lcom/ss/android/vesdk/VEBingoInvoker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VEBingoInvoker;->beginGenVideoFrames(IIZLcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VEBingoInvoker;

.field final synthetic val$finalScaleHeight:I

.field final synthetic val$finalScaleWidth:I

.field final synthetic val$index:I

.field final synthetic val$ptsMsSoftList:[I

.field final synthetic val$res:[I

.field final synthetic val$softTime:[J

.field final synthetic val$startTime:J

.field final synthetic val$steps:I

.field final synthetic val$veBeginVideoFrameListener:Lcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;

.field final synthetic val$videoPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEBingoInvoker;[JILjava/lang/String;Lcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;IJ[I[III)V
    .registers 13

    .line 442
    iput-object p1, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1;->this$0:Lcom/ss/android/vesdk/VEBingoInvoker;

    iput-object p2, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1;->val$softTime:[J

    iput p3, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1;->val$index:I

    iput-object p4, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1;->val$videoPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1;->val$veBeginVideoFrameListener:Lcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;

    iput p6, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1;->val$steps:I

    iput-wide p7, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1;->val$startTime:J

    iput-object p9, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1;->val$res:[I

    iput-object p10, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1;->val$ptsMsSoftList:[I

    iput p11, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1;->val$finalScaleWidth:I

    iput p12, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1;->val$finalScaleHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    const/4 v0, 0x0

    .line 445
    filled-new-array {v0}, [Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    .line 446
    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 447
    new-instance v12, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;

    invoke-direct {v12}, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;-><init>()V

    .line 448
    new-instance v2, Lcom/ss/android/vesdk/VEBingoInvoker$1$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/ss/android/vesdk/VEBingoInvoker$1$1;-><init>(Lcom/ss/android/vesdk/VEBingoInvoker$1;[Ljava/nio/ByteBuffer;[F)V

    invoke-virtual {v12, v2}, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;->setListener(Ljava/lang/Object;)V

    .line 468
    iget-object v4, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1;->val$videoPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1;->val$ptsMsSoftList:[I

    iget v6, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1;->val$finalScaleWidth:I

    iget v7, p0, Lcom/ss/android/vesdk/VEBingoInvoker$1;->val$finalScaleHeight:I

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v12}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getVideoFramesMore(Ljava/lang/String;[IIIZZIZLjava/lang/Object;)I

    return-void
.end method
