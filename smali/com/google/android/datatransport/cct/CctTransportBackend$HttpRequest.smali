.class final Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/CctTransportBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HttpRequest"
.end annotation


# instance fields
.field final apiKey:Ljava/lang/String;

.field final pseudonymousId:Ljava/lang/String;

.field final requestBody:Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;

.field final url:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljava/net/URL;Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    iput-object p1, p0, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;->url:Ljava/net/URL;

    .line 497
    iput-object p2, p0, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;->requestBody:Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;

    .line 498
    iput-object p3, p0, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;->apiKey:Ljava/lang/String;

    .line 499
    iput-object p4, p0, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;->pseudonymousId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method withUrl(Ljava/net/URL;)Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;
    .registers 5

    .line 503
    new-instance v0, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;

    iget-object v1, p0, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;->requestBody:Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;

    iget-object v2, p0, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;->apiKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;->pseudonymousId:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;-><init>(Ljava/net/URL;Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
