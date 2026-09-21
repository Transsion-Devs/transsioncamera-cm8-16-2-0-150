.class final Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gallery20/sdk/ai_art/network/OSSExtKt;->uploadToOssCloudStorage(Ljava/lang/String;[BLcom/gallery20/sdk/ai_art/network/ProgressCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/gallery20/sdk/ai_art/network/ProgressCallback;


# direct methods
.method constructor <init>(Lcom/gallery20/sdk/ai_art/network/ProgressCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$3$1;->$callback:Lcom/gallery20/sdk/ai_art/network/ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgress(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;JJ)V
    .registers 6

    .line 132
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$3$1;->$callback:Lcom/gallery20/sdk/ai_art/network/ProgressCallback;

    invoke-interface {p0, p2, p3, p4, p5}, Lcom/gallery20/sdk/ai_art/network/ProgressCallback;->onProgress(JJ)V

    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;JJ)V
    .registers 6

    .line 132
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    invoke-virtual/range {p0 .. p5}, Lcom/gallery20/sdk/ai_art/network/OSSExtKt$uploadToOssCloudStorage$3$1;->onProgress(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;JJ)V

    return-void
.end method
