.class public final Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private debugTime:Ljava/util/Calendar;

.field private faceBitmap:Landroid/graphics/Bitmap;

.field private faceRect:Landroid/graphics/RectF;

.field private focusLength35mm:Ljava/lang/String;

.field private volatile futureJava:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private iso:Ljava/lang/String;

.field private jpeg:[B

.field private listener:Lcom/gallery20/sdk/ai_art/network/UpdateListener;

.field private taskId:Ljava/lang/String;

.field private final template:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "template"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->template:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getBitmap$p(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;)Landroid/graphics/Bitmap;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static final synthetic access$getFaceBitmap$p(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;)Landroid/graphics/Bitmap;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->faceBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static final synthetic access$getFaceRect$p(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;)Landroid/graphics/RectF;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->faceRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static final synthetic access$getFocusLength35mm$p(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;)Ljava/lang/String;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->focusLength35mm:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getIso$p(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;)Ljava/lang/String;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->iso:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getJpeg$p(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;)[B
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->jpeg:[B

    return-object p0
.end method

.method public static final synthetic access$getListener$p(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;)Lcom/gallery20/sdk/ai_art/network/UpdateListener;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->listener:Lcom/gallery20/sdk/ai_art/network/UpdateListener;

    return-object p0
.end method

.method public static final synthetic access$getTemplate$p(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;)Ljava/lang/String;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->template:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->listener:Lcom/gallery20/sdk/ai_art/network/UpdateListener;

    .line 321
    iput-object v0, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->taskId:Ljava/lang/String;

    .line 322
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->futureJava:Ljava/util/concurrent/CompletableFuture;

    if-eqz p0, :cond_d

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    :cond_d
    return-void
.end method

.method public final generateAIArtImage(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 177
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImage$2;-><init>(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final generateAIArtImageJava()[B
    .registers 7

    .line 171
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v3, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImageJava$future$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2$generateAIArtImageJava$future$1;-><init>(Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/future/FutureKt;->future$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 172
    iput-object v0, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->futureJava:Ljava/util/concurrent/CompletableFuture;

    .line 173
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "get(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [B

    return-object p0
.end method

.method public final getDebugTime()Ljava/util/Calendar;
    .registers 1

    .line 146
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->debugTime:Ljava/util/Calendar;

    return-object p0
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setDebugTime(Ljava/util/Calendar;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->debugTime:Ljava/util/Calendar;

    return-void
.end method

.method public final setFaceInfo(Landroid/graphics/RectF;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 157
    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->faceRect:Landroid/graphics/RectF;

    .line 158
    iput-object p2, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->faceBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setImageInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 162
    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->iso:Ljava/lang/String;

    .line 163
    iput-object p2, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->focusLength35mm:Ljava/lang/String;

    return-void
.end method

.method public final setJpeg([B)V
    .registers 3

    const-string v0, "jpeg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->jpeg:[B

    return-void
.end method

.method public final setListener(Lcom/gallery20/sdk/ai_art/network/UpdateListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/network/AIArtRequest2;->listener:Lcom/gallery20/sdk/ai_art/network/UpdateListener;

    return-void
.end method
