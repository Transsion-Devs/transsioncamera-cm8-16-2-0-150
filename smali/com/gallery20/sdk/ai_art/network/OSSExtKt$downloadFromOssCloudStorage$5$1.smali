.class final Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->downloadFromOssCloudStorage(Ljava/lang/String;Ljava/lang/String;Lcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $task:Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$5$1;->$task:Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 211
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$5$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .registers 2

    .line 212
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$downloadFromOssCloudStorage$5$1;->$task:Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->cancel()V

    return-void
.end method
