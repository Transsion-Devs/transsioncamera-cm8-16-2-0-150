.class public final Lcom/transsion/camera/featurelibs/download/Request$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/download/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mRequest:Lcom/transsion/camera/featurelibs/download/Request;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 188
    :try_start_4
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_f

    :catch_a
    move-exception p1

    .line 190
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v0

    .line 192
    :goto_f
    new-instance p1, Lcom/transsion/camera/featurelibs/download/Request;

    invoke-direct {p1, v1, p2, v0}, Lcom/transsion/camera/featurelibs/download/Request;-><init>(Ljava/net/URL;ILcom/transsion/camera/featurelibs/download/Request-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/download/Request$Builder;->mRequest:Lcom/transsion/camera/featurelibs/download/Request;

    return-void
.end method


# virtual methods
.method public build()Lcom/transsion/camera/featurelibs/download/Request;
    .registers 3

    .line 236
    new-instance v0, Lcom/transsion/camera/featurelibs/download/Request;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/Request$Builder;->mRequest:Lcom/transsion/camera/featurelibs/download/Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/featurelibs/download/Request;-><init>(Lcom/transsion/camera/featurelibs/download/Request;Lcom/transsion/camera/featurelibs/download/Request-IA;)V

    return-object v0
.end method

.method public setRequestHeaders(Ljava/util/Map;)Lcom/transsion/camera/featurelibs/download/Request$Builder;
    .registers 3

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/Request$Builder;->mRequest:Lcom/transsion/camera/featurelibs/download/Request;

    invoke-static {v0, p1}, Lcom/transsion/camera/featurelibs/download/Request;->-$$Nest$msetRequestHeaders(Lcom/transsion/camera/featurelibs/download/Request;Ljava/util/Map;)V

    return-object p0
.end method

.method public setRequestJsonBody(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/download/Request$Builder;
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/Request$Builder;->mRequest:Lcom/transsion/camera/featurelibs/download/Request;

    invoke-static {v0, p1}, Lcom/transsion/camera/featurelibs/download/Request;->-$$Nest$msetRequestJsonBody(Lcom/transsion/camera/featurelibs/download/Request;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRequestResponse(Lcom/transsion/camera/featurelibs/download/IRequestResponse;)Lcom/transsion/camera/featurelibs/download/Request$Builder;
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/Request$Builder;->mRequest:Lcom/transsion/camera/featurelibs/download/Request;

    invoke-static {v0, p1}, Lcom/transsion/camera/featurelibs/download/Request;->-$$Nest$msetRequestResponse(Lcom/transsion/camera/featurelibs/download/Request;Lcom/transsion/camera/featurelibs/download/IRequestResponse;)V

    return-object p0
.end method
