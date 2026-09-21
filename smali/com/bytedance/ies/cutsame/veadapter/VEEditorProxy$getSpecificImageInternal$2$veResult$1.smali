.class final Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImageInternal$2$veResult$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEListener$VEGetImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy;->getSpecificImageInternal(IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $bitmap:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef;"
        }
    .end annotation
.end field

.field final synthetic $con:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $weakVE:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/android/vesdk/VEEditor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/ref/WeakReference;Lkotlinx/coroutines/CancellableContinuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/android/vesdk/VEEditor;",
            ">;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImageInternal$2$veResult$1;->$bitmap:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImageInternal$2$veResult$1;->$weakVE:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImageInternal$2$veResult$1;->$con:Lkotlinx/coroutines/CancellableContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetImageData([BIIIF)I
    .registers 7

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    const/4 p5, 0x1

    goto :goto_6

    :cond_5
    move p5, p2

    .line 85
    :goto_6
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    const-string v0, "getSpecificImage callback, hasBytes: "

    invoke-static {v0, p5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    const-string v0, "VEEditorProxy"

    invoke-static {v0, p5}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2f

    .line 87
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImageInternal$2$veResult$1;->$bitmap:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object p5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, p5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-nez p3, :cond_23

    const/4 p3, 0x0

    goto :goto_2c

    .line 88
    :cond_23
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 89
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 87
    :goto_2c
    iput-object p3, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_4f

    .line 91
    :cond_2f
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImageInternal$2$veResult$1;->$weakVE:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/vesdk/VEEditor;

    if-nez p1, :cond_3a

    goto :goto_3d

    :cond_3a
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEEditor;->cancelGetVideoFrames()I

    .line 92
    :goto_3d
    const-string p1, "getSpecificImage cancelGetVideoFrames"

    invoke-static {v0, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImageInternal$2$veResult$1;->$con:Lkotlinx/coroutines/CancellableContinuation;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VEEditorProxy$getSpecificImageInternal$2$veResult$1;->$bitmap:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :goto_4f
    return p2
.end method
