.class final Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToCloudStorage$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->uploadToCloudStorage(Ljava/lang/String;[BLcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.gallery20.sdk.ai_art.network.OSSExtKt"
    f = "OSSExt.kt"
    l = {
        0x68,
        0x6a
    }
    m = "uploadToCloudStorage"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToCloudStorage$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToCloudStorage$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToCloudStorage$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToCloudStorage$1;->label:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p0}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->uploadToCloudStorage(Ljava/lang/String;[BLcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
