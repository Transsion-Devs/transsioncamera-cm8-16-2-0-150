.class public interface abstract Lcom/gallery20/sdk/ai_art/network/AIArtApiService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract generate(Lcom/gallery20/sdk/ai_art/network/RequestParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/gallery20/sdk/ai_art/network/RequestParams;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gallery20/sdk/ai_art/network/RequestParams;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/gallery20/sdk/ai_art/network/bean/GenerateResultBean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "image_handle/run"
    .end annotation
.end method

.method public abstract getSignedUrl(Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gallery20/sdk/ai_art/network/SignedUrlParams;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/gallery20/sdk/ai_art/network/bean/SignedUrlBean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "oss/get_signed_url"
    .end annotation
.end method

.method public abstract getToken(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/gallery20/sdk/ai_art/network/bean/TokenBean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "oss/get_oss_access_token"
    .end annotation
.end method

.method public abstract queryResult(Lcom/gallery20/sdk/ai_art/network/QueryParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/gallery20/sdk/ai_art/network/QueryParams;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gallery20/sdk/ai_art/network/QueryParams;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "image_handle/result"
    .end annotation
.end method
