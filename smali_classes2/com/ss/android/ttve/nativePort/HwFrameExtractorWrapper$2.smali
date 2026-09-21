.class Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper;->startExtractFrameForRangeTime(Ljava/lang/String;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper;

.field final synthetic val$nativeAddr:J


# direct methods
.method constructor <init>(Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper;J)V
    .registers 4

    .line 42
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper;

    iput-wide p2, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper$2;->val$nativeAddr:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processFrame(Ljava/nio/ByteBuffer;III)Z
    .registers 12

    .line 45
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper$2;->this$0:Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper;

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper$2;->val$nativeAddr:J

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    # invokes: Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper;->nativeOnFrameAvailable(JLjava/nio/ByteBuffer;III)Z
    invoke-static/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper;->access$000(Lcom/ss/android/ttve/nativePort/HwFrameExtractorWrapper;JLjava/nio/ByteBuffer;III)Z

    move-result p0

    return p0
.end method
