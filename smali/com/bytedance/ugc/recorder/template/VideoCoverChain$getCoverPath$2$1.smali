.class final Lcom/bytedance/ugc/recorder/template/VideoCoverChain$getCoverPath$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ugc/recorder/template/VideoCoverChain;->getCoverPath(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $filePath:Ljava/lang/String;

.field final synthetic $it:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $targetFile:Ljava/lang/String;

.field final synthetic this$0:Lcom/bytedance/ugc/recorder/template/VideoCoverChain;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/ugc/recorder/template/VideoCoverChain;Ljava/lang/String;Lkotlinx/coroutines/CancellableContinuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/ugc/recorder/template/VideoCoverChain;",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$getCoverPath$2$1;->$targetFile:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$getCoverPath$2$1;->this$0:Lcom/bytedance/ugc/recorder/template/VideoCoverChain;

    iput-object p3, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$getCoverPath$2$1;->$filePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$getCoverPath$2$1;->$it:Lkotlinx/coroutines/CancellableContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final processFrame(Ljava/nio/ByteBuffer;III)Z
    .registers 5

    .line 61
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 p3, 0x0

    .line 62
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 63
    const-string p1, "bitmap"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$getCoverPath$2$1;->$targetFile:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/bytedance/ugc/recorder/template/CoverUitlsKt;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p1

    .line 64
    iget-object p2, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$getCoverPath$2$1;->this$0:Lcom/bytedance/ugc/recorder/template/VideoCoverChain;

    # getter for: Lcom/bytedance/ugc/recorder/template/VideoCoverChain;->TAG:Ljava/lang/String;
    invoke-static {p2}, Lcom/bytedance/ugc/recorder/template/VideoCoverChain;->access$getTAG$p(Lcom/bytedance/ugc/recorder/template/VideoCoverChain;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getCoverPath filePath: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$getCoverPath$2$1;->$filePath:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", targetFile: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$getCoverPath$2$1;->$targetFile:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", success: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object p2, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$getCoverPath$2$1;->$it:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {p2}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result p2

    if-eqz p2, :cond_5c

    .line 66
    iget-object p0, p0, Lcom/bytedance/ugc/recorder/template/VideoCoverChain$getCoverPath$2$1;->$it:Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_5c
    const/4 p0, 0x1

    return p0
.end method
