.class Lcom/ss/android/vesdk/VEBingoInvoker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VEBingoInvoker;->beginGenFrameHW(Ljava/lang/String;Ljava/util/List;IIIIII[IJLcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VEBingoInvoker;

.field final synthetic val$count:I

.field final synthetic val$height:I

.field final synthetic val$index:I

.field final synthetic val$number:I

.field final synthetic val$ptsMsHW:[I

.field final synthetic val$res:[I

.field final synthetic val$startTime:J

.field final synthetic val$steps:I

.field final synthetic val$veBeginVideoFrameListener:Lcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;

.field final synthetic val$videoPath:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEBingoInvoker;Ljava/lang/String;[IIIIIILcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;IJ[I)V
    .registers 14

    .line 569
    iput-object p1, p0, Lcom/ss/android/vesdk/VEBingoInvoker$2;->this$0:Lcom/ss/android/vesdk/VEBingoInvoker;

    iput-object p2, p0, Lcom/ss/android/vesdk/VEBingoInvoker$2;->val$videoPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/vesdk/VEBingoInvoker$2;->val$ptsMsHW:[I

    iput p4, p0, Lcom/ss/android/vesdk/VEBingoInvoker$2;->val$width:I

    iput p5, p0, Lcom/ss/android/vesdk/VEBingoInvoker$2;->val$height:I

    iput p6, p0, Lcom/ss/android/vesdk/VEBingoInvoker$2;->val$count:I

    iput p7, p0, Lcom/ss/android/vesdk/VEBingoInvoker$2;->val$index:I

    iput p8, p0, Lcom/ss/android/vesdk/VEBingoInvoker$2;->val$number:I

    iput-object p9, p0, Lcom/ss/android/vesdk/VEBingoInvoker$2;->val$veBeginVideoFrameListener:Lcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;

    iput p10, p0, Lcom/ss/android/vesdk/VEBingoInvoker$2;->val$steps:I

    iput-wide p11, p0, Lcom/ss/android/vesdk/VEBingoInvoker$2;->val$startTime:J

    iput-object p13, p0, Lcom/ss/android/vesdk/VEBingoInvoker$2;->val$res:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    const/4 v0, 0x0

    .line 572
    filled-new-array {v0}, [Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    .line 573
    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 574
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-array v1, v1, [J

    aput-wide v4, v1, v3

    .line 576
    new-instance v6, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;

    iget-object v7, p0, Lcom/ss/android/vesdk/VEBingoInvoker$2;->val$videoPath:Ljava/lang/String;

    iget-object v8, p0, Lcom/ss/android/vesdk/VEBingoInvoker$2;->val$ptsMsHW:[I

    iget v9, p0, Lcom/ss/android/vesdk/VEBingoInvoker$2;->val$width:I

    iget v10, p0, Lcom/ss/android/vesdk/VEBingoInvoker$2;->val$height:I

    iget v12, p0, Lcom/ss/android/vesdk/VEBingoInvoker$2;->val$count:I

    iget v13, p0, Lcom/ss/android/vesdk/VEBingoInvoker$2;->val$index:I

    new-instance v14, Lcom/ss/android/vesdk/VEBingoInvoker$2$1;

    invoke-direct {v14, p0, v1, v0, v2}, Lcom/ss/android/vesdk/VEBingoInvoker$2$1;-><init>(Lcom/ss/android/vesdk/VEBingoInvoker$2;[J[Ljava/nio/ByteBuffer;[F)V

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v14}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;-><init>(Ljava/lang/String;[IIIZIILcom/ss/android/vesdk/VEFrameAvailableListener;)V

    .line 604
    invoke-virtual {v6}, Lcom/ss/android/ttve/nativePort/HwFrameExtractor;->start()V

    return-void
.end method
